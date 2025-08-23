import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// UpdateAvatarUseCase
class UpdateAvatarUseCase {
  final AuthRepository repository;

  UpdateAvatarUseCase(this.repository);

  Future<UserEntity> call(MultipartFile file) async {
    return await repository.updateAvatar(file);
  }
}
