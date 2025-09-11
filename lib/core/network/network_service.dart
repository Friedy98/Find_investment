import 'package:dio/dio.dart';
import 'package:find_invest_mobile/config/app_config.dart';
import 'package:find_invest_mobile/shared/widgets/error_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:find_invest_mobile/core/utils/connectivity_handler.dart';
import '../services/secure_storage_service.dart';

// import 'interceptors/auth_interceptor.dart';
import 'package:flutter/material.dart';
import 'interceptors/error_interceptor.dart';
import 'interceptors/language_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

class NetworkService {
  final Dio dio;
  final SecureStorageService secureStorage;
  final ConnectivityHandler connectivityHandler;
  final GlobalKey<NavigatorState> navigatorKey; // Add navigatorKey for GoRouter

  NetworkService({
    required this.secureStorage,
    required this.connectivityHandler,
    required this.navigatorKey, // Require navigatorKey in constructor
  }) : dio = Dio(BaseOptions(
          baseUrl: AppConfig.baseUrl,
          connectTimeout: AppConfig.connectTimeout,
          receiveTimeout: AppConfig.receiveTimeout,
        )) {
    dio.interceptors.addAll([
      InterceptorsWrapper(
        onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
          // Vérifier la connectivité avant la requête
          final isConnected = await connectivityHandler.checkConnectivity();
          if (!isConnected) {
            throw DioException(
              requestOptions: options,
              type: DioExceptionType.connectionError,
              error: 'No internet connection',
            );
          }

          // Ajouter le token d'authentification si disponible
          final token = await secureStorage.read('auth_token');
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          return handler.next(options);
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          _handleError(e);
          return handler.next(e);
        },
      ),
      LanguageInterceptor(),
      // AuthInterceptor(secureStorage: secureStorage),
      ErrorInterceptor(),
      if (kDebugMode) LoggingInterceptor(),
    ]);
  }

  /// Effectue une requête GET avec des paramètres de requête optionnels
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    String? id,
  }) async {
    try {
      final url = id != null ? '$path/$id' : path;
      return await dio.get(
        url,
        queryParameters: queryParameters,
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Effectue une requête POST avec des données JSON optionnelles
  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Effectue une requête POST avec FormData pour les fichiers ou données multipart
  Future<Response> postFormData(
    String path, {
    required FormData formData,
    Map<String, dynamic>? queryParameters,
    String? id,
  }) async {
    try {
      final url = id != null ? '$path/$id' : path;
      return await dio.post(
        url,
        data: formData,
        queryParameters: queryParameters,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Effectue une requête PUT avec des données JSON et un ID optionnel
  Future<Response> put(
    String path, {
    required dynamic data,
    String? id,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final url = id != null ? '$path/$id' : path;
      return await dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Effectue une requête PUT avec FormData pour les fichiers ou données multipart
  Future<Response> putFormData(
    String path, {
    required FormData formData,
    String? id,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final url = id != null ? '$path/$id' : path;
      return await dio.put(
        url,
        data: formData,
        queryParameters: queryParameters,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Effectue une requête patch avec des données JSON et un ID optionnel
  Future<Response> patch(
    String path, {
    required dynamic data,
    String? id,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final url = id != null ? '$path/$id' : path;
      return await dio.patch(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Effectue une requête patch avec FormData pour les fichiers ou données multipart
  Future<Response> patchFormData(
    String path, {
    required FormData formData,
    String? id,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final url = id != null ? '$path/$id' : path;
      return await dio.patch(
        url,
        data: formData,
        queryParameters: queryParameters,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Effectue une requête DELETE avec un ID optionnel
  Future<Response> delete(
    String path, {
    String? id,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final url = id != null ? '$path/$id' : path;
      return await dio.delete(
        url,
        queryParameters: queryParameters,
      );
    } catch (e) {
      rethrow;
    }
  }

  void _handleError(DioException e) {
    String errorMessage;
    String errorDetail;

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        errorMessage = 'Connection Timeout';
        errorDetail =
            'The request timed out while trying to connect to the server.';
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = 'Send Timeout';
        errorDetail = 'The request timed out while sending data to the server.';
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = 'Receive Timeout';
        errorDetail = 'The request timed out while waiting for a response.';
        break;
      case DioExceptionType.badResponse:
        errorMessage = 'Server Error';
        errorDetail =
            'Received an invalid response: ${e.response?.statusCode} - ${e.response?.data['message']}';
        break;
      case DioExceptionType.cancel:
        errorMessage = 'Request Cancelled';
        errorDetail = 'The request was cancelled.';
        break;
      case DioExceptionType.connectionError:
        errorMessage = 'No Internet Connection';
        errorDetail = 'Please check your network settings and try again.';
        break;
      default:
        errorMessage = 'Network Error';
        errorDetail = e.message ?? 'An unexpected error occurred.';
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      showErrorDialog(
        navigatorKey.currentContext!,
        title: errorMessage,
        message: errorDetail,
      );
    });
  }
}
