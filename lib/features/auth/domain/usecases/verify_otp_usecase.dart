import 'package:find_invest_mobile/features/auth/data/models/reset_password_model.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

class VerifyOtpUseCase {
  final AuthRepository repository;

  VerifyOtpUseCase(this.repository);

  Future<ResetPasswordResponseModel> call(String email, String otp, String type) async {
    return await repository.verifyOtp(email, otp, type);
  }
}