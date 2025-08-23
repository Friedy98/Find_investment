import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/user/domain/repositories/user_repository.dart';

class UpdateProjectOwnerProfileUseCase {
  final UserRepository repository;

  UpdateProjectOwnerProfileUseCase(this.repository);

  Future<UserEntity> call({
    required Map<String, dynamic> profileData,
  }) async {
    return await repository.updateProjectOwnerProfile(profileData: profileData);
  }
}
