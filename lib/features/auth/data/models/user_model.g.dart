// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      street: json['street'] as String?,
      region: json['region'] as String?,
      postalCode: json['postalCode'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : CoordinatesModel.fromJson(
              json['coordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'region': instance.region,
      'postalCode': instance.postalCode,
      'coordinates': instance.coordinates,
    };

_$CoordinatesModelImpl _$$CoordinatesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CoordinatesModelImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CoordinatesModelImplToJson(
        _$CoordinatesModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] == null
          ? null
          : AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
    };

_$AvatarModelImpl _$$AvatarModelImplFromJson(Map<String, dynamic> json) =>
    _$AvatarModelImpl(
      url: json['url'] as String?,
      filename: json['filename'] as String?,
      uploadedAt: _dateTimeFromJson(json['uploadedAt'] as String?),
    );

Map<String, dynamic> _$$AvatarModelImplToJson(_$AvatarModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'filename': instance.filename,
      'uploadedAt': _dateTimeToJson(instance.uploadedAt),
    };

_$InvestmentPreferencesModelImpl _$$InvestmentPreferencesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InvestmentPreferencesModelImpl(
      sectors:
          (json['sectors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      minAmount: (json['minAmount'] as num?)?.toDouble(),
      maxAmount: (json['maxAmount'] as num?)?.toDouble(),
      regions:
          (json['regions'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$InvestmentPreferencesModelImplToJson(
        _$InvestmentPreferencesModelImpl instance) =>
    <String, dynamic>{
      'sectors': instance.sectors,
      'minAmount': instance.minAmount,
      'maxAmount': instance.maxAmount,
      'regions': instance.regions,
    };

_$InvestorProfileModelImpl _$$InvestorProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InvestorProfileModelImpl(
      riskTolerance: json['riskTolerance'] as String?,
      investmentPreferences: json['investmentPreferences'] == null
          ? null
          : InvestmentPreferencesModel.fromJson(
              json['investmentPreferences'] as Map<String, dynamic>),
      totalInvested: (json['totalInvested'] as num?)?.toDouble(),
      activeInvestments: (json['activeInvestments'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$InvestorProfileModelImplToJson(
        _$InvestorProfileModelImpl instance) =>
    <String, dynamic>{
      'riskTolerance': instance.riskTolerance,
      'investmentPreferences': instance.investmentPreferences,
      'totalInvested': instance.totalInvested,
      'activeInvestments': instance.activeInvestments,
    };

_$CompanyModelImpl _$$CompanyModelImplFromJson(Map<String, dynamic> json) =>
    _$CompanyModelImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      website: json['website'] as String?,
      registrationNumber: json['registrationNumber'] as String?,
      foundedYear: (json['foundedYear'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'website': instance.website,
      'registrationNumber': instance.registrationNumber,
      'foundedYear': instance.foundedYear,
    };

_$ProjectOwnerProfileModelImpl _$$ProjectOwnerProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectOwnerProfileModelImpl(
      company: json['company'] == null
          ? null
          : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      experience: json['experience'] as String?,
      totalProjectsCreated: (json['totalProjectsCreated'] as num?)?.toInt(),
      successfulProjects: (json['successfulProjects'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProjectOwnerProfileModelImplToJson(
        _$ProjectOwnerProfileModelImpl instance) =>
    <String, dynamic>{
      'company': instance.company,
      'skills': instance.skills,
      'experience': instance.experience,
      'totalProjectsCreated': instance.totalProjectsCreated,
      'successfulProjects': instance.successfulProjects,
    };

_$EmailNotificationsModelImpl _$$EmailNotificationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailNotificationsModelImpl(
      marketing: json['marketing'] as bool?,
      updates: json['updates'] as bool?,
      security: json['security'] as bool?,
    );

Map<String, dynamic> _$$EmailNotificationsModelImplToJson(
        _$EmailNotificationsModelImpl instance) =>
    <String, dynamic>{
      'marketing': instance.marketing,
      'updates': instance.updates,
      'security': instance.security,
    };

_$PushNotificationsModelImpl _$$PushNotificationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PushNotificationsModelImpl(
      enabled: json['enabled'] as bool?,
      marketing: json['marketing'] as bool?,
      updates: json['updates'] as bool?,
    );

Map<String, dynamic> _$$PushNotificationsModelImplToJson(
        _$PushNotificationsModelImpl instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'marketing': instance.marketing,
      'updates': instance.updates,
    };

_$SmsNotificationsModelImpl _$$SmsNotificationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SmsNotificationsModelImpl(
      enabled: json['enabled'] as bool?,
      security: json['security'] as bool?,
    );

Map<String, dynamic> _$$SmsNotificationsModelImplToJson(
        _$SmsNotificationsModelImpl instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'security': instance.security,
    };

_$NotificationsModelImpl _$$NotificationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationsModelImpl(
      email: json['email'] == null
          ? null
          : EmailNotificationsModel.fromJson(
              json['email'] as Map<String, dynamic>),
      push: json['push'] == null
          ? null
          : PushNotificationsModel.fromJson(
              json['push'] as Map<String, dynamic>),
      sms: json['sms'] == null
          ? null
          : SmsNotificationsModel.fromJson(json['sms'] as Map<String, dynamic>),
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

_$PreferencesModelImpl _$$PreferencesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PreferencesModelImpl(
      language: json['language'] as String?,
      timezone: json['timezone'] as String?,
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
      'timezone': instance.timezone,
      'notifications': instance.notifications,
      'privacy': instance.privacy,
    };

_$SocialLinksModelImpl _$$SocialLinksModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialLinksModelImpl(
      linkedin: json['linkedin'] as String?,
      twitter: json['twitter'] as String?,
      facebook: json['facebook'] as String?,
      github: json['github'] as String?,
      website: json['website'] as String?,
    );

Map<String, dynamic> _$$SocialLinksModelImplToJson(
        _$SocialLinksModelImpl instance) =>
    <String, dynamic>{
      'linkedin': instance.linkedin,
      'twitter': instance.twitter,
      'facebook': instance.facebook,
      'github': instance.github,
      'website': instance.website,
    };

_$OAuthProviderModelImpl _$$OAuthProviderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OAuthProviderModelImpl(
      id: json['id'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$OAuthProviderModelImplToJson(
        _$OAuthProviderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };

_$OAuthModelImpl _$$OAuthModelImplFromJson(Map<String, dynamic> json) =>
    _$OAuthModelImpl(
      google: json['google'] == null
          ? null
          : OAuthProviderModel.fromJson(json['google'] as Map<String, dynamic>),
      facebook: json['facebook'] == null
          ? null
          : OAuthProviderModel.fromJson(
              json['facebook'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OAuthModelImplToJson(_$OAuthModelImpl instance) =>
    <String, dynamic>{
      'google': instance.google,
      'facebook': instance.facebook,
    };

_$LoginHistoryModelImpl _$$LoginHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginHistoryModelImpl(
      ip: json['ip'] as String?,
      userAgent: json['userAgent'] as String?,
      timestamp: _dateTimeFromJson(json['timestamp'] as String?),
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginHistoryModelImplToJson(
        _$LoginHistoryModelImpl instance) =>
    <String, dynamic>{
      'ip': instance.ip,
      'userAgent': instance.userAgent,
      'timestamp': _dateTimeToJson(instance.timestamp),
      'location': instance.location,
    };

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String?,
      role: json['role'] as String,
      permissions: (json['permissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      phone: json['phone'] as String?,
      avatar: json['avatar'] == null
          ? null
          : AvatarModel.fromJson(json['avatar'] as Map<String, dynamic>),
      bio: json['bio'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      investorProfile: json['investorProfile'] == null
          ? null
          : InvestorProfileModel.fromJson(
              json['investorProfile'] as Map<String, dynamic>),
      projectOwnerProfile: json['projectOwnerProfile'] == null
          ? null
          : ProjectOwnerProfileModel.fromJson(
              json['projectOwnerProfile'] as Map<String, dynamic>),
      emailVerified: json['emailVerified'] as bool?,
      emailVerificationToken: json['emailVerificationToken'] as String?,
      emailVerificationExpires:
          _dateTimeFromJson(json['emailVerificationExpires'] as String?),
      phoneVerified: json['phoneVerified'] as bool?,
      phoneVerificationToken: json['phoneVerificationToken'] as String?,
      phoneVerificationExpires:
          _dateTimeFromJson(json['phoneVerificationExpires'] as String?),
      passwordChangedAt:
          _dateTimeFromJson(json['passwordChangedAt'] as String?),
      passwordResetToken: json['passwordResetToken'] as String?,
      passwordResetExpires:
          _dateTimeFromJson(json['passwordResetExpires'] as String?),
      loginAttempts: (json['loginAttempts'] as num?)?.toInt(),
      lockUntil: _dateTimeFromJson(json['lockUntil'] as String?),
      twoFactorEnabled: json['twoFactorEnabled'] as bool?,
      twoFactorSecret: json['twoFactorSecret'] as String?,
      active: json['active'] as bool?,
      suspended: json['suspended'] as bool?,
      suspensionReason: json['suspensionReason'] as String?,
      suspendedAt: _dateTimeFromJson(json['suspendedAt'] as String?),
      suspendedBy: json['suspendedBy'] as String?,
      lastLogin: _dateTimeFromJson(json['lastLogin'] as String?),
      lastActivity: _dateTimeFromJson(json['lastActivity'] as String?),
      loginHistory: (json['loginHistory'] as List<dynamic>?)
          ?.map((e) => LoginHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      preferences: json['preferences'] == null
          ? null
          : PreferencesModel.fromJson(
              json['preferences'] as Map<String, dynamic>),
      socialLinks: json['socialLinks'] == null
          ? null
          : SocialLinksModel.fromJson(
              json['socialLinks'] as Map<String, dynamic>),
      oauth: json['oauth'] == null
          ? null
          : OAuthModel.fromJson(json['oauth'] as Map<String, dynamic>),
      termsAccepted: json['termsAccepted'] as bool?,
      termsAcceptedAt: _dateTimeFromJson(json['termsAcceptedAt'] as String?),
      privacyPolicyAccepted: json['privacyPolicyAccepted'] as bool?,
      privacyPolicyAcceptedAt:
          _dateTimeFromJson(json['privacyPolicyAcceptedAt'] as String?),
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'permissions': instance.permissions,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'bio': instance.bio,
      'location': instance.location,
      'investorProfile': instance.investorProfile,
      'projectOwnerProfile': instance.projectOwnerProfile,
      'emailVerified': instance.emailVerified,
      'emailVerificationToken': instance.emailVerificationToken,
      'emailVerificationExpires':
          _dateTimeToJson(instance.emailVerificationExpires),
      'phoneVerified': instance.phoneVerified,
      'phoneVerificationToken': instance.phoneVerificationToken,
      'phoneVerificationExpires':
          _dateTimeToJson(instance.phoneVerificationExpires),
      'passwordChangedAt': _dateTimeToJson(instance.passwordChangedAt),
      'passwordResetToken': instance.passwordResetToken,
      'passwordResetExpires': _dateTimeToJson(instance.passwordResetExpires),
      'loginAttempts': instance.loginAttempts,
      'lockUntil': _dateTimeToJson(instance.lockUntil),
      'twoFactorEnabled': instance.twoFactorEnabled,
      'twoFactorSecret': instance.twoFactorSecret,
      'active': instance.active,
      'suspended': instance.suspended,
      'suspensionReason': instance.suspensionReason,
      'suspendedAt': _dateTimeToJson(instance.suspendedAt),
      'suspendedBy': instance.suspendedBy,
      'lastLogin': _dateTimeToJson(instance.lastLogin),
      'lastActivity': _dateTimeToJson(instance.lastActivity),
      'loginHistory': instance.loginHistory,
      'preferences': instance.preferences,
      'socialLinks': instance.socialLinks,
      'oauth': instance.oauth,
      'termsAccepted': instance.termsAccepted,
      'termsAcceptedAt': _dateTimeToJson(instance.termsAcceptedAt),
      'privacyPolicyAccepted': instance.privacyPolicyAccepted,
      'privacyPolicyAcceptedAt':
          _dateTimeToJson(instance.privacyPolicyAcceptedAt),
      'createdAt': _dateTimeToJson(instance.createdAt),
      'updatedAt': _dateTimeToJson(instance.updatedAt),
    };
