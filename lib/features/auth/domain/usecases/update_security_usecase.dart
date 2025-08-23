import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// UpdateSecurityUseCase
class UpdateSecurityUseCase {
  final AuthRepository repository;

  UpdateSecurityUseCase(this.repository);

  Future<UserEntity> call({
    required bool twoFactorEnabled,
  }) async {
    return await repository.updateSecurity(
      twoFactorEnabled: twoFactorEnabled,
    );
  }
}
