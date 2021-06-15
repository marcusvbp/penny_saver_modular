import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:penny_saver/app/sources/sources_storage.dart';
import 'package:penny_saver/app/sources/sources_store.dart';

void main() {
  late SourcesStore store;

  setUpAll(() {
    SourcesStorage storage = Modular.get();
    store = SourcesStore(storage);
  });
}
