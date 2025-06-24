import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../network/dio_client.dart';
import '../storage/storage_service.dart';

// Storage Providers
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError(); // Placeholder, will be overridden
});

final storageServiceProvider = Provider<StorageService>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return StorageService(prefs);
});

// Network Provider
final dioProvider = Provider<Dio>((ref) {
  return DioClient.createDio();
});

// Setup Dependencies
// Setup Dependencies
Future<SharedPreferences> setupDependencies() async {
  try {
    // Initialize SharedPreferences
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences;
  } catch (e) {
    throw Exception('Failed to initialize dependencies: $e');
  }
}
