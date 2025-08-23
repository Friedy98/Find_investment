// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
