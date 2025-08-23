import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/core/utils/constants.dart';
import 'package:find_invest_mobile/features/auth/data/models/auth_register_response_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/auth_response_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/reset_password_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
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

  // Nouveaux endpoints ajoutés
  Future<UserModel> updateProfile({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? bio,
    Map<String, dynamic>? location,
  });

  Future<UserModel> updatePassword({
    required String currentPassword,
    required String newPassword,
  });

  Future<UserModel> updateAvatar(MultipartFile file);

  Future<void> deleteAvatar();

  Future<UserModel> updatePreferences({
    String? language,
    String? timezone,
    Map<String, dynamic>? notifications,
  });

  Future<UserModel> updateSecurity({
    required bool twoFactorEnabled,
  });

  // Future<List<dynamic>> getLoginHistory({
  //   int? page,
  //   int? limit,
  // });

  Future<UserModel> updateSocialLinks({
    String? linkedin,
    String? twitter,
    String? facebook,
    String? github,
    String? website,
  });

  Future<UserModel> updatePrivacy({
    String? profileVisibility,
    bool? showEmail,
    bool? showPhone,
  });

  // Future<UserModel> acceptTerms({
  //   required bool termsAccepted,
  //   required bool privacyPolicyAccepted,
  // });

  Future<UserModel> updateInvestorProfile({
    String? riskTolerance,
    Map<String, dynamic>? investmentPreferences,
  });

  Future<UserModel> updateProjectOwnerProfile({
    Map<String, dynamic>? company,
    List<String>? skills,
    String? experience,
  });

  Future<void> enable2FA(String method);

  Future<void> sendPhoneVerification(String method);

  Future<void> verifyPhone(String code);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final NetworkService networkService;

  AuthRemoteDataSourceImpl({required this.networkService});

  @override
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
  }) async {
    try {
      final response =
          await networkService.post(ApiConstants.registerEndpoint, data: {
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword,
        'phone': phone,
        'role': role,
        'acceptTerms': acceptTerms,
        'acceptPrivacy': acceptPrivacy,
      });
      return AuthRegisterResponseModel.fromJson(response.data);
    } catch (e) {
      LoggingService.error('Register error: $e');
      throw Exception('Failed to register');
    }
  }

  @override
  Future<AuthResponseModel> login({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    try {
      final response =
          await networkService.post(ApiConstants.loginEndpoint, data: {
        'email': email,
        'password': password,
        'rememberMe': rememberMe,
      });
      return AuthResponseModel.fromJson(response.data);
    } catch (e) {
      LoggingService.error('Login error: $e');
      throw Exception('Failed to login: $e');
    }
  }

  @override
  Future<AuthResponseModel> refreshToken(String refreshToken) async {
    try {
      final response = await networkService.post('/auth/refresh', data: {
        'refreshToken': refreshToken,
      });
      return AuthResponseModel.fromJson(response.data);
    } catch (e) {
      LoggingService.error('Refresh token error: $e');
      throw Exception('Failed to refresh token');
    }
  }

  @override
  Future<UserModel> getUser() async {
    try {
      final response = await networkService.get('/users/me');
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Get user error: $e');
      throw Exception('Failed to fetch user');
    }
  }

  @override
  Future<void> logout() async {
    try {
      await networkService.post('/auth/logout');
    } catch (e) {
      LoggingService.error('Logout error: $e');
      throw Exception('Failed to logout');
    }
  }

  @override
  Future<ResetPasswordResponseModel> requestOtp(
      String email, String method) async {
    try {
      final response = await networkService.post('/auth/password-reset-otp',
          data: {'email': email, 'method': method});
      return ResetPasswordResponseModel.fromJson(response.data);
    } catch (e) {
      LoggingService.error('Request OTP error: $e');
      throw Exception('Failed to request OTP');
    }
  }

  @override
  Future<ResetPasswordResponseModel> verifyOtp(
      String email, String otp, String type) async {
    try {
      final response = await networkService.post('/auth/verify-otp-public',
          data: {'email': email, 'code': otp, 'type': type});
      return ResetPasswordResponseModel.fromJson(response.data);
    } catch (e) {
      LoggingService.error('Verify OTP error: $e');
      throw Exception('Failed to verify OTP');
    }
  }

  @override
  Future<ResetPasswordResponseModel> resetPassword(String email, String otp,
      String newPassword, String confirmNewPassword) async {
    try {
      final response =
          await networkService.post('/auth/reset-password-otp', data: {
        'email': email,
        'code': otp,
        'newPassword': newPassword,
        'confirmNewPassword': confirmNewPassword
      });
      return ResetPasswordResponseModel.fromJson(response.data);
    } catch (e) {
      LoggingService.error('Reset password error: $e');
      throw Exception('Failed to reset password');
    }
  }

  // Implémentations des nouveaux endpoints

  @override
  Future<UserModel> updateProfile({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? bio,
    Map<String, dynamic>? location,
  }) async {
    try {
      final data = {
        if (firstName != null) 'firstName': firstName,
        if (lastName != null) 'lastName': lastName,
        if (email != null) 'email': email,
        if (phone != null) 'phone': phone,
        if (bio != null) 'bio': bio,
        if (location != null) 'location': location,
      };
      final response = await networkService.put('/users/me', data: data);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update profile error: $e');
      throw Exception('Failed to update profile');
    }
  }

  @override
  Future<UserModel> updatePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      final data = {
        'currentPassword': currentPassword,
        'newPassword': newPassword,
      };
      final response =
          await networkService.put('/users/me/password', data: data);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update password error: $e');
      throw Exception('Failed to update password');
    }
  }

  @override
  Future<UserModel> updateAvatar(MultipartFile file) async {
    try {
      final formData = FormData.fromMap({
        'avatar': file,
      });
      final response = await networkService.putFormData('/users/me/avatar',
          formData: formData);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update avatar error: $e');
      throw Exception('Failed to update avatar');
    }
  }

  @override
  Future<void> deleteAvatar() async {
    try {
      await networkService.delete('/users/me/avatar');
    } catch (e) {
      LoggingService.error('Delete avatar error: $e');
      throw Exception('Failed to delete avatar');
    }
  }

  @override
  Future<UserModel> updatePreferences({
    String? language,
    String? timezone,
    Map<String, dynamic>? notifications,
  }) async {
    try {
      final data = {
        if (language != null) 'language': language,
        if (timezone != null) 'timezone': timezone,
        if (notifications != null) 'notifications': notifications,
      };
      final response =
          await networkService.put('/users/me/preferences', data: data);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update preferences error: $e');
      throw Exception('Failed to update preferences');
    }
  }

  @override
  Future<UserModel> updateSecurity({
    required bool twoFactorEnabled,
  }) async {
    try {
      final data = {
        'twoFactorEnabled': twoFactorEnabled,
      };
      final response =
          await networkService.put('/users/me/security', data: data);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update security error: $e');
      throw Exception('Failed to update security');
    }
  }

  // @override
  // Future<List<dynamic>> getLoginHistory({
  //   int? page,
  //   int? limit,
  // }) async {
  //   try {
  //     final queryParams = {
  //       if (page != null) 'page': page,
  //       if (limit != null) 'limit': limit,
  //     };
  //     final response = await networkService.get('/users/me/login-history',
  //         queryParameters: queryParams);
  //     return response.data['data']
  //         ['loginHistory']; // Assumant que c'est une liste
  //   } catch (e) {
  //     LoggingService.error('Get login history error: $e');
  //     throw Exception('Failed to get login history');
  //   }
  // }

  @override
  Future<UserModel> updateSocialLinks({
    String? linkedin,
    String? twitter,
    String? facebook,
    String? github,
    String? website,
  }) async {
    try {
      final data = {
        if (linkedin != null) 'linkedin': linkedin,
        if (twitter != null) 'twitter': twitter,
        if (facebook != null) 'facebook': facebook,
        if (github != null) 'github': github,
        if (website != null) 'website': website,
      };
      final response =
          await networkService.put('/users/me/social-links', data: data);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update social links error: $e');
      throw Exception('Failed to update social links');
    }
  }

  @override
  Future<UserModel> updatePrivacy({
    String? profileVisibility,
    bool? showEmail,
    bool? showPhone,
  }) async {
    try {
      final data = {
        if (profileVisibility != null) 'profileVisibility': profileVisibility,
        if (showEmail != null) 'showEmail': showEmail,
        if (showPhone != null) 'showPhone': showPhone,
      };
      final response =
          await networkService.put('/users/me/privacy', data: data);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update privacy error: $e');
      throw Exception('Failed to update privacy');
    }
  }

  // @override
  // Future<UserModel> acceptTerms({
  //   required bool termsAccepted,
  //   required bool privacyPolicyAccepted,
  // }) async {
  //   try {
  //     final data = {
  //       'termsAccepted': termsAccepted,
  //       'privacyPolicyAccepted': privacyPolicyAccepted,
  //     };
  //     final response = await networkService.put('/users/me/terms', data: data);
  //     return UserModel.fromJson(response.data['data']['user']);
  //   } catch (e) {
  //     LoggingService.error('Accept terms error: $e');
  //     throw Exception('Failed to accept terms');
  //   }
  // }

  @override
  Future<UserModel> updateInvestorProfile({
    String? riskTolerance,
    Map<String, dynamic>? investmentPreferences,
  }) async {
    try {
      final data = {
        if (riskTolerance != null) 'riskTolerance': riskTolerance,
        if (investmentPreferences != null)
          'investmentPreferences': investmentPreferences,
      };
      final response =
          await networkService.put('/users/me/investor-profile', data: data);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update investor profile error: $e');
      throw Exception('Failed to update investor profile');
    }
  }

  @override
  Future<UserModel> updateProjectOwnerProfile({
    Map<String, dynamic>? company,
    List<String>? skills,
    String? experience,
  }) async {
    try {
      final data = {
        if (company != null) 'company': company,
        if (skills != null) 'skills': skills,
        if (experience != null) 'experience': experience,
      };
      final response = await networkService
          .put('/users/me/project-owner-profile', data: data);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update project owner profile error: $e');
      throw Exception('Failed to update project owner profile');
    }
  }

  @override
  Future<void> enable2FA(String method) async {
    try {
      await networkService.post('/auth/2fa/enable', data: {'method': method});
    } catch (e) {
      LoggingService.error('Enable 2FA error: $e');
      throw Exception('Failed to enable 2FA');
    }
  }

  @override
  Future<void> sendPhoneVerification(String method) async {
    try {
      await networkService
          .post('/auth/phone/send-verification', data: {'method': method});
    } catch (e) {
      LoggingService.error('Send phone verification error: $e');
      throw Exception('Failed to send phone verification');
    }
  }

  @override
  Future<void> verifyPhone(String code) async {
    try {
      await networkService.post('/auth/phone/verify', data: {'code': code});
    } catch (e) {
      LoggingService.error('Verify phone error: $e');
      throw Exception('Failed to verify phone');
    }
  }
}
