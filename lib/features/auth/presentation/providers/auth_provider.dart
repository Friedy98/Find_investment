import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/logout_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/register_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/request_otp_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_profile_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_password_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_avatar_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/delete_avatar_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_preferences_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_security_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_social_links_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_privacy_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_investor_profile_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_project_owner_profile_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/enable_2fa_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/send_phone_verification_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/verify_phone_usecase.dart';

class AuthState {
  final UserEntity? user;
  final bool isLoading;
  final String? error;

  AuthState({this.user, this.isLoading = false, this.error});

  AuthState copyWith({UserEntity? user, bool? isLoading, String? error}) {
    return AuthState(
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }

  String? get role => user?.role;

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
    updateProfileUseCase: getIt<UpdateProfileUseCase>(),
    updatePasswordUseCase: getIt<UpdatePasswordUseCase>(),
    updateAvatarUseCase: getIt<UpdateAvatarUseCase>(),
    deleteAvatarUseCase: getIt<DeleteAvatarUseCase>(),
    updatePreferencesUseCase: getIt<UpdatePreferencesUseCase>(),
    updateSecurityUseCase: getIt<UpdateSecurityUseCase>(),
    updateSocialLinksUseCase: getIt<UpdateSocialLinksUseCase>(),
    updatePrivacyUseCase: getIt<UpdatePrivacyUseCase>(),
    updateInvestorProfileUseCase: getIt<UpdateInvestorProfileUseCase>(),
    updateProjectOwnerProfileUseCase: getIt<UpdateProjectOwnerProfileUseCase>(),
    enable2FAUseCase: getIt<Enable2FAUseCase>(),
    sendPhoneVerificationUseCase: getIt<SendPhoneVerificationUseCase>(),
    verifyPhoneUseCase: getIt<VerifyPhoneUseCase>(),
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
  final UpdateProfileUseCase updateProfileUseCase;
  final UpdatePasswordUseCase updatePasswordUseCase;
  final UpdateAvatarUseCase updateAvatarUseCase;
  final DeleteAvatarUseCase deleteAvatarUseCase;
  final UpdatePreferencesUseCase updatePreferencesUseCase;
  final UpdateSecurityUseCase updateSecurityUseCase;
  final UpdateSocialLinksUseCase updateSocialLinksUseCase;
  final UpdatePrivacyUseCase updatePrivacyUseCase;
  final UpdateInvestorProfileUseCase updateInvestorProfileUseCase;
  final UpdateProjectOwnerProfileUseCase updateProjectOwnerProfileUseCase;
  final Enable2FAUseCase enable2FAUseCase;
  final SendPhoneVerificationUseCase sendPhoneVerificationUseCase;
  final VerifyPhoneUseCase verifyPhoneUseCase;

  AuthNotifier({
    required this.registerUseCase,
    required this.loginUseCase,
    required this.logoutUseCase,
    required this.getUserUseCase,
    required this.requestOtpUseCase,
    required this.verifyOtpUseCase,
    required this.resetPasswordUseCase,
    required this.updateProfileUseCase,
    required this.updatePasswordUseCase,
    required this.updateAvatarUseCase,
    required this.deleteAvatarUseCase,
    required this.updatePreferencesUseCase,
    required this.updateSecurityUseCase,
    required this.updateSocialLinksUseCase,
    required this.updatePrivacyUseCase,
    required this.updateInvestorProfileUseCase,
    required this.updateProjectOwnerProfileUseCase,
    required this.enable2FAUseCase,
    required this.sendPhoneVerificationUseCase,
    required this.verifyPhoneUseCase,
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
      state = state.copyWith(user: response, isLoading: false);
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
      state = state.copyWith(user: response, isLoading: false);
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

  Future<void> updateProfile({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? bio,
    Map<String, dynamic>? location,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updateProfileUseCase(
        firstName: firstName,
        lastName: lastName,
        email: email,
        phone: phone,
        bio: bio,
        location: location,
      );
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updatePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updatePasswordUseCase(
        currentPassword: currentPassword,
        newPassword: newPassword,
      );
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updateAvatar(MultipartFile file) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updateAvatarUseCase(file);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> deleteAvatar() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await deleteAvatarUseCase();
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updatePreferences({
    String? language,
    String? timezone,
    Map<String, dynamic>? notifications,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updatePreferencesUseCase(
        language: language,
        timezone: timezone,
        notifications: notifications,
      );
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updateSecurity({required bool twoFactorEnabled}) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user =
          await updateSecurityUseCase(twoFactorEnabled: twoFactorEnabled);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updateSocialLinks({
    String? linkedin,
    String? twitter,
    String? facebook,
    String? github,
    String? website,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updateSocialLinksUseCase(
        linkedin: linkedin,
        twitter: twitter,
        facebook: facebook,
        github: github,
        website: website,
      );
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updatePrivacy({
    String? profileVisibility,
    bool? showEmail,
    bool? showPhone,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updatePrivacyUseCase(
        profileVisibility: profileVisibility,
        showEmail: showEmail,
        showPhone: showPhone,
      );
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updateInvestorProfile({
    String? riskTolerance,
    Map<String, dynamic>? investmentPreferences,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updateInvestorProfileUseCase(
        riskTolerance: riskTolerance,
        investmentPreferences: investmentPreferences,
      );
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updateProjectOwnerProfile({
    Map<String, dynamic>? company,
    List<String>? skills,
    String? experience,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updateProjectOwnerProfileUseCase(
        company: company,
        skills: skills,
        experience: experience,
      );
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> enable2FA(String method) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await enable2FAUseCase(method);
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> sendPhoneVerification(String method) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await sendPhoneVerificationUseCase(method);
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> verifyPhone(String code) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await verifyPhoneUseCase(code);
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void clearError() {
    state = AuthState(isLoading: state.isLoading, user: state.user);
  }
}
