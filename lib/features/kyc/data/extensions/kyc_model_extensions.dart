import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/kyc/data/models/kyc_model.dart';
import 'package:find_invest_mobile/features/kyc/domain/entities/kyc_entity.dart';
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';

extension KycModelExtensions on KycModel {
  KycEntity toEntity() => KycEntity(
        id: id,
        user: _convertUser(user),
        status: status,
        submittedAt: submittedAt,
        approvedAt: approvedAt,
        rejectedAt: rejectedAt,
        rejectionReason: rejectionReason,
        documents: documents.map((doc) => doc.toEntity()).toList(),
        verification: verification.toEntity(),
        auditLog: auditLog.map((log) => log.toEntity()).toList(),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }
}

extension DocumentModelExtensions on DocumentModel {
  DocumentEntity toEntity() => DocumentEntity(
        id: id,
        category: category,
        type: type,
        url: url,
        filename: filename,
        publicId: publicId,
        uploadedAt: uploadedAt,
        verified: verified,
      );
}

extension VerificationModelExtensions on VerificationModel {
  VerificationEntity toEntity() => VerificationEntity(
        identity: identity.toEntity(),
        background: background.toEntity(),
      );
}

extension IdentityVerificationModelExtensions on IdentityVerificationModel {
  IdentityVerificationEntity toEntity() => IdentityVerificationEntity(
        verified: verified,
        verifiedAt: verifiedAt,
        verifiedBy: _convertUser(verifiedBy),
      );
  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }
}

extension BackgroundVerificationModelExtensions on BackgroundVerificationModel {
  BackgroundVerificationEntity toEntity() => BackgroundVerificationEntity(
        verified: verified,
        verifiedAt: verifiedAt,
        verifiedBy: _convertUser(verifiedBy),
        report: report,
      );
  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }
}

extension AuditLogModelExtensions on AuditLogModel {
  AuditLogEntity toEntity() => AuditLogEntity(
        action: action,
        performedBy: _convertUser(performedBy),
        timestamp: timestamp,
        details: details,
      );
  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }
}
