import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';

part 'project_report_model.freezed.dart';
part 'project_report_model.g.dart';

@freezed
class ProjectReportModel with _$ProjectReportModel {
  const ProjectReportModel._();

  factory ProjectReportModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(
        name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
    required dynamic project,
    required String title,
    required String content,
    required String type,
    @JsonKey(name: 'period', fromJson: _periodFromJson, toJson: _periodToJson)
    required PeriodModel period,
    @JsonKey(
        name: 'metrics', fromJson: _metricsFromJson, toJson: _metricsToJson)
    required MetricsModel metrics,
    @JsonKey(name: 'attachments', defaultValue: [])
    required List<AttachmentModel> attachments,
    @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
    required dynamic createdBy,
    @JsonKey(name: 'status', defaultValue: 'draft') required String status,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? updatedAt,
  }) = _ProjectReportModel;

  factory ProjectReportModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectReportModelFromJson(json);
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

@freezed
class PeriodModel with _$PeriodModel {
  const factory PeriodModel({
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime? start,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime? end,
  }) = _PeriodModel;

  factory PeriodModel.fromJson(Map<String, dynamic> json) =>
      _$PeriodModelFromJson(json);
}

@freezed
class MetricsModel with _$MetricsModel {
  const factory MetricsModel({
    @JsonKey(name: 'revenue', defaultValue: null) double? revenue,
    @JsonKey(name: 'expenses', defaultValue: null) double? expenses,
    @JsonKey(name: 'impactMetrics', defaultValue: [])
    required List<ImpactMetricModel> impactMetrics,
  }) = _MetricsModel;

  factory MetricsModel.fromJson(Map<String, dynamic> json) =>
      _$MetricsModelFromJson(json);
}

@freezed
class ImpactMetricModel with _$ImpactMetricModel {
  const factory ImpactMetricModel({
    required String name,
    required double value,
    required String unit,
  }) = _ImpactMetricModel;

  factory ImpactMetricModel.fromJson(Map<String, dynamic> json) =>
      _$ImpactMetricModelFromJson(json);
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

PeriodModel _periodFromJson(Map<String, dynamic>? json) {
  if (json == null)
    return PeriodModel(start: DateTime.now(), end: DateTime.now());
  return PeriodModel.fromJson(json);
}

Map<String, dynamic> _periodToJson(PeriodModel period) {
  return period.toJson();
}

MetricsModel _metricsFromJson(Map<String, dynamic>? json) {
  if (json == null)
    return MetricsModel(revenue: null, expenses: null, impactMetrics: []);
  return MetricsModel.fromJson(json);
}

Map<String, dynamic> _metricsToJson(MetricsModel metrics) {
  return metrics.toJson();
}

DateTime? _dateTimeFromJson(String? timestamp) =>
    timestamp != null ? DateTime.parse(timestamp) : null;

String? _dateTimeToJson(DateTime? dateTime) => dateTime?.toIso8601String();
