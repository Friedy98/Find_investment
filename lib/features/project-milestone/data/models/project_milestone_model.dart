import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';

part 'project_milestone_model.freezed.dart';
part 'project_milestone_model.g.dart';

@freezed
class ProjectMilestoneModel with _$ProjectMilestoneModel {
  const ProjectMilestoneModel._();

  factory ProjectMilestoneModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(
        name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
    required dynamic project, // null, String, or ProjectModel
    required String title,
    String? description,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime? dueDate,
    required String status,
    required int progress,
    @JsonKey(name: 'deliverables')
    @Default([])
    List<DeliverableModel>? deliverables,
    @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
    dynamic createdBy, // null, String, or UserModel
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? completedDate,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? updatedAt,
    @JsonKey(name: 'daysUntilDue') int? daysUntilDue,
  }) = _ProjectMilestoneModel;

  factory ProjectMilestoneModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectMilestoneModelFromJson(json);
}

@freezed
class DeliverableModel with _$DeliverableModel {
  const factory DeliverableModel({
    required String name,
    String? url,
    String? description,
    String? cloudinaryPublicId,
  }) = _DeliverableModel;

  factory DeliverableModel.fromJson(Map<String, dynamic> json) =>
      _$DeliverableModelFromJson(json);
}

@freezed
class ProgressStatsModel with _$ProgressStatsModel {
  const factory ProgressStatsModel({
    @JsonKey(name: 'averageProgress', defaultValue: 0.0) required double averageProgress,
    @JsonKey(name: 'totalMilestones', defaultValue: 0) required int totalMilestones,
  }) = _ProgressStatsModel;

  factory ProgressStatsModel.fromJson(Map<String, dynamic> json) => _$ProgressStatsModelFromJson(json);
}

@freezed
class StatusStatsModel with _$StatusStatsModel {
  const factory StatusStatsModel({
    @JsonKey(name: 'status', defaultValue: '') required String status,
    @JsonKey(name: 'count', defaultValue: 0) required int count,
  }) = _StatusStatsModel;

  factory StatusStatsModel.fromJson(Map<String, dynamic> json) => _$StatusStatsModelFromJson(json);
}

dynamic _projectFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) {
    // Assume a simple ProjectModel with id for now
    return ProjectModel.fromJson(json);
  }
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
