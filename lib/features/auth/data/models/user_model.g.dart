// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      role: json['role'] as String,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      profile: json['profile'] == null
          ? null
          : ProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
      preferences: json['preferences'] == null
          ? null
          : PreferencesModel.fromJson(
              json['preferences'] as Map<String, dynamic>),
      kycStatus: json['kycStatus'] as String?,
      isActive: json['isActive'] as bool?,
      isVerified: json['isVerified'] as bool,
      lastLogin: json['lastLogin'] == null
          ? null
          : DateTime.parse(json['lastLogin'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'role': instance.role,
      'permissions': instance.permissions,
      'profile': instance.profile,
      'preferences': instance.preferences,
      'kycStatus': instance.kycStatus,
      'isActive': instance.isActive,
      'isVerified': instance.isVerified,
      'lastLogin': instance.lastLogin?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      avatar: json['avatar'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      website: json['website'] as String?,
      socialLinks: json['socialLinks'] == null
          ? null
          : SocialLinksModel.fromJson(
              json['socialLinks'] as Map<String, dynamic>),
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'bio': instance.bio,
      'location': instance.location,
      'website': instance.website,
      'socialLinks': instance.socialLinks,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'gender': instance.gender,
    };

_$SocialLinksModelImpl _$$SocialLinksModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialLinksModelImpl(
      linkedin: json['linkedin'] as String?,
      twitter: json['twitter'] as String?,
      facebook: json['facebook'] as String?,
      instagram: json['instagram'] as String?,
    );

Map<String, dynamic> _$$SocialLinksModelImplToJson(
        _$SocialLinksModelImpl instance) =>
    <String, dynamic>{
      'linkedin': instance.linkedin,
      'twitter': instance.twitter,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
    };

_$PreferencesModelImpl _$$PreferencesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PreferencesModelImpl(
      language: json['language'] as String?,
      notifications: json['notifications'] == null
          ? null
          : NotificationsModel.fromJson(
              json['notifications'] as Map<String, dynamic>),
      privacy: json['privacy'] == null
          ? null
          : PrivacyModel.fromJson(json['privacy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PreferencesModelImplToJson(
        _$PreferencesModelImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'notifications': instance.notifications,
      'privacy': instance.privacy,
    };

_$NotificationsModelImpl _$$NotificationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationsModelImpl(
      email: json['email'] as bool?,
      push: json['push'] as bool?,
      sms: json['sms'] as bool?,
    );

Map<String, dynamic> _$$NotificationsModelImplToJson(
        _$NotificationsModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'push': instance.push,
      'sms': instance.sms,
    };

_$PrivacyModelImpl _$$PrivacyModelImplFromJson(Map<String, dynamic> json) =>
    _$PrivacyModelImpl(
      profileVisibility: json['profileVisibility'] as String?,
      showEmail: json['showEmail'] as bool?,
      showPhone: json['showPhone'] as bool?,
    );

Map<String, dynamic> _$$PrivacyModelImplToJson(_$PrivacyModelImpl instance) =>
    <String, dynamic>{
      'profileVisibility': instance.profileVisibility,
      'showEmail': instance.showEmail,
      'showPhone': instance.showPhone,
    };
