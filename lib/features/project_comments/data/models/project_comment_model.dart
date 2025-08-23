import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';

part 'project_comment_model.freezed.dart';
part 'project_comment_model.g.dart';

@freezed
class ProjectCommentModel with _$ProjectCommentModel {
  const ProjectCommentModel._();

  factory ProjectCommentModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
    required dynamic project,
    @JsonKey(name: 'author', fromJson: _userFromJson, toJson: _userToJson)
    required dynamic author,
    required String content,
    @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
    dynamic parent,
    @JsonKey(name: 'isModerated', defaultValue: false) required bool isModerated,
    @JsonKey(name: 'isApproved', defaultValue: true) required bool isApproved,
    @JsonKey(name: 'moderatedBy', fromJson: _userFromJson, toJson: _userToJson)
    dynamic moderatedBy,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? moderatedAt,
    String? moderationReason,
    required MetricsModel metrics,
    @JsonKey(name: 'flags', defaultValue: [])
    required List<FlagModel> flags,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? updatedAt,
  }) = _ProjectCommentModel;

  factory ProjectCommentModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectCommentModelFromJson(json);
}

@freezed
class FlagModel with _$FlagModel {
  const factory FlagModel({
    @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
    required dynamic user,
    required String reason,
    String? description,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? flaggedAt,
  }) = _FlagModel;

  factory FlagModel.fromJson(Map<String, dynamic> json) =>
      _$FlagModelFromJson(json);
}

@freezed
class MetricsModel with _$MetricsModel {
  const factory MetricsModel({
    required double likes,
    required double replies,
  }) = _MetricsModel;

  factory MetricsModel.fromJson(Map<String, dynamic> json) =>
      _$MetricsModelFromJson(json);
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

dynamic _parentFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) return ProjectCommentModel.fromJson(json);
  throw Exception('Invalid parent format');
}

dynamic _parentToJson(dynamic parent) {
  if (parent == null) return null;
  if (parent is String) return parent;
  if (parent is ProjectCommentModel) return parent.toJson();
  throw Exception('Invalid parent type');
}

DateTime? _dateTimeFromJson(String? timestamp) =>
    timestamp != null ? DateTime.parse(timestamp) : null;

String? _dateTimeToJson(DateTime? dateTime) => dateTime?.toIso8601String();