import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/user/domain/repositories/user_repository.dart';

class UpdatePreferencesUseCase {
  final UserRepository repository;

  UpdatePreferencesUseCase(this.repository);

  Future<UserEntity> call({
    required Map<String, dynamic> preferences,
  }) async {
    return await repository.updatePreferences(preferences: preferences);
  }
}
