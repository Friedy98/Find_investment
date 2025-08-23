import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';

part 'kyc_model.freezed.dart';
part 'kyc_model.g.dart';

@freezed
class KycModel with _$KycModel {
  const KycModel._();

  factory KycModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
    required dynamic user,
    @JsonKey(name: 'status', defaultValue: 'not_submitted')
    required String status,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? submittedAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? approvedAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? rejectedAt,
    String? rejectionReason,
    @JsonKey(name: 'documents', defaultValue: [])
    required List<DocumentModel> documents,
    @JsonKey(
        name: 'verification',
        fromJson: _verificationFromJson,
        toJson: _verificationToJson)
    required VerificationModel verification,
    @JsonKey(name: 'auditLog', defaultValue: [])
    required List<AuditLogModel> auditLog,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? updatedAt,
  }) = _KycModel;

  factory KycModel.fromJson(Map<String, dynamic> json) =>
      _$KycModelFromJson(json);
}

@freezed
class DocumentModel with _$DocumentModel {
  const factory DocumentModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'category', defaultValue: 'kyc') required String category,
    required String type,
    required String url,
    String? filename,
    @JsonKey(name: 'public_id') String? publicId,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? uploadedAt,
    @JsonKey(defaultValue: false) required bool verified,
  }) = _DocumentModel;

  factory DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentModelFromJson(json);
}

@freezed
class VerificationModel with _$VerificationModel {
  const factory VerificationModel({
    @JsonKey(
        name: 'identity',
        fromJson: _identityVerificationFromJson,
        toJson: _identityVerificationToJson)
    required IdentityVerificationModel identity,
    @JsonKey(
        name: 'background',
        fromJson: _backgroundVerificationFromJson,
        toJson: _backgroundVerificationToJson)
    required BackgroundVerificationModel background,
  }) = _VerificationModel;

  factory VerificationModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationModelFromJson(json);
}

@freezed
class IdentityVerificationModel with _$IdentityVerificationModel {
  const factory IdentityVerificationModel({
    @JsonKey(defaultValue: false) required bool verified,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? verifiedAt,
    @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic verifiedBy,
  }) = _IdentityVerificationModel;

  factory IdentityVerificationModel.fromJson(Map<String, dynamic> json) =>
      _$IdentityVerificationModelFromJson(json);
}

@freezed
class BackgroundVerificationModel with _$BackgroundVerificationModel {
  const factory BackgroundVerificationModel({
    @JsonKey(defaultValue: false) required bool verified,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? verifiedAt,
    @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic verifiedBy,
    String? report,
  }) = _BackgroundVerificationModel;

  factory BackgroundVerificationModel.fromJson(Map<String, dynamic> json) =>
      _$BackgroundVerificationModelFromJson(json);
}

@freezed
class AuditLogModel with _$AuditLogModel {
  const factory AuditLogModel({
    required String action,
    @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic performedBy,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? timestamp,
    @JsonKey(name: 'details') dynamic details,
  }) = _AuditLogModel;

  factory AuditLogModel.fromJson(Map<String, dynamic> json) =>
      _$AuditLogModelFromJson(json);
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

VerificationModel _verificationFromJson(Map<String, dynamic>? json) {
  if (json == null)
    return VerificationModel(
      identity: IdentityVerificationModel(verified: false),
      background: BackgroundVerificationModel(verified: false),
    );
  return VerificationModel.fromJson(json);
}

Map<String, dynamic> _verificationToJson(VerificationModel verification) =>
    verification.toJson();

IdentityVerificationModel _identityVerificationFromJson(
    Map<String, dynamic>? json) {
  if (json == null) return IdentityVerificationModel(verified: false);
  return IdentityVerificationModel.fromJson(json);
}

Map<String, dynamic> _identityVerificationToJson(
        IdentityVerificationModel identity) =>
    identity.toJson();

BackgroundVerificationModel _backgroundVerificationFromJson(
    Map<String, dynamic>? json) {
  if (json == null) return BackgroundVerificationModel(verified: false);
  return BackgroundVerificationModel.fromJson(json);
}

Map<String, dynamic> _backgroundVerificationToJson(
        BackgroundVerificationModel background) =>
    background.toJson();
