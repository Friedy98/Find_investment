import 'package:find_invest_mobile/features/auth/data/models/auth_response_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/reset_password_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/auth_register_response_model.dart';

abstract class AuthRepository {
  Future<AuthRegisterResponseModel> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String confirmPassword,
    required String phone,
    required String role,
    required bool acceptTerms,
    required bool acceptPrivacy,
  });

  Future<AuthResponseModel> login({
    required String email,
    required String password,
    required bool rememberMe,
  });

  Future<AuthResponseModel> refreshToken(String refreshToken);
  Future<UserModel> getUser();
  Future<void> logout();
  Future<ResetPasswordResponseModel> requestOtp(String email, String method);
  Future<ResetPasswordResponseModel> verifyOtp(
      String email, String otp, String type);
  Future<ResetPasswordResponseModel> resetPassword(
      String email, String otp, String newPassword, String confirmNewPassword);
}
