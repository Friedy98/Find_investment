import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// DeleteAvatarUseCase
class DeleteAvatarUseCase {
  final AuthRepository repository;

  DeleteAvatarUseCase(this.repository);

  Future<void> call() async {
    await repository.deleteAvatar();
  }
}
