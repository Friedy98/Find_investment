import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  factory UserModel({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    String? phone,
    required String role,
    List<String>? permissions,
    ProfileModel? profile,
    PreferencesModel? preferences,
    String? kycStatus,
    bool? isActive,
    required bool isVerified,
    DateTime? lastLogin,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class ProfileModel with _$ProfileModel {
  const ProfileModel._();

  factory ProfileModel({
    String? avatar,
    String? bio,
    String? location,
    String? website,
    SocialLinksModel? socialLinks,
    DateTime? dateOfBirth,
    String? gender,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class SocialLinksModel with _$SocialLinksModel {
  const SocialLinksModel._();

  factory SocialLinksModel({
    String? linkedin,
    String? twitter,
    String? facebook,
    String? instagram,
  }) = _SocialLinksModel;

  factory SocialLinksModel.fromJson(Map<String, dynamic> json) =>
      _$SocialLinksModelFromJson(json);
}

@freezed
class PreferencesModel with _$PreferencesModel {
  const PreferencesModel._();

  factory PreferencesModel({
    String? language,
    NotificationsModel? notifications,
    PrivacyModel? privacy,
  }) = _PreferencesModel;

  factory PreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$PreferencesModelFromJson(json);
}

@freezed
class NotificationsModel with _$NotificationsModel {
  const NotificationsModel._();

  factory NotificationsModel({
    bool? email,
    bool? push,
    bool? sms,
  }) = _NotificationsModel;

  factory NotificationsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationsModelFromJson(json);
}

@freezed
class PrivacyModel with _$PrivacyModel {
  const PrivacyModel._();

  factory PrivacyModel({
    String? profileVisibility,
    bool? showEmail,
    bool? showPhone,
  }) = _PrivacyModel;

  factory PrivacyModel.fromJson(Map<String, dynamic> json) =>
      _$PrivacyModelFromJson(json);
}
