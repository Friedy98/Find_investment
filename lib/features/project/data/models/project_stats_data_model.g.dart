// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_stats_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectStatsDataImpl _$$ProjectStatsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectStatsDataImpl(
      total: (json['total'] as num).toInt(),
      active: (json['active'] as num).toInt(),
      funded: (json['funded'] as num).toInt(),
      completed: (json['completed'] as num).toInt(),
      byStatus: (json['byStatus'] as List<dynamic>)
          .map((e) => StatCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      byCategory: (json['byCategory'] as List<dynamic>)
          .map((e) => CategoryStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeline: (json['timeline'] as List<dynamic>)
          .map((e) => TimelineStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      funding: FundingStats.fromJson(json['funding'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProjectStatsDataImplToJson(
        _$ProjectStatsDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'active': instance.active,
      'funded': instance.funded,
      'completed': instance.completed,
      'byStatus': instance.byStatus,
      'byCategory': instance.byCategory,
      'timeline': instance.timeline,
      'funding': instance.funding,
    };
