import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

class GetUserUseCase {
  final AuthRepository repository;

  GetUserUseCase(this.repository);

  Future<UserEntity> call() async {
    return await repository.getUser();
  }
}