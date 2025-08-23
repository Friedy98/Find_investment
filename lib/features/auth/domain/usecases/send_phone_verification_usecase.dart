import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

// SendPhoneVerificationUseCase
class SendPhoneVerificationUseCase {
  final AuthRepository repository;

  SendPhoneVerificationUseCase(this.repository);

  Future<void> call(String method) async {
    await repository.sendPhoneVerification(method);
  }
}
