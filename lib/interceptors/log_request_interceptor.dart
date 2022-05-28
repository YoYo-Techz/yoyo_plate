
// import 'package:logger/logger.dart';

// class LogRequestInterceptor extends RequestInterceptor {
//   final Logger logger = Modular.get<Logger>();

//   @override
//   Future<Request> onRequest(Request request) async {
//     String str = await CURLGenerator.getCURLFromRequest(request);
//     if (request.headers.containsKey('authorization'))
//       str = str.replaceAll(request.headers['authorization']!, "");
//     logger.i(str);
//     return request;
//   }
// }
