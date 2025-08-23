// lib/features/project_doc/data/models/project_document_model.dart
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_document_model.freezed.dart';
part 'project_document_model.g.dart';

@freezed
class ProjectDocumentModel with _$ProjectDocumentModel {
  const ProjectDocumentModel._();

  factory ProjectDocumentModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(
        name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
    required dynamic project, // null, String, or ProjectModel
    required String name,
    String? description,
    required String url,
    required String type,
    String? category,
    int? size,
    String? rejectionReason,
    String? mimeType,
    @JsonKey(name: 'uploadedBy', fromJson: _userFromJson, toJson: _userToJson)
    required dynamic uploadedBy, // null, String, or UserModel
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? uploadedAt,
    required String visibility,
    required bool isApproved,
    required bool isRejected,
    @JsonKey(name: 'approvedBy', fromJson: _userFromJson, toJson: _userToJson)
    dynamic approvedBy, // null, String, or UserModel
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? approvedAt,
    @JsonKey(name: 'rejectedBy', fromJson: _userFromJson, toJson: _userToJson)
    dynamic rejectedBy, // null, String, or UserModel
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? rejectedAt,
    required int version,
    @JsonKey(
        name: 'previousVersion',
        fromJson: _previousVersionFromJson,
        toJson: _previousVersionToJson)
    dynamic previousVersion, // null, String, or ProjectDocumentModel
    required int downloadCount,
    DocumentMetadataModel? metadata,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? updatedAt,
    @JsonKey(name: 'totalDownloads', fromJson: _intFromJson)
    int? totalDownloads,
    @JsonKey(name: 'isLatestVersion', fromJson: _boolFromJson)
    bool? isLatestVersion,
  }) = _ProjectDocumentModel;

  factory ProjectDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectDocumentModelFromJson(json);
}

@freezed
class DocumentMetadataModel with _$DocumentMetadataModel {
  factory DocumentMetadataModel({
    String? checksum,
    String? originalName,
    String? encoding,
    String? cloudinaryPublicId,
  }) = _DocumentMetadataModel;

  factory DocumentMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentMetadataModelFromJson(json);
}

// JSON Converters
DateTime? _dateTimeFromJson(String? timestamp) =>
    timestamp != null ? DateTime.parse(timestamp) : null;

String? _dateTimeToJson(DateTime? dateTime) => dateTime?.toIso8601String();

int? _intFromJson(dynamic value) => value is int ? value : null;

bool? _boolFromJson(dynamic value) => value is bool ? value : null;

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

dynamic _previousVersionFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) return ProjectDocumentModel.fromJson(json);
  throw Exception('Invalid previousVersion format');
}

dynamic _previousVersionToJson(dynamic previousVersion) {
  if (previousVersion == null) return null;
  if (previousVersion is String) return previousVersion;
  if (previousVersion is ProjectDocumentModel) return previousVersion.toJson();
  throw Exception('Invalid previousVersion type');
}
