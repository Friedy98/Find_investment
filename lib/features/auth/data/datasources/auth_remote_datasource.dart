import 'package:dio/dio.dart';
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
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl({required this.dio});

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
      final response = await dio.post(ApiConstants.registerEndpoint, data: {
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
      final response = await dio.post(ApiConstants.loginEndpoint, data: {
        'email': email,
        'password': password,
        'rememberMe': rememberMe,
      });
      return AuthResponseModel.fromJson(response.data);
    } catch (e) {
      LoggingService.error('Login error: $e');
      throw Exception('Failed to login');
    }
  }

  @override
  Future<AuthResponseModel> refreshToken(String refreshToken) async {
    try {
      final response = await dio.post('/auth/refresh', data: {
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
      final response = await dio.get('/auth/me');
      return UserModel.fromJson(response.data);
    } catch (e) {
      LoggingService.error('Get user error: $e');
      throw Exception('Failed to fetch user');
    }
  }

  @override
  Future<void> logout() async {
    try {
      await dio.post('/api/auth/logout');
    } catch (e) {
      LoggingService.error('Logout error: $e');
      throw Exception('Failed to logout');
    }
  }

  @override
  Future<ResetPasswordResponseModel> requestOtp(
      String email, String method) async {
    try {
      final response = await dio.post('/auth/request-password-reset-otp',
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
      final response = await dio.post('/auth/verify-otp-public',
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
      final response = await dio.post('/auth/reset-password-otp', data: {
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
}
