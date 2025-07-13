import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/services/secure_storage_service.dart';

class AuthInterceptor extends Interceptor {
  final SecureStorageService secureStorage;

  AuthInterceptor({required this.secureStorage});

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // TODO: Add authentication token
    final token = await secureStorage.read('auth_token');
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      // TODO: Handle token refresh or logout
    }

    super.onError(err, handler);
  }
}
