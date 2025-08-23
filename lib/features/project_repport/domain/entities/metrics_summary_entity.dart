import 'package:equatable/equatable.dart';
import 'package:find_invest_mobile/features/project_repport/domain/entities/project_report_entity.dart';

class MetricsSummaryEntity extends Equatable {
  final double totalRevenue;
  final double totalExpenses;
  final List<ImpactMetricEntity> impactMetrics;

  const MetricsSummaryEntity({
    required this.totalRevenue,
    required this.totalExpenses,
    required this.impactMetrics,
  });

  @override
  List<Object?> get props => [totalRevenue, totalExpenses, impactMetrics];
}