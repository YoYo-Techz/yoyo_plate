import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_module.dart';
import 'app_widget.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

// fvm flutter run | grep -v "Error retrieving thread information"
// Fvm build runner gen
// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
// fvm flutter pub get && fvm flutter pub run build_runner build --delete-conflicting-outputs
// fvm flutter pub run flutter_launcher_icons:main
// pod deintegrate --verbose
// arch -x86_64 pod install
// pod install --verbose
// sudo arch -x86_64 gem install ffi
