import 'package:mobx/mobx.dart';
import 'package:penny_saver/app/models/transacao_model.dart';

part 'transacoes_store.g.dart';

class TransacoesStore = _TransacoesStoreBase with _$TransacoesStore;

abstract class _TransacoesStoreBase with Store {
  @observable
  ObservableList<Transacao> transacoes = ObservableList.of([]);

  @computed
  List<Transacao> get aditions =>
      transacoes.where((t) => t.value >= 0).toList();

  @computed
  List<Transacao> get subtractions =>
      transacoes.where((t) => t.value < 0).toList();

  @action
  add(Transacao transacao) => transacoes.add(transacao);

  @action
  remove(Transacao transacao) => transacoes.remove(transacao);
}
