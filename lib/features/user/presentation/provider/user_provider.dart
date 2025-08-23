import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/user/domain/usecases/delete_avatar_usecase.dart';
import 'package:find_invest_mobile/features/user/domain/usecases/get_user_usecase.dart';
import 'package:find_invest_mobile/features/user/domain/usecases/update_avatar_usecase.dart';
import 'package:find_invest_mobile/features/user/domain/usecases/update_investor_profile_usecase.dart';
import 'package:find_invest_mobile/features/user/domain/usecases/update_password_usecase.dart';
import 'package:find_invest_mobile/features/user/domain/usecases/update_preferences_usecase.dart';
import 'package:find_invest_mobile/features/user/domain/usecases/update_privacy_usecase.dart';
import 'package:find_invest_mobile/features/user/domain/usecases/update_profile_usecase.dart';
import 'package:find_invest_mobile/features/user/domain/usecases/update_project_owner_profile_usecase.dart';
import 'package:find_invest_mobile/features/user/domain/usecases/update_security_usecase.dart';
import 'package:find_invest_mobile/features/user/domain/usecases/update_social_links_usecase.dart';

class UserState {
  final UserEntity? user;
  final bool isLoading;
  final String? error;

  UserState({this.user, this.isLoading = false, this.error});

  UserState copyWith({UserEntity? user, bool? isLoading, String? error}) {
    return UserState(
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserState &&
          runtimeType == other.runtimeType &&
          user == other.user &&
          isLoading == other.isLoading &&
          error == other.error;

  @override
  int get hashCode => user.hashCode ^ isLoading.hashCode ^ error.hashCode;
}

final userProvider = StateNotifierProvider<UserNotifier, UserState>((ref) {
  return UserNotifier(
    getUserUseCase: getIt<GetUserUseCase>(),
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
  );
});

class UserNotifier extends StateNotifier<UserState> {
  final GetUserUseCase getUserUseCase;
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

  UserNotifier({
    required this.getUserUseCase,
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
  }) : super(UserState());

  Future<void> getUser(String id) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await getUserUseCase(id);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updateProfile({
    required String id,
    required Map<String, dynamic> profileData,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updateProfileUseCase(id: id, profileData: profileData);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updatePassword({
    required String id,
    required Map<String, dynamic> passwordData,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user =
          await updatePasswordUseCase(id: id, passwordData: passwordData);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updateAvatar({
    required String id,
    required FormData avatarData,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updateAvatarUseCase(id: id, avatarData: avatarData);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> deleteAvatar(String id) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await deleteAvatarUseCase(id);
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updatePreferences({
    required Map<String, dynamic> preferences,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updatePreferencesUseCase(preferences: preferences);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updateSecurity({
    required Map<String, dynamic> securityData,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updateSecurityUseCase(securityData: securityData);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updateSocialLinks({
    required Map<String, dynamic> links,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updateSocialLinksUseCase(links: links);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updatePrivacy({
    required Map<String, dynamic> privacyData,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updatePrivacyUseCase(privacyData: privacyData);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updateInvestorProfile({
    required Map<String, dynamic> profileData,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await updateInvestorProfileUseCase(profileData: profileData);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updateProjectOwnerProfile({
    required Map<String, dynamic> profileData,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user =
          await updateProjectOwnerProfileUseCase(profileData: profileData);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void clearError() {
    state = UserState(isLoading: state.isLoading, user: state.user);
  }
}
