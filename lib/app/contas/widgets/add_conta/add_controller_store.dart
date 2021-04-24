import 'package:mobx/mobx.dart';
import 'package:penny_saver/app/contas/models/conta_model.dart';

part 'add_controller_store.g.dart';

class AddControllerStore = _AddControllerStoreBase with _$AddControllerStore;

abstract class _AddControllerStoreBase with Store {
  @observable
  String name = '';

  @observable
  String initialValue = '';

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

  Map<String, dynamic> toMap() => {
        'name': name,
        'initialValue': double.parse(initialValue),
      };

  Conta toConta() =>
      Conta(name: name, initialValue: double.parse(initialValue));
}
