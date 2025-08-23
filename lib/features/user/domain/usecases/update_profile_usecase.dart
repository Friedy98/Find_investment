import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/user/domain/repositories/user_repository.dart';

class UpdateProfileUseCase {
  final UserRepository repository;

  UpdateProfileUseCase(this.repository);

  Future<UserEntity> call({
    required String id,
    required Map<String, dynamic> profileData,
  }) async {
    return await repository.updateProfile(id: id, profileData: profileData);
  }
}
