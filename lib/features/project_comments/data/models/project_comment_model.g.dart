// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectCommentModelImpl _$$ProjectCommentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectCommentModelImpl(
      id: json['_id'] as String,
      project: _projectFromJson(json['project']),
      author: _userFromJson(json['author']),
      content: json['content'] as String,
      parent: _parentFromJson(json['parent']),
      isModerated: json['isModerated'] as bool? ?? false,
      isApproved: json['isApproved'] as bool? ?? true,
      moderatedBy: _userFromJson(json['moderatedBy']),
      moderatedAt: _dateTimeFromJson(json['moderatedAt'] as String?),
      moderationReason: json['moderationReason'] as String?,
      metrics: MetricsModel.fromJson(json['metrics'] as Map<String, dynamic>),
      flags: (json['flags'] as List<dynamic>?)
              ?.map((e) => FlagModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$ProjectCommentModelImplToJson(
        _$ProjectCommentModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'project': _projectToJson(instance.project),
      'author': _userToJson(instance.author),
      'content': instance.content,
      'parent': _parentToJson(instance.parent),
      'isModerated': instance.isModerated,
      'isApproved': instance.isApproved,
      'moderatedBy': _userToJson(instance.moderatedBy),
      'moderatedAt': _dateTimeToJson(instance.moderatedAt),
      'moderationReason': instance.moderationReason,
      'metrics': instance.metrics,
      'flags': instance.flags,
      'createdAt': _dateTimeToJson(instance.createdAt),
      'updatedAt': _dateTimeToJson(instance.updatedAt),
    };

_$FlagModelImpl _$$FlagModelImplFromJson(Map<String, dynamic> json) =>
    _$FlagModelImpl(
      user: _userFromJson(json['user']),
      reason: json['reason'] as String,
      description: json['description'] as String?,
      flaggedAt: _dateTimeFromJson(json['flaggedAt'] as String?),
    );

Map<String, dynamic> _$$FlagModelImplToJson(_$FlagModelImpl instance) =>
    <String, dynamic>{
      'user': _userToJson(instance.user),
      'reason': instance.reason,
      'description': instance.description,
      'flaggedAt': _dateTimeToJson(instance.flaggedAt),
    };

_$MetricsModelImpl _$$MetricsModelImplFromJson(Map<String, dynamic> json) =>
    _$MetricsModelImpl(
      likes: (json['likes'] as num).toDouble(),
      replies: (json['replies'] as num).toDouble(),
    );

Map<String, dynamic> _$$MetricsModelImplToJson(_$MetricsModelImpl instance) =>
    <String, dynamic>{
      'likes': instance.likes,
      'replies': instance.replies,
    };
