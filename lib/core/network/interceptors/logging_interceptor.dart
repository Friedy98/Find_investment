import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';


class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    LoggingService.info('REQUEST: ${options.method} ${options.path}');
    LoggingService.debug('Headers: ${options.headers}');
    if (options.data != null) {
      LoggingService.debug('Body: ${options.data}');
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    LoggingService.info(
        'RESPONSE: ${response.statusCode} ${response.requestOptions.path}');
    LoggingService.debug('Data: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    LoggingService.error(
        'ERROR: ${err.requestOptions.method} ${err.requestOptions.path}');
    LoggingService.error('Message: ${err.message}');
    if (err.response != null) {
      LoggingService.error('Status: ${err.response!.statusCode}');
      LoggingService.error('Data: ${err.response!.data}');
    }
    super.onError(err, handler);
  }
}
