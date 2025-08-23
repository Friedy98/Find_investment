import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/user/domain/repositories/user_repository.dart';

class UpdateAvatarUseCase {
  final UserRepository repository;

  UpdateAvatarUseCase(this.repository);

  Future<UserEntity> call({
    required String id,
    required FormData avatarData,
  }) async {
    return await repository.updateAvatar(id: id, avatarData: avatarData);
  }
}
