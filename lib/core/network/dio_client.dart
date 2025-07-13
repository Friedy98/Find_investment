import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/services/secure_storage_service.dart';
import 'package:flutter/foundation.dart';

import '../../config/app_config.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/error_interceptor.dart';
import 'interceptors/language_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

class DioClient {
  static Dio createDio({required SecureStorageService secureStorage}) {
    final dio = Dio(
      BaseOptions(
        baseUrl: AppConfig.baseUrl,
        connectTimeout: AppConfig.connectTimeout,
        receiveTimeout: AppConfig.receiveTimeout,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Add interceptors
    dio.interceptors.addAll([
      LanguageInterceptor(),
      AuthInterceptor(secureStorage: secureStorage),
      ErrorInterceptor(),
      if (kDebugMode) LoggingInterceptor(),
    ]);

    return dio;
  }
}
