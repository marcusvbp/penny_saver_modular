import 'pages/list_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ContasModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/contas', child: (_, __) => ListPage(title: 'Contas')),
  ];
}
