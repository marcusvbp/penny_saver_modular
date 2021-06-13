import 'package:hive/hive.dart';
import 'package:penny_saver/app/modules/transacoes/transacoes_storage.dart';

import 'pages/list_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TransacoesModule extends Module {
  @override
  final List<Bind> binds = [
    AsyncBind((i) => Hive.openBox('transacoesBox')),
    Bind.instance((i) => TransacoesStorage(i)),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => ListPage(title: 'Transações')),
  ];
}
