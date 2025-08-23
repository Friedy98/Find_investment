// Path: lib/features/project_doc/data/extensions/project_document_extensions.dart
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';
import 'package:find_invest_mobile/features/project_doc/data/models/project_document_model.dart';
import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';
import 'package:find_invest_mobile/features/project/data/extensions/project_extensions.dart';
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';

extension ProjectDocumentModelExtension on ProjectDocumentModel {
  ProjectDocumentEntity toEntity() => ProjectDocumentEntity(
        id: id,
        project: project is String
            ? project
            : project is ProjectModel
                ? (project as ProjectModel).toEntity()
                : null,
        name: name,
        description: description,
        url: url,
        type: type,
        category: category,
        size: size,
        rejectionReason: rejectionReason,
        mimeType: mimeType,
        uploadedBy: _convertUser(uploadedBy),
        uploadedAt: uploadedAt,
        visibility: visibility,
        isApproved: isApproved,
        isRejected: isRejected,
        approvedBy: _convertUser(approvedBy),
        approvedAt: approvedAt,
        rejectedBy: _convertUser(rejectedBy),
        rejectedAt: rejectedAt,
        version: version,
        previousVersion: previousVersion is String
            ? previousVersion
            : previousVersion is ProjectDocumentModel
                ? (previousVersion as ProjectDocumentModel).toEntity()
                : null,
        downloadCount: downloadCount,
        metadata: metadata?.toEntity(),
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

extension DocumentMetadataModelExtension on DocumentMetadataModel {
  DocumentMetadataEntity toEntity() => DocumentMetadataEntity(
        checksum: checksum,
        originalName: originalName,
        encoding: encoding,
        cloudinaryPublicId: cloudinaryPublicId,
      );
}

