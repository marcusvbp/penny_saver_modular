import 'package:mobx/mobx.dart';
import 'package:penny_saver/app/models/transacao_model.dart';
import 'package:penny_saver/app/transacoes/transacoes_storage.dart';

part 'transacoes_store.g.dart';

class TransacoesStore = _TransacoesStoreBase with _$TransacoesStore;

abstract class _TransacoesStoreBase with Store {
  final TransacoesStorage storage;

  _TransacoesStoreBase(this.storage);

  @observable
  ObservableList<Transacao> transacoes = ObservableList.of([]);

  @computed
  List<Transacao> get aditions =>
      transacoes.where((t) => t.value >= 0).toList();

  @computed
  List<Transacao> get subtractions =>
      transacoes.where((t) => t.value < 0).toList();

  @action
  Future<void> rehydrate() async {
    transacoes = ObservableList.of(await storage.getTransacoes());
  }

  @action
  add(Transacao transacao) {
    transacoes.add(transacao);
    storage.saveTransacoes(transacoes);
  }

  @action
  remove(Transacao transacao) {
    transacoes.remove(transacao);
    storage.saveTransacoes(transacoes);
  }
}
