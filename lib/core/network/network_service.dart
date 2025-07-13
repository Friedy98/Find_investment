import 'package:dio/dio.dart';
import 'package:find_invest_mobile/config/app_config.dart';
import 'package:flutter/foundation.dart';
import '../services/secure_storage_service.dart';

import 'interceptors/auth_interceptor.dart';
import 'interceptors/error_interceptor.dart';
import 'interceptors/language_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

class NetworkService {
  final Dio dio;
  final SecureStorageService secureStorage;

  NetworkService({required this.secureStorage})
      : dio = Dio(BaseOptions(
          baseUrl: AppConfig.baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        )) {
    dio.interceptors.addAll([
      LanguageInterceptor(),
      AuthInterceptor(secureStorage: secureStorage),
      ErrorInterceptor(),
      if (kDebugMode) LoggingInterceptor(),
    ]);
  }
}
