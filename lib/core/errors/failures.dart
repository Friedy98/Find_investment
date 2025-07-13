abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure() : super('serverError');
}

class NetworkFailure extends Failure {
  NetworkFailure() : super('networkError');
}

class AuthFailure extends Failure {
  AuthFailure() : super('authError');
}

class CacheFailure extends Failure {
  CacheFailure() : super('cacheError');
}
