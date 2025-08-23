import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// VerifyPhoneUseCase
class VerifyPhoneUseCase {
  final AuthRepository repository;

  VerifyPhoneUseCase(this.repository);

  Future<void> call(String code) async {
    await repository.verifyPhone(code);
  }
}
