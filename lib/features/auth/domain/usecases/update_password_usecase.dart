import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// UpdatePasswordUseCase
class UpdatePasswordUseCase {
  final AuthRepository repository;

  UpdatePasswordUseCase(this.repository);

  Future<UserEntity> call({
    required String currentPassword,
    required String newPassword,
  }) async {
    return await repository.updatePassword(
      currentPassword: currentPassword,
      newPassword: newPassword,
    );
  }
}
