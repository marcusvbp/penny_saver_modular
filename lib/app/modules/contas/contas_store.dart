import 'package:mobx/mobx.dart';
import '../../models/conta_model.dart';

part 'contas_store.g.dart';

class ContasStore = _ContasStoreBase with _$ContasStore;

abstract class _ContasStoreBase with Store {
  @observable
  ObservableList<Conta> contas = ObservableList.of([]);

  @action
  addConta(Conta conta) => contas.add(conta);

  @action
  removeConta(Conta conta) => contas.remove(conta);
}
