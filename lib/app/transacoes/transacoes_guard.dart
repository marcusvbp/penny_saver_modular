import 'package:flutter_modular/flutter_modular.dart';
import 'package:penny_saver/app_modular.dart';

class TransacoesGuard extends RouteGuard {
  TransacoesGuard(String? guardedRoute) : super(guardedRoute);

  @override
  Future<bool> canActivate(String path, ModularRoute router) async {
    await Modular.isModuleReady<AppModule>();
    return true;
  }
}
