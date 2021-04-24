import 'package:penny_saver/app/transacoes/widgets/add_transaction/add_controller_store.dart';
import 'package:penny_saver/app/transacoes/pages/list_page.dart';
import 'package:penny_saver/app/transacoes/transacoes_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TransacoesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AddControllerStore()),
    Bind.lazySingleton((i) => TransacoesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => ListPage(title: 'Transações')),
  ];
}
