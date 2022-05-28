import 'package:flutter_modular/flutter_modular.dart';
import 'package:yoyoplate/module/home/home_routes.dart';
import 'package:yoyoplate/module/home/widget/details_widget.dart';
import 'package:yoyoplate/module/home/widget/home_widget.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind((i) => ###### ,
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(HomeRoutes.root,
            child: (context, args) => const HomeWidget()),
        ChildRoute(HomeRoutes.details,
            child: (context, args) => const DetailsWidget()),
      ];
}
