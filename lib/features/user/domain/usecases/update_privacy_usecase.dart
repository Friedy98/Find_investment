import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/user/domain/repositories/user_repository.dart';

class UpdatePrivacyUseCase {
  final UserRepository repository;

  UpdatePrivacyUseCase(this.repository);

  Future<UserEntity> call({
    required Map<String, dynamic> privacyData,
  }) async {
    return await repository.updatePrivacy(privacyData: privacyData);
  }
}
