import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/di/injection.dart';
import '../../core/storage/storage_service.dart';

final themeModeProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeMode>((ref) {
  final storageService = ref.watch(storageServiceProvider);
  return ThemeModeNotifier(storageService);
});

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  final StorageService _storageService;

  ThemeModeNotifier(this._storageService) : super(ThemeMode.system) {
    _loadThemeMode();
  }

  void _loadThemeMode() {
    final savedTheme = _storageService.getString(StorageKeys.themeMode);
    if (savedTheme != null) {
      state = ThemeMode.values.firstWhere(
        (mode) => mode.name == savedTheme,
        orElse: () => ThemeMode.system,
      );
    }
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    state = themeMode;
    await _storageService.setString(StorageKeys.themeMode, themeMode.name);
  }

  Future<void> toggleTheme() async {
    final newTheme =
        state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    await setThemeMode(newTheme);
  }
}
