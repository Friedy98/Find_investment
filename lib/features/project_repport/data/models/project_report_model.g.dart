// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectReportModelImpl _$$ProjectReportModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectReportModelImpl(
      id: json['_id'] as String,
      project: _projectFromJson(json['project']),
      title: json['title'] as String,
      content: json['content'] as String,
      type: json['type'] as String,
      period: _periodFromJson(json['period'] as Map<String, dynamic>?),
      metrics: _metricsFromJson(json['metrics'] as Map<String, dynamic>?),
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdBy: _userFromJson(json['createdBy']),
      status: json['status'] as String? ?? 'draft',
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$ProjectReportModelImplToJson(
        _$ProjectReportModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'project': _projectToJson(instance.project),
      'title': instance.title,
      'content': instance.content,
      'type': instance.type,
      'period': _periodToJson(instance.period),
      'metrics': _metricsToJson(instance.metrics),
      'attachments': instance.attachments,
      'createdBy': _userToJson(instance.createdBy),
      'status': instance.status,
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

_$PeriodModelImpl _$$PeriodModelImplFromJson(Map<String, dynamic> json) =>
    _$PeriodModelImpl(
      start: _dateTimeFromJson(json['start'] as String?),
      end: _dateTimeFromJson(json['end'] as String?),
    );

Map<String, dynamic> _$$PeriodModelImplToJson(_$PeriodModelImpl instance) =>
    <String, dynamic>{
      'start': _dateTimeToJson(instance.start),
      'end': _dateTimeToJson(instance.end),
    };

_$MetricsModelImpl _$$MetricsModelImplFromJson(Map<String, dynamic> json) =>
    _$MetricsModelImpl(
      revenue: (json['revenue'] as num?)?.toDouble(),
      expenses: (json['expenses'] as num?)?.toDouble(),
      impactMetrics: (json['impactMetrics'] as List<dynamic>?)
              ?.map(
                  (e) => ImpactMetricModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$MetricsModelImplToJson(_$MetricsModelImpl instance) =>
    <String, dynamic>{
      'revenue': instance.revenue,
      'expenses': instance.expenses,
      'impactMetrics': instance.impactMetrics,
    };

_$ImpactMetricModelImpl _$$ImpactMetricModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ImpactMetricModelImpl(
      name: json['name'] as String,
      value: (json['value'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$ImpactMetricModelImplToJson(
        _$ImpactMetricModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'unit': instance.unit,
    };
