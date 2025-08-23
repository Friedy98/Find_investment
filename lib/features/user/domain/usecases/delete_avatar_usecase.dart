import 'package:find_invest_mobile/features/user/domain/repositories/user_repository.dart';

class DeleteAvatarUseCase {
  final UserRepository repository;

  DeleteAvatarUseCase(this.repository);

  Future<void> call(String id) async {
    return await repository.deleteAvatar(id);
  }
}
