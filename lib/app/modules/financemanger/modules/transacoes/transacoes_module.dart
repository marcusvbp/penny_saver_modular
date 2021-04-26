import 'pages/list_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TransacoesModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => ListPage(title: 'Transações')),
  ];
}
