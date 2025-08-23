// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycModelImpl _$$KycModelImplFromJson(Map<String, dynamic> json) =>
    _$KycModelImpl(
      id: json['_id'] as String,
      user: _userFromJson(json['user']),
      status: json['status'] as String? ?? 'not_submitted',
      submittedAt: _dateTimeFromJson(json['submittedAt'] as String?),
      approvedAt: _dateTimeFromJson(json['approvedAt'] as String?),
      rejectedAt: _dateTimeFromJson(json['rejectedAt'] as String?),
      rejectionReason: json['rejectionReason'] as String?,
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => DocumentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      verification:
          _verificationFromJson(json['verification'] as Map<String, dynamic>?),
      auditLog: (json['auditLog'] as List<dynamic>?)
              ?.map((e) => AuditLogModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$KycModelImplToJson(_$KycModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user': _userToJson(instance.user),
      'status': instance.status,
      'submittedAt': _dateTimeToJson(instance.submittedAt),
      'approvedAt': _dateTimeToJson(instance.approvedAt),
      'rejectedAt': _dateTimeToJson(instance.rejectedAt),
      'rejectionReason': instance.rejectionReason,
      'documents': instance.documents,
      'verification': _verificationToJson(instance.verification),
      'auditLog': instance.auditLog,
      'createdAt': _dateTimeToJson(instance.createdAt),
      'updatedAt': _dateTimeToJson(instance.updatedAt),
    };

_$DocumentModelImpl _$$DocumentModelImplFromJson(Map<String, dynamic> json) =>
    _$DocumentModelImpl(
      id: json['_id'] as String,
      category: json['category'] as String? ?? 'kyc',
      type: json['type'] as String,
      url: json['url'] as String,
      filename: json['filename'] as String?,
      publicId: json['public_id'] as String?,
      uploadedAt: _dateTimeFromJson(json['uploadedAt'] as String?),
      verified: json['verified'] as bool? ?? false,
    );

Map<String, dynamic> _$$DocumentModelImplToJson(_$DocumentModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'category': instance.category,
      'type': instance.type,
      'url': instance.url,
      'filename': instance.filename,
      'public_id': instance.publicId,
      'uploadedAt': _dateTimeToJson(instance.uploadedAt),
      'verified': instance.verified,
    };

_$VerificationModelImpl _$$VerificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationModelImpl(
      identity: _identityVerificationFromJson(
          json['identity'] as Map<String, dynamic>?),
      background: _backgroundVerificationFromJson(
          json['background'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$VerificationModelImplToJson(
        _$VerificationModelImpl instance) =>
    <String, dynamic>{
      'identity': _identityVerificationToJson(instance.identity),
      'background': _backgroundVerificationToJson(instance.background),
    };

_$IdentityVerificationModelImpl _$$IdentityVerificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IdentityVerificationModelImpl(
      verified: json['verified'] as bool? ?? false,
      verifiedAt: _dateTimeFromJson(json['verifiedAt'] as String?),
      verifiedBy: _userFromJson(json['verifiedBy']),
    );

Map<String, dynamic> _$$IdentityVerificationModelImplToJson(
        _$IdentityVerificationModelImpl instance) =>
    <String, dynamic>{
      'verified': instance.verified,
      'verifiedAt': _dateTimeToJson(instance.verifiedAt),
      'verifiedBy': _userToJson(instance.verifiedBy),
    };

_$BackgroundVerificationModelImpl _$$BackgroundVerificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BackgroundVerificationModelImpl(
      verified: json['verified'] as bool? ?? false,
      verifiedAt: _dateTimeFromJson(json['verifiedAt'] as String?),
      verifiedBy: _userFromJson(json['verifiedBy']),
      report: json['report'] as String?,
    );

Map<String, dynamic> _$$BackgroundVerificationModelImplToJson(
        _$BackgroundVerificationModelImpl instance) =>
    <String, dynamic>{
      'verified': instance.verified,
      'verifiedAt': _dateTimeToJson(instance.verifiedAt),
      'verifiedBy': _userToJson(instance.verifiedBy),
      'report': instance.report,
    };

_$AuditLogModelImpl _$$AuditLogModelImplFromJson(Map<String, dynamic> json) =>
    _$AuditLogModelImpl(
      action: json['action'] as String,
      performedBy: _userFromJson(json['performedBy']),
      timestamp: _dateTimeFromJson(json['timestamp'] as String?),
      details: json['details'],
    );

Map<String, dynamic> _$$AuditLogModelImplToJson(_$AuditLogModelImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'performedBy': _userToJson(instance.performedBy),
      'timestamp': _dateTimeToJson(instance.timestamp),
      'details': instance.details,
    };
