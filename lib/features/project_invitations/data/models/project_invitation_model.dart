import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';

part 'project_invitation_model.freezed.dart';
part 'project_invitation_model.g.dart';

@freezed
class ProjectInvitationModel with _$ProjectInvitationModel {
  const ProjectInvitationModel._();

  factory ProjectInvitationModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(
        name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
    required dynamic project,
    @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
    dynamic user,
    String? email,
    required String role,
    required PermissionsaModel permissions,
    @JsonKey(name: 'invitedBy', fromJson: _userFromJson, toJson: _userToJson)
    required dynamic invitedBy,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? invitedAt,
    required String status,
    String? message,
    @JsonKey(name: 'skills', defaultValue: []) required List<String> skills,
    String? motivation,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? respondedAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? expiresAt,
    String? invitationToken,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? updatedAt,
  }) = _ProjectInvitationModel;

  factory ProjectInvitationModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectInvitationModelFromJson(json);
}

@freezed
class PermissionsaModel with _$PermissionsaModel {
  factory PermissionsaModel({
    required bool canEdit,
    required bool canManageTeam,
    required bool canViewFinancials,
    required bool canPostUpdates,
  }) = _PermissionsaModel;

  factory PermissionsaModel.fromJson(Map<String, dynamic> json) =>
      _$PermissionsaModelFromJson(json);
}

dynamic _projectFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) return ProjectModel.fromJson(json);
  throw Exception('Invalid project format');
}

dynamic _projectToJson(dynamic project) {
  if (project == null) return null;
  if (project is String) return project;
  if (project is ProjectModel) return project.toJson();
  throw Exception('Invalid project type');
}

dynamic _userFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) return UserModel.fromJson(json);
  throw Exception('Invalid user format');
}

dynamic _userToJson(dynamic user) {
  if (user == null) return null;
  if (user is String) return user;
  if (user is UserModel) return user.toJson();
  throw Exception('Invalid user type');
}

DateTime? _dateTimeFromJson(String? timestamp) =>
    timestamp != null ? DateTime.parse(timestamp) : null;

String? _dateTimeToJson(DateTime? dateTime) => dateTime?.toIso8601String();
