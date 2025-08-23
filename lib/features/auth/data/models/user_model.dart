import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  factory AddressModel({
    String? street,
    String? region,
    String? postalCode,
    CoordinatesModel? coordinates,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);
}

@freezed
class CoordinatesModel with _$CoordinatesModel {
  factory CoordinatesModel({
    double? latitude,
    double? longitude,
  }) = _CoordinatesModel;

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) => _$CoordinatesModelFromJson(json);
}

@freezed
class LocationModel with _$LocationModel {
  factory LocationModel({
    String? country,
    String? city,
    AddressModel? address,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) => _$LocationModelFromJson(json);
}

@freezed
class AvatarModel with _$AvatarModel {
  factory AvatarModel({
    String? url,
    String? filename,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? uploadedAt,
  }) = _AvatarModel;

  factory AvatarModel.fromJson(Map<String, dynamic> json) => _$AvatarModelFromJson(json);
}

@freezed
class InvestmentPreferencesModel with _$InvestmentPreferencesModel {
  factory InvestmentPreferencesModel({
    List<String>? sectors,
    double? minAmount,
    double? maxAmount,
    List<String>? regions,
  }) = _InvestmentPreferencesModel;

  factory InvestmentPreferencesModel.fromJson(Map<String, dynamic> json) => _$InvestmentPreferencesModelFromJson(json);
}

@freezed
class InvestorProfileModel with _$InvestorProfileModel {
  factory InvestorProfileModel({
    String? riskTolerance,
    InvestmentPreferencesModel? investmentPreferences,
    double? totalInvested,
    int? activeInvestments,
  }) = _InvestorProfileModel;

  factory InvestorProfileModel.fromJson(Map<String, dynamic> json) => _$InvestorProfileModelFromJson(json);
}

@freezed
class CompanyModel with _$CompanyModel {
  factory CompanyModel({
    String? name,
    String? description,
    String? website,
    String? registrationNumber,
    int? foundedYear,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);
}

@freezed
class ProjectOwnerProfileModel with _$ProjectOwnerProfileModel {
  factory ProjectOwnerProfileModel({
    CompanyModel? company,
    List<String>? skills,
    String? experience,
    int? totalProjectsCreated,
    int? successfulProjects,
  }) = _ProjectOwnerProfileModel;

  factory ProjectOwnerProfileModel.fromJson(Map<String, dynamic> json) => _$ProjectOwnerProfileModelFromJson(json);
}

@freezed
class EmailNotificationsModel with _$EmailNotificationsModel {
  factory EmailNotificationsModel({
    bool? marketing,
    bool? updates,
    bool? security,
  }) = _EmailNotificationsModel;

  factory EmailNotificationsModel.fromJson(Map<String, dynamic> json) => _$EmailNotificationsModelFromJson(json);
}

@freezed
class PushNotificationsModel with _$PushNotificationsModel {
  factory PushNotificationsModel({
    bool? enabled,
    bool? marketing,
    bool? updates,
  }) = _PushNotificationsModel;

  factory PushNotificationsModel.fromJson(Map<String, dynamic> json) => _$PushNotificationsModelFromJson(json);
}

@freezed
class SmsNotificationsModel with _$SmsNotificationsModel {
  factory SmsNotificationsModel({
    bool? enabled,
    bool? security,
  }) = _SmsNotificationsModel;

  factory SmsNotificationsModel.fromJson(Map<String, dynamic> json) => _$SmsNotificationsModelFromJson(json);
}

@freezed
class NotificationsModel with _$NotificationsModel {
  factory NotificationsModel({
    EmailNotificationsModel? email,
    PushNotificationsModel? push,
    SmsNotificationsModel? sms,
  }) = _NotificationsModel;

  factory NotificationsModel.fromJson(Map<String, dynamic> json) => _$NotificationsModelFromJson(json);
}

@freezed
class PrivacyModel with _$PrivacyModel {
  factory PrivacyModel({
    String? profileVisibility,
    bool? showEmail,
    bool? showPhone,
  }) = _PrivacyModel;

  factory PrivacyModel.fromJson(Map<String, dynamic> json) => _$PrivacyModelFromJson(json);
}

@freezed
class PreferencesModel with _$PreferencesModel {
  factory PreferencesModel({
    String? language,
    String? timezone,
    NotificationsModel? notifications,
    PrivacyModel? privacy,
  }) = _PreferencesModel;

  factory PreferencesModel.fromJson(Map<String, dynamic> json) => _$PreferencesModelFromJson(json);
}

@freezed
class SocialLinksModel with _$SocialLinksModel {
  factory SocialLinksModel({
    String? linkedin,
    String? twitter,
    String? facebook,
    String? github,
    String? website,
  }) = _SocialLinksModel;

  factory SocialLinksModel.fromJson(Map<String, dynamic> json) => _$SocialLinksModelFromJson(json);
}

@freezed
class OAuthProviderModel with _$OAuthProviderModel {
  factory OAuthProviderModel({
    String? id,
    String? email,
  }) = _OAuthProviderModel;

  factory OAuthProviderModel.fromJson(Map<String, dynamic> json) => _$OAuthProviderModelFromJson(json);
}

@freezed
class OAuthModel with _$OAuthModel {
  factory OAuthModel({
    OAuthProviderModel? google,
    OAuthProviderModel? facebook,
  }) = _OAuthModel;

  factory OAuthModel.fromJson(Map<String, dynamic> json) => _$OAuthModelFromJson(json);
}

@freezed
class LoginHistoryModel with _$LoginHistoryModel {
  factory LoginHistoryModel({
    String? ip,
    String? userAgent,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? timestamp,
    LocationModel? location,
  }) = _LoginHistoryModel;

  factory LoginHistoryModel.fromJson(Map<String, dynamic> json) => _$LoginHistoryModelFromJson(json);
}

// Modèle principal UserModel
@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: 'id') required String id,
    required String firstName,
    required String lastName,
    required String email,
    String? password,
    required String role,
    @Default([]) List<String> permissions,
    String? phone,
    AvatarModel? avatar,
    String? bio,
    LocationModel? location,
    InvestorProfileModel? investorProfile,
    ProjectOwnerProfileModel? projectOwnerProfile,
    bool? emailVerified,
    String? emailVerificationToken,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? emailVerificationExpires,
    bool? phoneVerified,
    String? phoneVerificationToken,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? phoneVerificationExpires,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? passwordChangedAt,
    String? passwordResetToken,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? passwordResetExpires,
    int? loginAttempts,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? lockUntil,
    bool? twoFactorEnabled,
    String? twoFactorSecret,
    bool? active,
    bool? suspended,
    String? suspensionReason,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? suspendedAt,
    String? suspendedBy,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? lastLogin,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? lastActivity,
    List<LoginHistoryModel>? loginHistory,
    PreferencesModel? preferences,
    SocialLinksModel? socialLinks,
    OAuthModel? oauth,
    bool? termsAccepted,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? termsAcceptedAt,
    bool? privacyPolicyAccepted,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? privacyPolicyAcceptedAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

DateTime? _dateTimeFromJson(String? timestamp) =>
    timestamp != null ? DateTime.parse(timestamp) : null;

String? _dateTimeToJson(DateTime? dateTime) => dateTime?.toIso8601String();
