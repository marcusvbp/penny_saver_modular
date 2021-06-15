import 'package:mobx/mobx.dart';
import 'package:penny_saver/app/contas/contas_storage.dart';
import '../models/conta_model.dart';

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
  Future<void> addConta(Conta conta) async {
    contas.add(conta);
    await storage.saveContas(contas);
  }

  @action
  Future<void> removeConta(Conta conta) async {
    contas.remove(conta);
    await storage.saveContas(contas);
  }
}
