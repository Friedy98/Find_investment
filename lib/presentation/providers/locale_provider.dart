import 'package:find_invest_mobile/config/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/services/shared_preferences_service.dart';

final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  final storageService = ref.watch(storageServiceProvider);
  return LocaleNotifier(storageService);
});

class LocaleNotifier extends StateNotifier<Locale> {
  final SharedPreferenceService _storageService;

  LocaleNotifier(this._storageService) : super(const Locale('fr')) {
    _loadLocale();
  }

  void _loadLocale() {
    final savedLocale = _storageService.getString(StorageKeys.locale);
    if (savedLocale != null) {
      state = Locale(savedLocale);
    }
  }

  Future<void> setLocale(Locale locale) async {
    state = locale;
    await _storageService.setString(StorageKeys.locale, locale.languageCode);
  }

  Future<void> toggleLanguage() async {
    final newLocale =
        state.languageCode == 'fr' ? const Locale('en') : const Locale('fr');
    await setLocale(newLocale);
  }
}
