class ServerException implements Exception {
  final String message;
  ServerException([this.message = "Une erreur serveur est survenue."]);
}

class CacheException implements Exception {
  final String message;
  CacheException([this.message = "Erreur lors de l’accès au cache."]);
}

class AuthException implements Exception {
  final String message;
  AuthException([this.message = "Erreur d’authentification."]);
}
