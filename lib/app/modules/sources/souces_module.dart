import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:penny_saver/app/modules/sources/pages/list_souces_page.dart';
import 'package:penny_saver/app/modules/sources/sources_storage.dart';

class SoucesModule extends Module {
  @override
  final List<Bind> binds = [
    AsyncBind((i) => Hive.openBox('SourcesModule')),
    Bind.instance((i) => SourcesStorage(i)),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => ListSoucesPage(title: 'Fontes')),
  ];
}
