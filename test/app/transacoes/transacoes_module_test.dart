import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:penny_saver/app/transacoes/transacoes_module.dart';

void main() {
  setUpAll(() {
    initModule(TransacoesModule());
  });
}
