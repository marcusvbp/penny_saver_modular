import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:penny_saver/app/contas/contas_store.dart';
import 'package:penny_saver/app/contas/pages/list_page.dart';
import 'package:penny_saver/app/sources/pages/list_souces_page.dart';
import 'package:penny_saver/app/sources/sources_store.dart';
import 'package:penny_saver/app/transacoes/pages/list_page.dart';
import 'package:penny_saver/app/transacoes/transacoes_guard.dart';
import 'package:penny_saver/app/transacoes/transacoes_store.dart';
import 'package:penny_saver/app/pages/403_page.dart';

import 'app/contas/contas_storage.dart';

class AppModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
    AsyncBind((i) => Hive.openBox('ContasModule'), export: true),
    Bind.lazySingleton((i) => ContasStorage(i.get())),
    Bind.lazySingleton((i) => TransacoesStore()),
    Bind.lazySingleton((i) => ContasStore(i.get<ContasStorage>())),
    Bind.lazySingleton((i) => SourcesStore()),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => ListTransacoesPage(title: 'Transações'),
      guards: [TransacoesGuard('/')],
    ),
    ChildRoute('/contas', child: (_, __) => ListContasPage(title: 'Contas')),
    ChildRoute('/fontes', child: (_, __) => ListSourcesPage(title: 'Fontes')),
    WildcardRoute(
      child: (_, __) => NotFoundPage(
        title: 'Página não Encontrada',
      ),
    ),
  ];
}
