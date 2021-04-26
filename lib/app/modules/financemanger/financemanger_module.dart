import 'package:flutter_modular/flutter_modular.dart';
import 'package:penny_saver/app/modules/financemanger/modules/contas/contas_module.dart';
import 'package:penny_saver/app/modules/financemanger/modules/transacoes/transacoes_module.dart';

import 'modules/contas/contas_store.dart';
import 'modules/transacoes/transacoes_store.dart';

class FinancemangerModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ContasStore()),
    Bind.lazySingleton((i) => TransacoesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: TransacoesModule()),
    ModuleRoute('/contas', module: ContasModule()),
  ];
}
