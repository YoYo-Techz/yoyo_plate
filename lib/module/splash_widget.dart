import 'package:flutter/material.dart';
import 'package:yoyoplate/module/home/home_module.dart';
import 'package:yoyoplate/module/home/home_routes.dart';
import 'package:yoyoplate/utils/route_utils.dart';

class SplashWiget extends StatefulWidget {
  const SplashWiget({Key? key}) : super(key: key);

  @override
  State<SplashWiget> createState() => _SplashWigetState();
}

class _SplashWigetState extends State<SplashWiget> {
  @override
  void initState() {
    super.initState();
    _nextRoute();
  }

  _nextRoute() {
    Future.delayed(const Duration(seconds: 3), () {
      RouteUtils.changeRoute<HomeModule>(HomeRoutes.root, isReplaceAll: true,args: []);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Splash Screen")),
    );
  }
}
