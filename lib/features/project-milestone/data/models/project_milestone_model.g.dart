// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_milestone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectMilestoneModelImpl _$$ProjectMilestoneModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectMilestoneModelImpl(
      id: json['_id'] as String,
      project: _projectFromJson(json['project']),
      title: json['title'] as String,
      description: json['description'] as String?,
      dueDate: _dateTimeFromJson(json['dueDate'] as String?),
      status: json['status'] as String,
      progress: (json['progress'] as num).toInt(),
      deliverables: (json['deliverables'] as List<dynamic>?)
              ?.map((e) => DeliverableModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdBy: _userFromJson(json['createdBy']),
      completedDate: _dateTimeFromJson(json['completedDate'] as String?),
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
      daysUntilDue: (json['daysUntilDue'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProjectMilestoneModelImplToJson(
        _$ProjectMilestoneModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'project': _projectToJson(instance.project),
      'title': instance.title,
      'description': instance.description,
      'dueDate': _dateTimeToJson(instance.dueDate),
      'status': instance.status,
      'progress': instance.progress,
      'deliverables': instance.deliverables,
      'createdBy': _userToJson(instance.createdBy),
      'completedDate': _dateTimeToJson(instance.completedDate),
      'createdAt': _dateTimeToJson(instance.createdAt),
      'updatedAt': _dateTimeToJson(instance.updatedAt),
      'daysUntilDue': instance.daysUntilDue,
    };

_$DeliverableModelImpl _$$DeliverableModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliverableModelImpl(
      name: json['name'] as String,
      url: json['url'] as String?,
      description: json['description'] as String?,
      cloudinaryPublicId: json['cloudinaryPublicId'] as String?,
    );

Map<String, dynamic> _$$DeliverableModelImplToJson(
        _$DeliverableModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'description': instance.description,
      'cloudinaryPublicId': instance.cloudinaryPublicId,
    };

_$ProgressStatsModelImpl _$$ProgressStatsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgressStatsModelImpl(
      averageProgress: (json['averageProgress'] as num?)?.toDouble() ?? 0.0,
      totalMilestones: (json['totalMilestones'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProgressStatsModelImplToJson(
        _$ProgressStatsModelImpl instance) =>
    <String, dynamic>{
      'averageProgress': instance.averageProgress,
      'totalMilestones': instance.totalMilestones,
    };

_$StatusStatsModelImpl _$$StatusStatsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StatusStatsModelImpl(
      status: json['status'] as String? ?? '',
      count: (json['count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$StatusStatsModelImplToJson(
        _$StatusStatsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'count': instance.count,
    };
