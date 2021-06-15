import 'package:mobx/mobx.dart';
import 'package:penny_saver/app/models/source_model.dart';
import 'package:penny_saver/app/sources/sources_storage.dart';

part 'sources_store.g.dart';

class SourcesStore = _SourcesStoreBase with _$SourcesStore;

abstract class _SourcesStoreBase with Store {
  final SourcesStorage storage;

  _SourcesStoreBase(this.storage);

  @observable
  ObservableList<Source> sources = ObservableList.of([]);

  @action
  Future<void> rehydrate() async {
    sources = ObservableList.of(await storage.getSources());
  }

  @action
  addConta(Source source) async {
    sources.add(source);
    await storage.saveSources(sources);
  }

  @action
  removeConta(Source source) async {
    sources.remove(source);
    await storage.saveSources(sources);
  }
}
