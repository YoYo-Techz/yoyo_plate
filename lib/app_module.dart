import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'app_routes.dart';
import 'module/home/home_module.dart';
import 'module/not_found_widget.dart';
import 'module/splash_widget.dart';

import 'guards/auth_guards.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind((i) => ###### ,
        Bind.singleton((i) => Logger(printer: PrettyPrinter(methodCount: 0))),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoutes.root,
            child: (context, args) => const SplashWiget()),
        ModuleRoute(AppRoutes.home, module: HomeModule(), guards: [
          AuthGuard(),
        ]),
        ModuleRoute(AppRoutes.auth, module: HomeModule()),
        WildcardRoute(child: (context, args) => const NotFoundWidget()),
      ];
}
