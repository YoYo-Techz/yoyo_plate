import 'package:flutter/material.dart';

class SplashWiget extends StatefulWidget {
  const SplashWiget({Key? key}) : super(key: key);

  @override
  State<SplashWiget> createState() => _SplashWigetState();
}

class _SplashWigetState extends State<SplashWiget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Splash Screen")),
    );
  }
}
