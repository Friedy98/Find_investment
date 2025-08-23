import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:find_invest_mobile/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:find_invest_mobile/features/auth/data/models/auth_response_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/reset_password_model.dart';
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
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
  }) async {
    final response = await remoteDataSource.register(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      phone: phone,
      role: role,
      acceptTerms: acceptTerms,
      acceptPrivacy: acceptPrivacy,
    );
    // await localDataSource.saveTokens(
    //     response.data.accessToken ?? "", response.data.refreshToken ?? "", true);
    return response.data.user.toEntity();
  }

  @override
  Future<UserEntity> login({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    final response = await remoteDataSource.login(
      email: email,
      password: password,
      rememberMe: rememberMe,
    );
    await localDataSource.saveTokens(
        response.data.accessToken, response.data.refreshToken, rememberMe);
    return response.data.user.toEntity();
  }

  @override
  Future<AuthResponseModel> refreshToken(String refreshToken) async {
    final response = await remoteDataSource.refreshToken(refreshToken);
    await localDataSource.saveTokens(
        response.data.accessToken, response.data.refreshToken, true);
    return response;
  }

  @override
  Future<UserEntity> getUser() async {
    final userModel = await remoteDataSource.getUser();
    return userModel.toEntity();
  }

  @override
  Future<void> logout() async {
    await remoteDataSource.logout();
    await localDataSource.clearTokens();
  }

  @override
  Future<ResetPasswordResponseModel> requestOtp(
      String email, String method) async {
    return await remoteDataSource.requestOtp(email, method);
  }

  @override
  Future<ResetPasswordResponseModel> verifyOtp(
      String email, String otp, String type) async {
    return await remoteDataSource.verifyOtp(email, otp, type);
  }

  @override
  Future<ResetPasswordResponseModel> resetPassword(String email, String otp,
      String newPassword, String confirmNewPassword) async {
    return await remoteDataSource.resetPassword(
        email, otp, newPassword, confirmNewPassword);
  }

  // Nouvelles implémentations

  @override
  Future<UserEntity> updateProfile({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? bio,
    Map<String, dynamic>? location,
  }) async {
    final userModel = await remoteDataSource.updateProfile(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      bio: bio,
      location: location,
    );
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updatePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    final userModel = await remoteDataSource.updatePassword(
      currentPassword: currentPassword,
      newPassword: newPassword,
    );
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updateAvatar(MultipartFile file) async {
    final userModel = await remoteDataSource.updateAvatar(file);
    return userModel.toEntity();
  }

  @override
  Future<void> deleteAvatar() async {
    await remoteDataSource.deleteAvatar();
  }

  @override
  Future<UserEntity> updatePreferences({
    String? language,
    String? timezone,
    Map<String, dynamic>? notifications,
  }) async {
    final userModel = await remoteDataSource.updatePreferences(
      language: language,
      timezone: timezone,
      notifications: notifications,
    );
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updateSecurity({
    required bool twoFactorEnabled,
  }) async {
    final userModel = await remoteDataSource.updateSecurity(
      twoFactorEnabled: twoFactorEnabled,
    );
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updateSocialLinks({
    String? linkedin,
    String? twitter,
    String? facebook,
    String? github,
    String? website,
  }) async {
    final userModel = await remoteDataSource.updateSocialLinks(
      linkedin: linkedin,
      twitter: twitter,
      facebook: facebook,
      github: github,
      website: website,
    );
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updatePrivacy({
    String? profileVisibility,
    bool? showEmail,
    bool? showPhone,
  }) async {
    final userModel = await remoteDataSource.updatePrivacy(
      profileVisibility: profileVisibility,
      showEmail: showEmail,
      showPhone: showPhone,
    );
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updateInvestorProfile({
    String? riskTolerance,
    Map<String, dynamic>? investmentPreferences,
  }) async {
    final userModel = await remoteDataSource.updateInvestorProfile(
      riskTolerance: riskTolerance,
      investmentPreferences: investmentPreferences,
    );
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updateProjectOwnerProfile({
    Map<String, dynamic>? company,
    List<String>? skills,
    String? experience,
  }) async {
    final userModel = await remoteDataSource.updateProjectOwnerProfile(
      company: company,
      skills: skills,
      experience: experience,
    );
    return userModel.toEntity();
  }

  @override
  Future<void> enable2FA(String method) async {
    await remoteDataSource.enable2FA(method);
  }

  @override
  Future<void> sendPhoneVerification(String method) async {
    await remoteDataSource.sendPhoneVerification(method);
  }

  @override
  Future<void> verifyPhone(String code) async {
    await remoteDataSource.verifyPhone(code);
  }
}
