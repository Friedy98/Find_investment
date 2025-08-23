// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      dateOfBirth: _dateTimeFromJson(json['dateOfBirth'] as String?),
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'bio': instance.bio,
      'location': instance.location,
      'website': instance.website,
      'socialLinks': instance.socialLinks,
      'dateOfBirth': _dateTimeToJson(instance.dateOfBirth),
      'gender': instance.gender,
    };
