import 'package:flutter_modular/flutter_modular.dart';
import 'auth_route.dart';
import 'widget/auth_widget.dart';
import 'widget/login_widget.dart';
import 'widget/register_widget.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind((i) => ###### ,
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AuthRoutes.root,
            child: (context, args) => const AuthWidget()),
        ChildRoute(AuthRoutes.login,
            child: (context, args) => const LoginWidget()),
        ChildRoute(AuthRoutes.register,
            child: (context, args) => const RegisterWidget()),
      ];
}
