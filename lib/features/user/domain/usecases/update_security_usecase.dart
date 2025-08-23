import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/user/domain/repositories/user_repository.dart';

class UpdateSecurityUseCase {
  final UserRepository repository;

  UpdateSecurityUseCase(this.repository);

  Future<UserEntity> call({
    required Map<String, dynamic> securityData,
  }) async {
    return await repository.updateSecurity(securityData: securityData);
  }
}
