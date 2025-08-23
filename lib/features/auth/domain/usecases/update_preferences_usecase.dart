import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// UpdatePreferencesUseCase
class UpdatePreferencesUseCase {
  final AuthRepository repository;

  UpdatePreferencesUseCase(this.repository);

  Future<UserEntity> call({
    String? language,
    String? timezone,
    Map<String, dynamic>? notifications,
  }) async {
    return await repository.updatePreferences(
      language: language,
      timezone: timezone,
      notifications: notifications,
    );
  }
}
