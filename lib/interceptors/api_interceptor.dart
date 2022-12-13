import 'dart:async';
import 'dart:io';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';

class APIInterceptor extends RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    if (request.url.toString().endsWith("login") ||
        request.url.toString().endsWith("register") ) {
      return request;
    }
    String token = "";
    // Box box1 = await Hive.openBox('logindata');
    // token = box1.get('token');
    // debugPrint('Token::$token');
    return request.copyWith(headers: {
      HttpHeaders.acceptHeader: "application/json",
      request.method == 'GET' ? HttpHeaders.contentTypeHeader : '':
          "application/json",
      HttpHeaders.authorizationHeader: "Bearer $token",
    });
  }
}
