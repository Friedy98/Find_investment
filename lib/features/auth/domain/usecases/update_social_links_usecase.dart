import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// UpdateSocialLinksUseCase
class UpdateSocialLinksUseCase {
  final AuthRepository repository;

  UpdateSocialLinksUseCase(this.repository);

  Future<UserEntity> call({
    String? linkedin,
    String? twitter,
    String? facebook,
    String? github,
    String? website,
  }) async {
    return await repository.updateSocialLinks(
      linkedin: linkedin,
      twitter: twitter,
      facebook: facebook,
      github: github,
      website: website,
    );
  }
}
