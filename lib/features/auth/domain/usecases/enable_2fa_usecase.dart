import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// Enable2FAUseCase
class Enable2FAUseCase {
  final AuthRepository repository;

  Enable2FAUseCase(this.repository);

  Future<void> call(String method) async {
    await repository.enable2FA(method);
  }
}
