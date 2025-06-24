import 'package:dio/dio.dart';

import '../../utils/logger.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    AppLogger.info('REQUEST: ${options.method} ${options.path}');
    AppLogger.debug('Headers: ${options.headers}');
    if (options.data != null) {
      AppLogger.debug('Body: ${options.data}');
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    AppLogger.info(
        'RESPONSE: ${response.statusCode} ${response.requestOptions.path}');
    AppLogger.debug('Data: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    AppLogger.error(
        'ERROR: ${err.requestOptions.method} ${err.requestOptions.path}');
    AppLogger.error('Message: ${err.message}');
    if (err.response != null) {
      AppLogger.error('Status: ${err.response!.statusCode}');
      AppLogger.error('Data: ${err.response!.data}');
    }
    super.onError(err, handler);
  }
}
