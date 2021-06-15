import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:penny_saver/app/models/source_model.dart';
import 'package:penny_saver/app/sources/sources_storage.dart';

void main() async {
  late SourcesStorage sourcesStorage;

  setUpAll(() async {
    var path = Directory.current.path;
    Hive
      ..init(path)
      ..registerAdapter(SourceAdapter());
    final box = await Hive.openBox('sourcesBoxTest');
    sourcesStorage = SourcesStorage(box);
  });

  test('Verifica se o saveSources está salvando dados', () async {
    List<Source> list = [];
    await sourcesStorage.saveSources([]);
    final t = Source(name: 'Salário', observations: 'teste');
    list.add(t);
    await sourcesStorage.saveSources(list);
  });
  test(
    'Verifica se o retorno de getSources é uma lista de contas',
    () async {
      final list = await sourcesStorage.getSources();
      expect(list.runtimeType.toString(), 'List<Source>');
      if (list.isNotEmpty) expect(list[0].runtimeType, Source);
    },
  );
}
