// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'funding_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FundingStatsImpl _$$FundingStatsImplFromJson(Map<String, dynamic> json) =>
    _$FundingStatsImpl(
      totalFunding: (json['totalFunding'] as num?)?.toDouble() ?? 0,
      averageFunding: (json['averageFunding'] as num?)?.toDouble() ?? 0,
      totalGoal: (json['totalGoal'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$FundingStatsImplToJson(_$FundingStatsImpl instance) =>
    <String, dynamic>{
      'totalFunding': instance.totalFunding,
      'averageFunding': instance.averageFunding,
      'totalGoal': instance.totalGoal,
    };
