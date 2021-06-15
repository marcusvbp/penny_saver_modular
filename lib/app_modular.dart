import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:penny_saver/app/modules/contas/contas_module.dart';
import 'package:penny_saver/app/modules/contas/contas_store.dart';
import 'package:penny_saver/app/modules/sources/sources_store.dart';
import 'package:penny_saver/app/modules/transacoes/transacoes_module.dart';
import 'package:penny_saver/app/modules/transacoes/transacoes_store.dart';
import 'package:penny_saver/app/pages/403_page.dart';

import 'app/modules/contas/contas_storage.dart';

class AppModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
    AsyncBind((i) => Hive.openBox('ContasModule'), export: true),
    Bind((i) => ContasStorage(i.get())),
    Bind.lazySingleton((i) => TransacoesStore()),
    Bind.lazySingleton((i) => ContasStore(i.get<ContasStorage>())),
    Bind.lazySingleton((i) => SourcesStore()),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: TransacoesModule()),
    ModuleRoute('/contas', module: ContasModule()),
    WildcardRoute(
      child: (_, __) => NotFoundPage(
        title: 'Página não Encontrada',
      ),
    ),
  ];
}
