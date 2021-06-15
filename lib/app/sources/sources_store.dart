import 'package:mobx/mobx.dart';
import 'package:penny_saver/app/models/source_model.dart';

part 'sources_store.g.dart';

class SourcesStore = _SourcesStoreBase with _$SourcesStore;

abstract class _SourcesStoreBase with Store {
  @observable
  ObservableList<Source> sources = ObservableList.of([]);

  @action
  addConta(Source source) => sources.add(source);

  @action
  removeConta(Source source) => sources.remove(source);
}
