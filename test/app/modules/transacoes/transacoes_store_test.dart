import 'package:flutter_test/flutter_test.dart';
import 'package:penny_saver/app/modules/transacoes/transacoes_store.dart';

void main() {
  late TransacoesStore store;

  setUpAll(() {
    store = TransacoesStore();
  });

  // test('increment count', () async {
  //   expect(store.value, equals(0));
  //   store.increment();
  //   expect(store.value, equals(1));
  // });
}
