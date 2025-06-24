import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LanguageInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Get current locale
    final locale = WidgetsBinding.instance.platformDispatcher.locale;
    final languageCode = locale.languageCode;

    // Add Accept-Language header
    options.headers['Accept-Language'] = languageCode;

    super.onRequest(options, handler);
  }
}
