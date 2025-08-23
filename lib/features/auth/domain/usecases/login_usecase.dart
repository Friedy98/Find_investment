import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<UserEntity> call({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    return await repository.login(
      email: email,
      password: password,
      rememberMe: rememberMe,
    );
  }
}
