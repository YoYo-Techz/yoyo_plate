import 'dart:io';
import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;

import '../config/config.dart';
import '../config/custom_json_converter.dart';
import '../interceptors/api_interceptor.dart';
import '../interceptors/auth_interceptor.dart';
import '../interceptors/log_request_interceptor.dart';
import '../interceptors/log_response_interceptor.dart';
import '../services/api_service.dart';

class APIClient extends ChopperClient {
  APIClient()
      : super(
          baseUrl: Uri.parse(Config.baseOtherUrl),
          client: http.IOClient(
            HttpClient()
              ..connectionTimeout = const Duration(
                seconds: Config.httpRequestTimeout,
              ),
          ),
          services: [
            APIService.create(),
          ],
          interceptors: [
            APIInterceptor(),
            LogRequestInterceptor(),
            LogResponseInterceptor(),
          ],
          authenticator: MyAuthenticator(),
          converter: const CustomJsonConverter(),
          errorConverter: const CustomJsonConverter(),
        );
}
