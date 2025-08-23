import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/user/domain/repositories/user_repository.dart';

class UpdatePasswordUseCase {
  final UserRepository repository;

  UpdatePasswordUseCase(this.repository);

  Future<UserEntity> call({
    required String id,
    required Map<String, dynamic> passwordData,
  }) async {
    return await repository.updatePassword(id: id, passwordData: passwordData);
  }
}
