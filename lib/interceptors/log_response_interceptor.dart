import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:logger/logger.dart';

class LogResponseInterceptor extends ResponseInterceptor {
  final Logger logger =
      Logger(printer: PrettyPrinter(methodCount: 0, printEmojis: true));
  @override
  FutureOr<Response> onResponse(Response response) async {
    logger.i(response.bodyString);
    return response;
  }
}
