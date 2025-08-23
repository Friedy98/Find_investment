// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDocumentModelImpl _$$ProjectDocumentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectDocumentModelImpl(
      id: json['_id'] as String?,
      project: _projectFromJson(json['project']),
      name: json['name'] as String,
      description: json['description'] as String?,
      url: json['url'] as String,
      type: json['type'] as String,
      category: json['category'] as String?,
      size: (json['size'] as num?)?.toInt(),
      rejectionReason: json['rejectionReason'] as String?,
      mimeType: json['mimeType'] as String?,
      uploadedBy: _userFromJson(json['uploadedBy']),
      uploadedAt: _dateTimeFromJson(json['uploadedAt'] as String?),
      visibility: json['visibility'] as String,
      isApproved: json['isApproved'] as bool,
      isRejected: json['isRejected'] as bool,
      approvedBy: _userFromJson(json['approvedBy']),
      approvedAt: _dateTimeFromJson(json['approvedAt'] as String?),
      rejectedBy: _userFromJson(json['rejectedBy']),
      rejectedAt: _dateTimeFromJson(json['rejectedAt'] as String?),
      version: (json['version'] as num).toInt(),
      previousVersion: _previousVersionFromJson(json['previousVersion']),
      downloadCount: (json['downloadCount'] as num).toInt(),
      metadata: json['metadata'] == null
          ? null
          : DocumentMetadataModel.fromJson(
              json['metadata'] as Map<String, dynamic>),
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
      totalDownloads: _intFromJson(json['totalDownloads']),
      isLatestVersion: _boolFromJson(json['isLatestVersion']),
    );

Map<String, dynamic> _$$ProjectDocumentModelImplToJson(
        _$ProjectDocumentModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'project': _projectToJson(instance.project),
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'type': instance.type,
      'category': instance.category,
      'size': instance.size,
      'rejectionReason': instance.rejectionReason,
      'mimeType': instance.mimeType,
      'uploadedBy': _userToJson(instance.uploadedBy),
      'uploadedAt': _dateTimeToJson(instance.uploadedAt),
      'visibility': instance.visibility,
      'isApproved': instance.isApproved,
      'isRejected': instance.isRejected,
      'approvedBy': _userToJson(instance.approvedBy),
      'approvedAt': _dateTimeToJson(instance.approvedAt),
      'rejectedBy': _userToJson(instance.rejectedBy),
      'rejectedAt': _dateTimeToJson(instance.rejectedAt),
      'version': instance.version,
      'previousVersion': _previousVersionToJson(instance.previousVersion),
      'downloadCount': instance.downloadCount,
      'metadata': instance.metadata,
      'createdAt': _dateTimeToJson(instance.createdAt),
      'updatedAt': _dateTimeToJson(instance.updatedAt),
      'totalDownloads': instance.totalDownloads,
      'isLatestVersion': instance.isLatestVersion,
    };

_$DocumentMetadataModelImpl _$$DocumentMetadataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentMetadataModelImpl(
      checksum: json['checksum'] as String?,
      originalName: json['originalName'] as String?,
      encoding: json['encoding'] as String?,
      cloudinaryPublicId: json['cloudinaryPublicId'] as String?,
    );

Map<String, dynamic> _$$DocumentMetadataModelImplToJson(
        _$DocumentMetadataModelImpl instance) =>
    <String, dynamic>{
      'checksum': instance.checksum,
      'originalName': instance.originalName,
      'encoding': instance.encoding,
      'cloudinaryPublicId': instance.cloudinaryPublicId,
    };
