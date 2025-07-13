import 'package:find_invest_mobile/core/services/shared_preferences_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import '../core/services/cache_service.dart';
import '../core/services/secure_storage_service.dart';
import '../core/services/logging_service.dart';
import '../core/network/network_service.dart';

// Providers pour les services
final cacheServiceProvider = Provider<CacheService>((ref) {
  return getIt<CacheService>();
});

final secureStorageProvider = Provider<SecureStorageService>((ref) {
  return getIt<SecureStorageService>();
});

final loggingServiceProvider = Provider<LoggingService>((ref) {
  return getIt<LoggingService>();
});

final networkServiceProvider = Provider<NetworkService>((ref) {
  return getIt<NetworkService>();
});

final storageServiceProvider = Provider<SharedPreferenceService>((ref) {
  return getIt<SharedPreferenceService>();
});