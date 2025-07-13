import 'package:find_invest_mobile/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:find_invest_mobile/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:find_invest_mobile/features/auth/data/models/auth_register_response_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/auth_response_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/reset_password_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

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
    return response;
  }

  @override
  Future<AuthResponseModel> login({
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
    return response;
  }

  @override
  Future<AuthResponseModel> refreshToken(String refreshToken) async {
    final response = await remoteDataSource.refreshToken(refreshToken);
    await localDataSource.saveTokens(
        response.data.accessToken, response.data.refreshToken, true);
    return response;
  }

  @override
  Future<UserModel> getUser() async {
    return await remoteDataSource.getUser();
  }

  @override
  Future<void> logout() async {
    await remoteDataSource.logout();
    await localDataSource.clearTokens();
  }

  @override
  Future<ResetPasswordResponseModel> requestOtp(String email, String method) async {
    return await remoteDataSource.requestOtp(email, method);
  }

  @override
  Future<ResetPasswordResponseModel> verifyOtp(String email, String otp, String type) async {
    return await remoteDataSource.verifyOtp(email, otp, type);
  }

  @override
  Future<ResetPasswordResponseModel> resetPassword(
      String email, String otp, String newPassword, String confirmNewPassword) async {
    return await remoteDataSource.resetPassword(email, otp, newPassword, confirmNewPassword);
  }
}
