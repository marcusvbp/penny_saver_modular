import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:penny_saver/app/modules/contas/contas_storage.dart';
import 'package:penny_saver/app/modules/contas/contas_store.dart';

void main() {
  late ContasStore store;

  setUpAll(() async {
    ContasStorage contasStorage = Modular.get();
    store = ContasStore(contasStorage);
  });
}
