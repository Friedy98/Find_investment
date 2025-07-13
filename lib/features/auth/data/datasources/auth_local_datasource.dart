// import 'package:dartz/dartz.dart';
// import 'package:find_invest_mobile/core/errors/failures.dart';
import 'package:find_invest_mobile/core/services/cache_service.dart';
import 'package:find_invest_mobile/core/services/secure_storage_service.dart';
// import 'package:find_invest_mobile/data/models/user_model.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class AuthLocalDataSource {
  Future<void> saveTokens(String token, String refreshToken, bool rememberMe);
  Future<String?> getToken();
  Future<String?> getRefreshToken();
  Future<void> clearTokens();
  // Future<Either<Failure, UserModel>> getCachedUser();
  // Future<Either<Failure, void>> cacheUser(UserModel user);
  // Future<Either<Failure, void>> clearUser();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  // final FlutterSecureStorage storage;
  final CacheService cacheService;
  final SecureStorageService secureStorage;
  // static const String _userKey = 'cached_user';
  static const String _tokenKey = 'auth_token';
  static const String _refreshToken = 'refresh_token';

  AuthLocalDataSourceImpl({
    required this.cacheService,
    required this.secureStorage,
  });

 @override
  Future<void> saveTokens(String token, String refreshToken, bool rememberMe) async {
    await secureStorage.write(_tokenKey, token);
    if (rememberMe) {
      await secureStorage.write(_refreshToken, refreshToken);
    }
  }

  @override
  Future<String?> getToken() async {
    return await secureStorage.read(_tokenKey);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await secureStorage.read(_refreshToken);
  }

  @override
  Future<void> clearTokens() async {
    await secureStorage.delete(_tokenKey);
    await secureStorage.delete(_refreshToken);
  }
}
