// lib/features/project_doc/domain/entities/project_document_entity.dart
import 'package:equatable/equatable.dart';

class ProjectDocumentEntity extends Equatable {
  final String? id;
  final dynamic project; // null, String, or ProjectEntity
  final String name;
  final String? description;
  final String url;
  final String type;
  final String? category;
  final int? size;
  final String? rejectionReason;
  final String? mimeType;
  final dynamic uploadedBy; // null, String, or UserEntity
  final DateTime? uploadedAt;
  final String visibility;
  final bool isApproved;
  final bool isRejected;
  final dynamic approvedBy; // null, String, or UserEntity
  final DateTime? approvedAt;
  final dynamic rejectedBy; // null, String, or UserEntity
  final DateTime? rejectedAt;
  final int version;
  final dynamic previousVersion; // null, String, or ProjectDocumentEntity
  final int downloadCount;
  final DocumentMetadataEntity? metadata;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? totalDownloads; // Virtual
  final bool? isLatestVersion; // Virtual

  const ProjectDocumentEntity({
    this.id,
    required this.project,
    required this.name,
    this.description,
    required this.url,
    required this.type,
    this.category,
    this.size,
    this.rejectionReason,
    this.mimeType,
    required this.uploadedBy,
    required this.uploadedAt,
    required this.visibility,
    required this.isApproved,
    required this.isRejected,
    this.approvedBy,
    this.approvedAt,
    this.rejectedBy,
    this.rejectedAt,
    required this.version,
    this.previousVersion,
    required this.downloadCount,
    this.metadata,
    this.createdAt,
    this.updatedAt,
    this.totalDownloads,
    this.isLatestVersion,
  });

  @override
  List<Object?> get props => [
        id,
        project,
        name,
        description,
        url,
        type,
        category,
        size,
        rejectionReason,
        mimeType,
        uploadedBy,
        uploadedAt,
        visibility,
        isApproved,
        isRejected,
        approvedBy,
        approvedAt,
        rejectedBy,
        rejectedAt,
        version,
        previousVersion,
        downloadCount,
        metadata,
        createdAt,
        updatedAt,
        totalDownloads,
        isLatestVersion,
      ];

  ProjectDocumentEntity copyWith({
    String? id,
    dynamic project,
    String? name,
    String? description,
    String? url,
    String? type,
    String? category,
    int? size,
    String? rejectionReason,
    String? mimeType,
    dynamic uploadedBy,
    DateTime? uploadedAt,
    String? visibility,
    bool? isApproved,
    bool? isRejected,
    dynamic approvedBy,
    DateTime? approvedAt,
    dynamic rejectedBy,
    DateTime? rejectedAt,
    int? version,
    dynamic previousVersion,
    int? downloadCount,
    DocumentMetadataEntity? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? totalDownloads,
    bool? isLatestVersion,
  }) {
    return ProjectDocumentEntity(
      id: id ?? this.id,
      project: project ?? this.project,
      name: name ?? this.name,
      description: description ?? this.description,
      url: url ?? this.url,
      type: type ?? this.type,
      category: category ?? this.category,
      size: size ?? this.size,
      rejectionReason: rejectionReason ?? this.rejectionReason,
      mimeType: mimeType ?? this.mimeType,
      uploadedBy: uploadedBy ?? this.uploadedBy,
      uploadedAt: uploadedAt ?? this.uploadedAt,
      visibility: visibility ?? this.visibility,
      isApproved: isApproved ?? this.isApproved,
      isRejected: isRejected ?? this.isRejected,
      approvedBy: approvedBy ?? this.approvedBy,
      approvedAt: approvedAt ?? this.approvedAt,
      rejectedBy: rejectedBy ?? this.rejectedBy,
      rejectedAt: rejectedAt ?? this.rejectedAt,
      version: version ?? this.version,
      previousVersion: previousVersion ?? this.previousVersion,
      downloadCount: downloadCount ?? this.downloadCount,
      metadata: metadata ?? this.metadata,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      totalDownloads: totalDownloads ?? this.totalDownloads,
      isLatestVersion: isLatestVersion ?? this.isLatestVersion,
    );
  }
}

class DocumentMetadataEntity extends Equatable {
  final String? checksum;
  final String? originalName;
  final String? encoding;
  final String? cloudinaryPublicId;

  const DocumentMetadataEntity({
    this.checksum,
    this.originalName,
    this.encoding,
    this.cloudinaryPublicId,
  });

  @override
  List<Object?> get props =>
      [checksum, originalName, encoding, cloudinaryPublicId];
}
