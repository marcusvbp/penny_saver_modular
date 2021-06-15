import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:penny_saver/app/models/transacao_model.dart';
import 'package:penny_saver/app/transacoes/transacoes_storage.dart';

void main() async {
  late TransacoesStorage transacoesStorage;

  setUpAll(() async {
    var path = Directory.current.path;
    Hive
      ..init(path)
      ..registerAdapter(TransacaoAdapter());
    final box = await Hive.openBox('transacoesBoxTest');
    transacoesStorage = TransacoesStorage(box);
  });

  test('Verifica se o saveTransacoes está salvando dados', () async {
    List<Transacao> list = [];
    await transacoesStorage.saveTransacoes([]);
    final t = Transacao(value: 30.5, date: DateTime.now(), account: null);
    list.add(t);
    await transacoesStorage.saveTransacoes(list);
  });
  test(
    'Verifica se o retorno de getTransacoes é uma lista de transações',
    () async {
      final list = await transacoesStorage.getTransacoes();
      expect(list.runtimeType.toString(), 'List<Transacao>');
      if (list.isNotEmpty) expect(list[0].runtimeType, Transacao);
    },
  );
}
