import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// UpdatePrivacyUseCase
class UpdatePrivacyUseCase {
  final AuthRepository repository;

  UpdatePrivacyUseCase(this.repository);

  Future<UserEntity> call({
    String? profileVisibility,
    bool? showEmail,
    bool? showPhone,
  }) async {
    return await repository.updatePrivacy(
      profileVisibility: profileVisibility,
      showEmail: showEmail,
      showPhone: showPhone,
    );
  }
}
