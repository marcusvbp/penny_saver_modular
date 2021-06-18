import 'package:mobx/mobx.dart';
import 'package:penny_saver/app/models/conta_model.dart';
import 'package:penny_saver/app/models/source_model.dart';
import 'package:penny_saver/app/models/transacao_model.dart';
import 'package:validators/validators.dart';

part 'add_controller_store.g.dart';

class AddControllerStore = _AddControllerStoreBase with _$AddControllerStore;

abstract class _AddControllerStoreBase with Store {
  @observable
  String observation = '';

  @observable
  String value = '0';

  @observable
  DateTime date = DateTime.now();

  @observable
  Conta? destinationAccount;

  @observable
  Source? sourceOrigin;

  @observable
  bool isEditing = false;

  @observable
  bool valueIsNegative = false;

  @action
  void setObservation(String valueString) => observation = valueString;

  @action
  void setValue(String valueString) => value = valueString;

  @action
  void setDate(DateTime dateValue) => date = dateValue;

  @action
  void setConta(Conta? contaValue) => destinationAccount = contaValue;

  @action
  void setSource(Source? sourceValue) => sourceOrigin = sourceValue;

  @action
  void setIsEditing(bool value) => isEditing = value;

  @action
  void toggleValueIsNegative() => valueIsNegative = !valueIsNegative;

  @action
  void populateFromTransation(Transacao transation) {
    observation = transation.observation ?? '';
    value = transation.value.toString();
    date = transation.date;
    destinationAccount = transation.account;
    sourceOrigin = transation.source;
  }

  String? validateValue(String v) {
    if (!isFloat(v)) return 'O valor informado não é válido';
    return null;
  }

  Transacao toTransacao() {
    return Transacao(
      value: double.parse(value),
      date: date,
      account: destinationAccount,
      source: sourceOrigin,
      observation: observation,
    );
  }

  Map<String, dynamic> toMap() => {
        'observation': observation,
        'value': double.parse(value),
        'date': date.millisecondsSinceEpoch,
        'destinationAccount': destinationAccount?.toMap(),
        'sourceOrigin': sourceOrigin?.toMap(),
      };
}
