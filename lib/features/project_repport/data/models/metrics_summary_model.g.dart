// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetricsSummaryModelImpl _$$MetricsSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MetricsSummaryModelImpl(
      totalRevenue: (json['totalRevenue'] as num?)?.toDouble() ?? 0.0,
      totalExpenses: (json['totalExpenses'] as num?)?.toDouble() ?? 0.0,
      impactMetrics: (json['impactMetrics'] as List<dynamic>?)
              ?.map(
                  (e) => ImpactMetricModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$MetricsSummaryModelImplToJson(
        _$MetricsSummaryModelImpl instance) =>
    <String, dynamic>{
      'totalRevenue': instance.totalRevenue,
      'totalExpenses': instance.totalExpenses,
      'impactMetrics': instance.impactMetrics,
    };
