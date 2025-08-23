import 'package:find_invest_mobile/features/project_repport/data/models/project_report_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'metrics_summary_model.freezed.dart';
part 'metrics_summary_model.g.dart';

@freezed
class MetricsSummaryModel with _$MetricsSummaryModel {
  const factory MetricsSummaryModel({
    @JsonKey(name: 'totalRevenue', defaultValue: 0.0) required double totalRevenue,
    @JsonKey(name: 'totalExpenses', defaultValue: 0.0) required double totalExpenses,
    @JsonKey(name: 'impactMetrics', defaultValue: []) required List<ImpactMetricModel> impactMetrics,
  }) = _MetricsSummaryModel;

  factory MetricsSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$MetricsSummaryModelFromJson(json);
}