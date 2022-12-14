import 'package:chopper/chopper.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import '../config/curl_generator.dart';
class LogRequestInterceptor extends RequestInterceptor {
  final Logger logger = Modular.get<Logger>();

  @override
  Future<Request> onRequest(Request request) async {
    String str = await CURLGenerator.getCURLFromRequest(request);
    if (request.headers.containsKey('authorization')) {
      str = str.replaceAll(request.headers['authorization']!, "");
    }
    logger.i(str);
    return request;
  }
}
