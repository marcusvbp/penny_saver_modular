import 'package:flutter_test/flutter_test.dart';
import 'package:penny_saver/app/models/conta_model.dart';

void main() {
  group('Testa os métodos de geração da classe Conta', () {
    final Conta conta = Conta(
      name: 'Banco do brasil',
      color: 0xff0ff0ff,
      initialValue: 203.00,
    );

    test('Verifica se a classe Conta está gerando um Map', () {
      print(conta.toMap());
      expect(conta.toMap(), isMap);
    });

    test('Verifica se a classe está gerando um Json (String)', () {
      print(conta.toJson());
      expect(conta.toJson().runtimeType, String);
    });
  });

  group('Verifica as factores da classe Conta', () {
    test(
      'Testa se é possível gerar uma classe Conta a partir de um Map',
      () {
        final c = Conta.fromMap({
          'name': 'Santander',
          'color': 0xff00ff00,
          'initialValue': 110.00,
        });

        expect(c.runtimeType, Conta);
        expect(c.name.isNotEmpty, true);
        expect(c.color.isFinite, true);
        expect(c.initialValue.isFinite, true);
      },
    );
  });
}
