import 'package:mobx/mobx.dart';
import '../../models/conta_model.dart';
import 'package:validators/validators.dart';

part 'add_conta_controller_store.g.dart';

class AddContaControllerStore = _AddContaControllerStoreBase
    with _$AddContaControllerStore;

abstract class _AddContaControllerStoreBase with Store {
  @observable
  String name = '';

  @observable
  String initialValue = '0';

  @action
  void populateFromConta(Conta conta) {
    name = conta.name;
    initialValue = conta.initialValue.toString();
  }

  @action
  void setName(String nameValue) => name = nameValue;

  @action
  void setInitialValue(String initialValueValue) =>
      initialValue = initialValueValue;

  String? validateName(String? v) {
    if (v != null && v.isEmpty) return 'O Nome da Conta não pode ser Vazio';
    return null;
  }

  String? validateValue(String? v) {
    // if (v == null) return 'O Valor não pode ser vazio';
    if (v != null && !isFloat(v)) return 'O valor informado não é válido';
    return null;
  }

  Map<String, dynamic> toMap() => {
        'name': name,
        'initialValue': double.parse(initialValue),
      };

  Conta toConta() =>
      Conta(name: name, initialValue: double.parse(initialValue));
}
