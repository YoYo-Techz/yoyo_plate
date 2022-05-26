import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:yoyoplate/app_routes.dart';
import 'package:yoyoplate/module/splash_widget.dart';

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
      ];
}
