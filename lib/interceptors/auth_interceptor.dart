// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../module/auth/store/auth_store.dart';
class MyAuthenticator extends Authenticator {
  @override
  FutureOr<Request?> authenticate(Request request, Response<dynamic> response,
      [Request? originalRequest]) async {
    // AuthStore _authStore = Modular.get<AuthStore>();
    // debugPrint("status code : ${response.statusCode} ");
    // if (response.statusCode == 401) {
    //   // await _authStore.logout();
    // }
    return null;
  }
}
