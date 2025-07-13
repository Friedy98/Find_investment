import 'package:find_invest_mobile/config/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/services/shared_preferences_service.dart';

final themeModeProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeMode>((ref) {
  final storageService = ref.watch(storageServiceProvider);
  return ThemeModeNotifier(storageService);
});

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  final SharedPreferenceService _storageService;

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
