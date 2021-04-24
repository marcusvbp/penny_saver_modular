import 'package:penny_saver/app/contas/pages/list_page.dart';
import 'package:penny_saver/app/contas/widgets/add_conta/add_controller_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ContasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AddControllerStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => ListPage(title: 'Contas')),
  ];
}
