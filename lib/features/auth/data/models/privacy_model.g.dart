// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
