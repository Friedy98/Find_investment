import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: Add authentication token
    // final token = await getAuthToken();
    // if (token != null) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // }
    
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
