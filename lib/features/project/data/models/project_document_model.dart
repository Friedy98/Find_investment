import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';

part 'project_document_model.freezed.dart';
part 'project_document_model.g.dart';

@freezed
class ProjectDocumentModel with _$ProjectDocumentModel {
  factory ProjectDocumentModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    String? description,
    required String url,
    @Default('other') String type,
    String? category,
    int? size,
    String? mimeType,
    @JsonKey(fromJson: _userFromJson, toJson: _userToJson) required dynamic uploadedBy,
    @Default('team') String visibility,
    @Default(false) bool isApproved,
    @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic approvedBy,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? approvedAt,
    @Default(1) int version,
    String? previousVersion,
    @Default(0) int downloadCount,
    Map<String, dynamic>? metadata,
  }) = _ProjectDocumentModel;

  factory ProjectDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectDocumentModelFromJson(json);
}

DateTime? _dateTimeFromJson(String? timestamp) =>
    timestamp != null ? DateTime.parse(timestamp) : null;

String? _dateTimeToJson(DateTime? dateTime) => dateTime?.toIso8601String();

// Conversion pour user (owner, archivedBy, etc.)
dynamic _userFromJson(dynamic json) {
  if (json is String) return json;
  if (json is Map<String, dynamic>) return UserModel.fromJson(json);
  throw Exception('Invalid user format');
}

dynamic _userToJson(dynamic user) {
  if (user is UserModel) return user.toJson();
  return user;
}