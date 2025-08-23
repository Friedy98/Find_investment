// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_approval_workflow_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectApprovalWorkflowModelImpl _$$ProjectApprovalWorkflowModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectApprovalWorkflowModelImpl(
      submittedAt: _dateTimeFromJson(json['submittedAt'] as String?),
      reviewedBy: _userFromJson(json['reviewedBy']),
      reviewedAt: _dateTimeFromJson(json['reviewedAt'] as String?),
      approvedBy: _userFromJson(json['approvedBy']),
      approvedAt: _dateTimeFromJson(json['approvedAt'] as String?),
      rejectionReason: json['rejectionReason'] as String?,
      reviewComments: json['reviewComments'] as String?,
    );

Map<String, dynamic> _$$ProjectApprovalWorkflowModelImplToJson(
        _$ProjectApprovalWorkflowModelImpl instance) =>
    <String, dynamic>{
      'submittedAt': _dateTimeToJson(instance.submittedAt),
      'reviewedBy': _userToJson(instance.reviewedBy),
      'reviewedAt': _dateTimeToJson(instance.reviewedAt),
      'approvedBy': _userToJson(instance.approvedBy),
      'approvedAt': _dateTimeToJson(instance.approvedAt),
      'rejectionReason': instance.rejectionReason,
      'reviewComments': instance.reviewComments,
    };
