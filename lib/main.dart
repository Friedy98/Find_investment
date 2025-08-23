import 'package:find_invest_mobile/config/app.dart';
import 'package:find_invest_mobile/config/service_locator.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ✅ Initialise le logger en premier
  LoggingService.init();

  // Create navigatorKey
  final navigatorKey = GlobalKey<NavigatorState>();

  await setupServiceLocator(
      navigatorKey: navigatorKey); // Configure l'injection de dépendances

  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    ProviderScope(
      child: FindInvestApp(navigatorKey: navigatorKey),
    ),
  );
}
