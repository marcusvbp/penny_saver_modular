import 'package:flutter_test/flutter_test.dart';
import 'package:penny_saver/app/modules/sources/sources_store.dart';

void main() {
  late SourcesStore store;

  setUpAll(() {
    store = SourcesStore();
  });
}
