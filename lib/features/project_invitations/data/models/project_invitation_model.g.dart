// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_invitation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectInvitationModelImpl _$$ProjectInvitationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectInvitationModelImpl(
      id: json['_id'] as String,
      project: _projectFromJson(json['project']),
      user: _userFromJson(json['user']),
      email: json['email'] as String?,
      role: json['role'] as String,
      permissions: PermissionsaModel.fromJson(
          json['permissions'] as Map<String, dynamic>),
      invitedBy: _userFromJson(json['invitedBy']),
      invitedAt: _dateTimeFromJson(json['invitedAt'] as String?),
      status: json['status'] as String,
      message: json['message'] as String?,
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      motivation: json['motivation'] as String?,
      respondedAt: _dateTimeFromJson(json['respondedAt'] as String?),
      expiresAt: _dateTimeFromJson(json['expiresAt'] as String?),
      invitationToken: json['invitationToken'] as String?,
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$ProjectInvitationModelImplToJson(
        _$ProjectInvitationModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'project': _projectToJson(instance.project),
      'user': _userToJson(instance.user),
      'email': instance.email,
      'role': instance.role,
      'permissions': instance.permissions,
      'invitedBy': _userToJson(instance.invitedBy),
      'invitedAt': _dateTimeToJson(instance.invitedAt),
      'status': instance.status,
      'message': instance.message,
      'skills': instance.skills,
      'motivation': instance.motivation,
      'respondedAt': _dateTimeToJson(instance.respondedAt),
      'expiresAt': _dateTimeToJson(instance.expiresAt),
      'invitationToken': instance.invitationToken,
      'createdAt': _dateTimeToJson(instance.createdAt),
      'updatedAt': _dateTimeToJson(instance.updatedAt),
    };

_$PermissionsaModelImpl _$$PermissionsaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PermissionsaModelImpl(
      canEdit: json['canEdit'] as bool,
      canManageTeam: json['canManageTeam'] as bool,
      canViewFinancials: json['canViewFinancials'] as bool,
      canPostUpdates: json['canPostUpdates'] as bool,
    );

Map<String, dynamic> _$$PermissionsaModelImplToJson(
        _$PermissionsaModelImpl instance) =>
    <String, dynamic>{
      'canEdit': instance.canEdit,
      'canManageTeam': instance.canManageTeam,
      'canViewFinancials': instance.canViewFinancials,
      'canPostUpdates': instance.canPostUpdates,
    };
