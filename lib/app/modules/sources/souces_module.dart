import 'package:flutter_modular/flutter_modular.dart';
import 'package:penny_saver/app/modules/sources/pages/list_souces_page.dart';

class SoucesModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => ListSoucesPage(title: 'Fontes')),
  ];
}
