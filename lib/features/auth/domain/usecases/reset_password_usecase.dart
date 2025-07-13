import 'package:find_invest_mobile/features/auth/data/models/reset_password_model.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

class ResetPasswordUseCase {
  final AuthRepository repository;

  ResetPasswordUseCase(this.repository);

  Future<ResetPasswordResponseModel> call(
      String email, String otp, String newPassword, String confirmNewPassword) async {
    return await repository.resetPassword(email, otp, newPassword, confirmNewPassword);
  }
}
