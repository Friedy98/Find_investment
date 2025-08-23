import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// UpdateInvestorProfileUseCase
class UpdateInvestorProfileUseCase {
  final AuthRepository repository;

  UpdateInvestorProfileUseCase(this.repository);

  Future<UserEntity> call({
    String? riskTolerance,
    Map<String, dynamic>? investmentPreferences,
  }) async {
    return await repository.updateInvestorProfile(
      riskTolerance: riskTolerance,
      investmentPreferences: investmentPreferences,
    );
  }
}
