import 'package:penny_saver/app/contas/pages/list_page.dart';
import 'package:penny_saver/app/contas/widgets/add_conta/add_conta_controller_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ContasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AddContaControllerStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/contas', child: (_, __) => ListPage(title: 'Contas')),
  ];
}
