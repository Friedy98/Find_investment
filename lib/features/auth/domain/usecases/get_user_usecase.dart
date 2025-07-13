import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

class GetUserUseCase {
  final AuthRepository repository;

  GetUserUseCase(this.repository);

  Future<UserModel> call() async {
    return await repository.getUser();
  }
}