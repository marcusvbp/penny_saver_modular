import 'package:flutter_test/flutter_test.dart';
import 'package:penny_saver/app/modules/financemanger/modules/contas/contas_store.dart';

void main() {
  late ContasStore store;

  setUpAll(() {
    store = ContasStore();
  });
}
