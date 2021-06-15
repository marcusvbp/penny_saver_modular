import 'package:flutter_test/flutter_test.dart';
import 'package:penny_saver/app/models/conta_model.dart';
import 'package:penny_saver/app/models/source_model.dart';
import 'package:penny_saver/app/models/transacao_model.dart';
import 'package:penny_saver/app/transacoes/widgets/add_transaction/add_controller_store.dart';

void main() {
  late AddControllerStore store;

  setUpAll(() {
    store = AddControllerStore();
  });
  group('Testa os valores iniciais das variável da store', () {
    test('testa se observation é uma string vazia', () {
      expect(store.observation.runtimeType, String);
      expect(store.observation.isEmpty, true);
    });

    test('testa se value é uma string "0"', () {
      expect(store.value.runtimeType, String);
      expect(store.value, '0');
    });

    test('testa se date é uma data', () {
      expect(store.date.runtimeType, DateTime);
      expect(store.date.isBefore(DateTime.now()), true);
    });

    test('testa se sourceOrigin é do tipo Null', () {
      expect(store.sourceOrigin.runtimeType, Null);
    });

    test('testa se destinationAccount é do tipo Null', () {
      expect(store.destinationAccount.runtimeType, Null);
    });

    test('testa se isEditing é booleano e falso', () {
      expect(store.isEditing.runtimeType, bool);
      expect(store.isEditing, false);
    });

    test('testa se valueIsNegative é booleano e falso', () {
      expect(store.valueIsNegative.runtimeType, bool);
      expect(store.valueIsNegative, false);
    });
  });

  group('Verifica as actions de atribuição', () {
    test('testa se setValue atribui o valor corretamente', () {
      store.setValue('50002.23');
      expect(store.value, '50002.23');
    });

    test('testa se Value pode ser convertido para double', () {
      store.setValue('50002.23');
      expect(double.parse(store.value), 50002.23);
    });
  });

  group('Verifica os métodos de geração de dados', () {
    final Conta conta = Conta(
      name: 'Banco do Brasil',
      color: 0xffffffff,
      initialValue: 1253.23,
    );
    final Source fonte = Source(name: 'Salário');

    test(
      'Testa se a store está gerando uma Transação a partir dos dados',
      () {
        store.setConta(conta);
        store.setSource(fonte);
        store.setDate(DateTime.now());
        store.setValue('425.25');
        store.setObservation('Observação feita');

        final t = store.toTransacao();

        print(t.toJson());

        expect(t.runtimeType, Transacao);
        expect(t.observation.isNotEmpty, true);
        expect(t.date.runtimeType, DateTime);
        expect(t.value.isFinite, true);
        expect(t.account.runtimeType, Conta);
        expect(t.source.runtimeType, Source);
      },
    );
    test(
        'Testa se a store está gerando uma transação com um mínimo de dados possíveis',
        () {
      store.setConta(conta);
      store.setDate(DateTime.now());
      store.setValue('-425.25');
      store.setObservation('');
      store.setSource(null);

      final t = store.toTransacao();

      print(t.toJson());

      expect(t.runtimeType, Transacao);
      expect(t.observation.isEmpty, true);
      expect(t.date.runtimeType, DateTime);
      expect(t.value.isNegative, true);
      expect(t.account.runtimeType, Conta);
      expect(t.source.runtimeType, Null);
    });
  });

  group('Verifica o método de geração de Map da Store', () {
    final Conta conta = Conta(
      name: 'Banco do Brasil',
      initialValue: 1253.23,
    );
    final Source fonte = Source(name: 'Salário', observations: 'obs');

    test('Verifica se a Store está gerando um Map', () {
      store.setConta(conta);
      store.setSource(fonte);
      store.setDate(DateTime.now());
      store.setValue('425.25');
      store.setObservation('Observação feita');

      final map = store.toMap();

      print(map);

      expect(map, isMap);

      expect(map['destinationAccount'], isMap);
      expect(map['sourceOrigin'], isMap);
    });
  });
}
