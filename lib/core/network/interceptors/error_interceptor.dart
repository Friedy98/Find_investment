import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';

import '../../exceptions/app_exception.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    LoggingService.error('Network Error: ${err.message}', err);

    final appException = _handleError(err);
    handler.reject(DioException(
      requestOptions: err.requestOptions,
      error: appException,
      response: err.response,
      type: err.type,
    ));
  }

  AppException _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkException(message: 'Connection timeout');

      case DioExceptionType.badResponse:
        return _handleResponseError(error.response!);

      case DioExceptionType.cancel:
        return const NetworkException(message: 'Request cancelled');

      case DioExceptionType.connectionError:
        return const NetworkException(message: 'No internet connection');

      default:
        return const NetworkException(message: 'Unknown network error');
    }
  }

  AppException _handleResponseError(Response response) {
    switch (response.statusCode) {
      case 400:
        return BadRequestException(
            message: response.data?['message'] ?? 'Bad request');
      case 401:
        return const UnauthorizedException(message: 'Unauthorized');
      case 403:
        return const ForbiddenException(message: 'Forbidden');
      case 404:
        return const NotFoundException(message: 'Resource not found');
      case 422:
        return ValidationException(
            details: response.data?['errors'] ?? 'Validation failed');
      case 500:
        return const ServerException(message: 'Internal server error');
      default:
        return NetworkException(message: 'HTTP ${response.statusCode}');
    }
  }
}
