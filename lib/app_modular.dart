import 'package:flutter_modular/flutter_modular.dart';
import 'package:penny_saver/app/contas/contas_module.dart';
import 'package:penny_saver/app/contas/widgets/add_conta/add_conta_controller_store.dart';
import 'package:penny_saver/app/transacoes/transacoes_module.dart';

class AppModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AddContaControllerStore()),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: TransacoesModule()),
    ModuleRoute('/contas', module: ContasModule()),
  ];
}
