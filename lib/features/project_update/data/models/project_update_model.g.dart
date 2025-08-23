// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectUpdateModelImpl _$$ProjectUpdateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectUpdateModelImpl(
      id: json['_id'] as String,
      project: _projectFromJson(json['project']),
      title: json['title'] as String,
      content: json['content'] as String,
      type: json['type'] as String? ?? 'general',
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      publishedBy: _userFromJson(json['publishedBy']),
      publishedAt: _dateTimeFromJson(json['publishedAt'] as String?),
      isPublic: json['isPublic'] as bool? ?? true,
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$ProjectUpdateModelImplToJson(
        _$ProjectUpdateModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'project': _projectToJson(instance.project),
      'title': instance.title,
      'content': instance.content,
      'type': instance.type,
      'attachments': instance.attachments,
      'publishedBy': _userToJson(instance.publishedBy),
      'publishedAt': _dateTimeToJson(instance.publishedAt),
      'isPublic': instance.isPublic,
      'createdAt': _dateTimeToJson(instance.createdAt),
      'updatedAt': _dateTimeToJson(instance.updatedAt),
    };

_$AttachmentModelImpl _$$AttachmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttachmentModelImpl(
      url: json['url'] as String?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      cloudinaryPublicId: json['cloudinaryPublicId'] as String?,
    );

Map<String, dynamic> _$$AttachmentModelImplToJson(
        _$AttachmentModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'type': instance.type,
      'description': instance.description,
      'cloudinaryPublicId': instance.cloudinaryPublicId,
    };
