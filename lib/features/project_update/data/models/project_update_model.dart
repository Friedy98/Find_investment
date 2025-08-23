import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';

part 'project_update_model.freezed.dart';
part 'project_update_model.g.dart';

@freezed
class ProjectUpdateModel with _$ProjectUpdateModel {
  const ProjectUpdateModel._();

  factory ProjectUpdateModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(
        name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
    required dynamic project,
    required String title,
    required String content,
    @JsonKey(name: 'type', defaultValue: 'general') required String type,
    @JsonKey(name: 'attachments', defaultValue: [])
    required List<AttachmentModel> attachments,
    @JsonKey(name: 'publishedBy', fromJson: _userFromJson, toJson: _userToJson)
    required dynamic publishedBy,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? publishedAt,
    @JsonKey(name: 'isPublic', defaultValue: true) required bool isPublic,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? updatedAt,
  }) = _ProjectUpdateModel;

  factory ProjectUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectUpdateModelFromJson(json);
}

@freezed
class AttachmentModel with _$AttachmentModel {
  const factory AttachmentModel({
    String? url,
    String? type,
    String? description,
    String? cloudinaryPublicId,
  }) = _AttachmentModel;

  factory AttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$AttachmentModelFromJson(json);
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
