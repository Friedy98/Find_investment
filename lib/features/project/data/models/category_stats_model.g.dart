// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryStatImpl _$$CategoryStatImplFromJson(Map<String, dynamic> json) =>
    _$CategoryStatImpl(
      id: json['_id'] as String,
      count: (json['count'] as num).toInt(),
      totalFunding: (json['totalFunding'] as num).toDouble(),
      categoryInfo: json['categoryInfo'] as List<dynamic>?,
    );

Map<String, dynamic> _$$CategoryStatImplToJson(_$CategoryStatImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'count': instance.count,
      'totalFunding': instance.totalFunding,
      'categoryInfo': instance.categoryInfo,
    };
