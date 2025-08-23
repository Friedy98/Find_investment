import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/auth/data/models/auth_response_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/reset_password_model.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> register({
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

  Future<UserEntity> login({
    required String email,
    required String password,
    required bool rememberMe,
  });

  Future<AuthResponseModel> refreshToken(String refreshToken);
  Future<UserEntity> getUser();
  Future<void> logout();
  Future<ResetPasswordResponseModel> requestOtp(String email, String method);
  Future<ResetPasswordResponseModel> verifyOtp(
      String email, String otp, String type);
  Future<ResetPasswordResponseModel> resetPassword(
      String email, String otp, String newPassword, String confirmNewPassword);

  // Nouvelles méthodes ajoutées
  Future<UserEntity> updateProfile({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? bio,
    Map<String, dynamic>? location,
  });

  Future<UserEntity> updatePassword({
    required String currentPassword,
    required String newPassword,
  });

  Future<UserEntity> updateAvatar(MultipartFile file);

  Future<void> deleteAvatar();

  Future<UserEntity> updatePreferences({
    String? language,
    String? timezone,
    Map<String, dynamic>? notifications,
  });

  Future<UserEntity> updateSecurity({
    required bool twoFactorEnabled,
  });

  Future<UserEntity> updateSocialLinks({
    String? linkedin,
    String? twitter,
    String? facebook,
    String? github,
    String? website,
  });

  Future<UserEntity> updatePrivacy({
    String? profileVisibility,
    bool? showEmail,
    bool? showPhone,
  });

  // Future<UserEntity> acceptTerms({
  //   required bool termsAccepted,
  //   required bool privacyPolicyAccepted,
  // });

  Future<UserEntity> updateInvestorProfile({
    String? riskTolerance,
    Map<String, dynamic>? investmentPreferences,
  });

  Future<UserEntity> updateProjectOwnerProfile({
    Map<String, dynamic>? company,
    List<String>? skills,
    String? experience,
  });

  Future<void> enable2FA(String method);

  Future<void> sendPhoneVerification(String method);

  Future<void> verifyPhone(String code);
}
