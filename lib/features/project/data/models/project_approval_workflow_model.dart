import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';

part 'project_approval_workflow_model.freezed.dart';
part 'project_approval_workflow_model.g.dart';

@freezed
class ProjectApprovalWorkflowModel with _$ProjectApprovalWorkflowModel {
  factory ProjectApprovalWorkflowModel({
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? submittedAt,
    @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic reviewedBy,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? reviewedAt,
    @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic approvedBy,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? approvedAt,
    String? rejectionReason,
    String? reviewComments,
  }) = _ProjectApprovalWorkflowModel;

  factory ProjectApprovalWorkflowModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectApprovalWorkflowModelFromJson(json);
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
