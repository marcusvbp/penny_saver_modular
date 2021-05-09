import 'package:flutter_test/flutter_test.dart';
import 'package:penny_saver/app/modules/contas/widgets/add_conta/add_conta_controller_store.dart';

void main() {
  late AddContaControllerStore store;

  setUpAll(() {
    store = AddContaControllerStore();
  });
}
