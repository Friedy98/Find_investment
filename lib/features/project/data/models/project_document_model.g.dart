// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDocumentModelImpl _$$ProjectDocumentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectDocumentModelImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      url: json['url'] as String,
      type: json['type'] as String? ?? 'other',
      category: json['category'] as String?,
      size: (json['size'] as num?)?.toInt(),
      mimeType: json['mimeType'] as String?,
      uploadedBy: _userFromJson(json['uploadedBy']),
      visibility: json['visibility'] as String? ?? 'team',
      isApproved: json['isApproved'] as bool? ?? false,
      approvedBy: _userFromJson(json['approvedBy']),
      approvedAt: _dateTimeFromJson(json['approvedAt'] as String?),
      version: (json['version'] as num?)?.toInt() ?? 1,
      previousVersion: json['previousVersion'] as String?,
      downloadCount: (json['downloadCount'] as num?)?.toInt() ?? 0,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ProjectDocumentModelImplToJson(
        _$ProjectDocumentModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'type': instance.type,
      'category': instance.category,
      'size': instance.size,
      'mimeType': instance.mimeType,
      'uploadedBy': _userToJson(instance.uploadedBy),
      'visibility': instance.visibility,
      'isApproved': instance.isApproved,
      'approvedBy': _userToJson(instance.approvedBy),
      'approvedAt': _dateTimeToJson(instance.approvedAt),
      'version': instance.version,
      'previousVersion': instance.previousVersion,
      'downloadCount': instance.downloadCount,
      'metadata': instance.metadata,
    };
