import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(methodCount: 1),
);

void logError(dynamic error, [StackTrace? stackTrace]) {
  logger.e("Erreur", error: error, stackTrace: stackTrace);
}
