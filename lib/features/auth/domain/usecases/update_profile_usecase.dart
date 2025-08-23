import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// UpdateProfileUseCase
class UpdateProfileUseCase {
  final AuthRepository repository;

  UpdateProfileUseCase(this.repository);

  Future<UserEntity> call({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? bio,
    Map<String, dynamic>? location,
  }) async {
    return await repository.updateProfile(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      bio: bio,
      location: location,
    );
  }
}
