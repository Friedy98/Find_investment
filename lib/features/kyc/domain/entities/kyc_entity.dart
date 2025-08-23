import 'package:equatable/equatable.dart';

class KycEntity extends Equatable {
  final String id;
  final dynamic user;
  final String status;
  final DateTime? submittedAt;
  final DateTime? approvedAt;
  final DateTime? rejectedAt;
  final String? rejectionReason;
  final List<DocumentEntity> documents;
  final VerificationEntity verification;
  final List<AuditLogEntity> auditLog;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const KycEntity({
    required this.id,
    required this.user,
    required this.status,
    this.submittedAt,
    this.approvedAt,
    this.rejectedAt,
    this.rejectionReason,
    required this.documents,
    required this.verification,
    required this.auditLog,
    this.createdAt,
    this.updatedAt,
  });

  KycEntity copyWith({
    String? id,
    dynamic user,
    String? status,
    DateTime? submittedAt,
    DateTime? approvedAt,
    DateTime? rejectedAt,
    String? rejectionReason,
    List<DocumentEntity>? documents,
    VerificationEntity? verification,
    List<AuditLogEntity>? auditLog,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return KycEntity(
      id: id ?? this.id,
      user: user ?? this.user,
      status: status ?? this.status,
      submittedAt: submittedAt ?? this.submittedAt,
      approvedAt: approvedAt ?? this.approvedAt,
      rejectedAt: rejectedAt ?? this.rejectedAt,
      rejectionReason: rejectionReason ?? this.rejectionReason,
      documents: documents ?? this.documents,
      verification: verification ?? this.verification,
      auditLog: auditLog ?? this.auditLog,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        user,
        status,
        submittedAt,
        approvedAt,
        rejectedAt,
        rejectionReason,
        documents,
        verification,
        auditLog,
        createdAt,
        updatedAt,
      ];
}

class DocumentEntity extends Equatable {
  final String category;
  final String id;
  final String type;
  final String url;
  final String? filename;
  final String? publicId;
  final DateTime? uploadedAt;
  final bool verified;

  const DocumentEntity({
    required this.id,
    required this.category,
    required this.type,
    required this.url,
    this.filename,
    this.publicId,
    this.uploadedAt,
    required this.verified,
  });

  @override
  List<Object?> get props =>
      [category, type, url, filename, publicId, uploadedAt, verified];
}

class VerificationEntity extends Equatable {
  final IdentityVerificationEntity identity;
  final BackgroundVerificationEntity background;

  const VerificationEntity({
    required this.identity,
    required this.background,
  });

  @override
  List<Object?> get props => [identity, background];
}

class IdentityVerificationEntity extends Equatable {
  final bool verified;
  final DateTime? verifiedAt;
  final dynamic verifiedBy;

  const IdentityVerificationEntity({
    required this.verified,
    this.verifiedAt,
    this.verifiedBy,
  });

  @override
  List<Object?> get props => [verified, verifiedAt, verifiedBy];
}

class BackgroundVerificationEntity extends Equatable {
  final bool verified;
  final DateTime? verifiedAt;
  final dynamic verifiedBy;
  final String? report;

  const BackgroundVerificationEntity({
    required this.verified,
    this.verifiedAt,
    this.verifiedBy,
    this.report,
  });

  @override
  List<Object?> get props => [verified, verifiedAt, verifiedBy, report];
}

class AuditLogEntity extends Equatable {
  final String action;
  final dynamic performedBy;
  final DateTime? timestamp;
  final dynamic details;

  const AuditLogEntity({
    required this.action,
    this.performedBy,
    this.timestamp,
    this.details,
  });

  @override
  List<Object?> get props => [action, performedBy, timestamp, details];
}
