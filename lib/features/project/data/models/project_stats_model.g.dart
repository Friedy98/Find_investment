// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectStatsModelImpl _$$ProjectStatsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectStatsModelImpl(
      success: json['success'] as bool,
      data: ProjectStatsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProjectStatsModelImplToJson(
        _$ProjectStatsModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
