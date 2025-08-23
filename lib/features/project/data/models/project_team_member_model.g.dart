// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_team_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectTeamMemberModelImpl _$$ProjectTeamMemberModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectTeamMemberModelImpl(
      user: _userFromJson(json['user']),
      role: json['role'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      joinedAt: _dateTimeFromJson(json['joinedAt'] as String?),
    );

Map<String, dynamic> _$$ProjectTeamMemberModelImplToJson(
        _$ProjectTeamMemberModelImpl instance) =>
    <String, dynamic>{
      'user': _userToJson(instance.user),
      'role': instance.role,
      'permissions': instance.permissions,
      'joinedAt': _dateTimeToJson(instance.joinedAt),
    };
