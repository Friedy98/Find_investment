import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/user/domain/repositories/user_repository.dart';

class UpdateSocialLinksUseCase {
  final UserRepository repository;

  UpdateSocialLinksUseCase(this.repository);

  Future<UserEntity> call({
    required Map<String, dynamic> links,
  }) async {
    return await repository.updateSocialLinks(links: links);
  }
}
