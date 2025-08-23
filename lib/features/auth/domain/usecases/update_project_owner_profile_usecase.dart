import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// UpdateProjectOwnerProfileUseCase
class UpdateProjectOwnerProfileUseCase {
  final AuthRepository repository;

  UpdateProjectOwnerProfileUseCase(this.repository);

  Future<UserEntity> call({
    Map<String, dynamic>? company,
    List<String>? skills,
    String? experience,
  }) async {
    return await repository.updateProjectOwnerProfile(
      company: company,
      skills: skills,
      experience: experience,
    );
  }
}
