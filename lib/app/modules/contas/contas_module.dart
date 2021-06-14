import 'package:hive/hive.dart';
import 'package:penny_saver/app/modules/contas/contas_storage.dart';

import 'pages/list_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ContasModule extends Module {
  @override
  final List<Bind> binds = [
    AsyncBind((i) => Hive.openBox('ContasModule')),
    Bind.instance((i) => ContasStorage(i)),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => ListPage(title: 'Contas')),
  ];
}
