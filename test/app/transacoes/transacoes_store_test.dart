import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:penny_saver/app/transacoes/transacoes_storage.dart';
import 'package:penny_saver/app/transacoes/transacoes_store.dart';

void main() {
  late TransacoesStore store;

  setUpAll(() {
    TransacoesStorage storage = Modular.get();
    store = TransacoesStore(storage);
  });

  // test('increment count', () async {
  //   expect(store.value, equals(0));
  //   store.increment();
  //   expect(store.value, equals(1));
  // });
}
