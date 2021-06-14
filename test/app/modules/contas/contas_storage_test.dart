import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:penny_saver/app/models/conta_model.dart';
import 'package:penny_saver/app/modules/contas/contas_storage.dart';

void main() async {
  late ContasStorage contasStorage;

  setUpAll(() async {
    var path = Directory.current.path;
    Hive
      ..init(path)
      ..registerAdapter(ContaAdapter());
    final box = await Hive.openBox('contasBoxTest');
    contasStorage = ContasStorage(box);
  });

  test('Verifica se o saveContas está salvando dados', () async {
    List<Conta> list = [];
    await contasStorage.saveContas([]);
    final t = Conta(name: 'test', initialValue: 30.0);
    list.add(t);
    await contasStorage.saveContas(list);
  });
  test(
    'Verifica se o retorno de getContas é uma lista de contas',
    () async {
      final list = await contasStorage.getContas();
      expect(list.runtimeType.toString(), 'List<Conta>');
      if (list.isNotEmpty) expect(list[0].runtimeType, Conta);
    },
  );
}
