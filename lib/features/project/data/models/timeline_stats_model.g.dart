// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelineStatImpl _$$TimelineStatImplFromJson(Map<String, dynamic> json) =>
    _$TimelineStatImpl(
      date: json['_id'] as String,
      count: (json['count'] as num).toInt(),
      totalFunding: (json['totalFunding'] as num).toDouble(),
    );

Map<String, dynamic> _$$TimelineStatImplToJson(_$TimelineStatImpl instance) =>
    <String, dynamic>{
      '_id': instance.date,
      'count': instance.count,
      'totalFunding': instance.totalFunding,
    };
