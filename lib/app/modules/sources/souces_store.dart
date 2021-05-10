import 'package:mobx/mobx.dart';
import 'package:penny_saver/app/models/source_model.dart';

part 'souces_store.g.dart';

class SoucesStoreStore = _SoucesStoreStoreBase with _$SoucesStoreStore;

abstract class _SoucesStoreStoreBase with Store {
  @observable
  ObservableList<Source> sources = ObservableList.of([]);

  @action
  addConta(Source source) => sources.add(source);

  @action
  removeConta(Source source) => sources.remove(source);
}
