import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../app_routes.dart';
import '../module/auth/auth_module.dart';
import '../module/home/home_module.dart';

class RouteUtils {
  static void _goNextPage(
      {required String routeName,
      Object? args,
      bool isReplace = false,
      bool isReplaceAll = false}) {
    if (args == null) {
      if (isReplace) {
        Modular.to.pushReplacementNamed(routeName);
      } else if (isReplaceAll) {
        Modular.to.pushNamedAndRemoveUntil(
            routeName, (Route<dynamic> route) => false);
      } else {
        Modular.to.pushNamed(routeName);
      }
    } else {
      if (isReplace) {
        Modular.to.pushReplacementNamed(routeName, arguments: args);
      } else if (isReplaceAll) {
        Modular.to.pushNamedAndRemoveUntil(
            routeName, (Route<dynamic> route) => false);
      } else {
        Modular.to.pushNamed(routeName, arguments: args);
      }
    }
  }

  // Auth Module
  static void goPageInAuthModule(
      {required String routeName, Object? args, bool? isReplace}) {
    _goNextPage(
        routeName: "${AppRoutes.auth}$routeName",
        args: args!,
        isReplace: isReplace ?? false);
  }

  // Home Module
  static void goPageInHomeModule(
      {required String routeName, Object? args, bool? isReplace}) {
    _goNextPage(
        routeName: "${AppRoutes.home}$routeName",
        args: args!,
        isReplace: isReplace ?? false);
  }

  static void changeRoute<M extends Module>(String route,
      {Object? args, bool? isReplace, bool? isReplaceAll}) {
    String tempRoute = "";
    switch (M) {
      case AuthModule:
        tempRoute = AppRoutes.auth;
        break;
      case HomeModule:
        tempRoute = AppRoutes.home;
        break;
    }
    _goNextPage(
        routeName: "$tempRoute$route",
        args: args!,
        isReplace: isReplace ?? false,
        isReplaceAll: isReplaceAll ?? false);
  }
}
