import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/config/service_locator.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/logout_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/register_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/request_otp_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/reset_password_usecase.dart';

class AuthState {
  final UserModel? user;
  final bool isLoading;
  final String? error;

  AuthState({this.user, this.isLoading = false, this.error});

  AuthState copyWith({UserModel? user, bool? isLoading, String? error}) {
    return AuthState(
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthState &&
          runtimeType == other.runtimeType &&
          user == other.user &&
          isLoading == other.isLoading &&
          error == other.error;

  @override
  int get hashCode => user.hashCode ^ isLoading.hashCode ^ error.hashCode;
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(
    registerUseCase: getIt<RegisterUseCase>(),
    loginUseCase: getIt<LoginUseCase>(),
    logoutUseCase: getIt<LogoutUseCase>(),
    getUserUseCase: getIt<GetUserUseCase>(),
    requestOtpUseCase: getIt<RequestOtpUseCase>(),
    verifyOtpUseCase: getIt<VerifyOtpUseCase>(),
    resetPasswordUseCase: getIt<ResetPasswordUseCase>(),
  );
});

class AuthNotifier extends StateNotifier<AuthState> {
  final RegisterUseCase registerUseCase;
  final LoginUseCase loginUseCase;
  final LogoutUseCase logoutUseCase;
  final GetUserUseCase getUserUseCase;
  final RequestOtpUseCase requestOtpUseCase;
  final VerifyOtpUseCase verifyOtpUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;

  AuthNotifier({
    required this.registerUseCase,
    required this.loginUseCase,
    required this.logoutUseCase,
    required this.getUserUseCase,
    required this.requestOtpUseCase,
    required this.verifyOtpUseCase,
    required this.resetPasswordUseCase,
  }) : super(AuthState());

  Future<void> register({
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
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await registerUseCase(
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
      state = state.copyWith(user: response.data.user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> login({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await loginUseCase(
        email: email,
        password: password,
        rememberMe: rememberMe,
      );
      state = state.copyWith(user: response.data.user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> logout() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await logoutUseCase();
      state = state.copyWith(user: null, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> getUser() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await getUserUseCase();
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> requestOtp(String email, String method) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await requestOtpUseCase(email, method);
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> verifyOtp(String email, String otp, String type) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await verifyOtpUseCase(email, otp, type);
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> resetPassword(String email, String otp, String newPassword,
      String confirmNewPassword) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await resetPasswordUseCase(email, otp, newPassword, confirmNewPassword);
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
