import 'package:mobx/mobx.dart';
import 'package:penny_saver/app/modules/contas/contas_storage.dart';
import '../../models/conta_model.dart';

part 'contas_store.g.dart';

class ContasStore = _ContasStoreBase with _$ContasStore;

abstract class _ContasStoreBase with Store {
  final ContasStorage storage;
  _ContasStoreBase(this.storage);

  @observable
  ObservableList<Conta> contas = ObservableList.of([]);

  @action
  Future<void> rehydrate() async {
    contas = ObservableList.of(await storage.getContas());
  }

  @action
  addConta(Conta conta) async {
    contas.add(conta);
    await storage.saveContas(contas);
  }

  @action
  removeConta(Conta conta) async {
    contas.remove(conta);
    await storage.saveContas(contas);
  }
}
