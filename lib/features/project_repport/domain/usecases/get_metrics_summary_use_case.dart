import 'package:find_invest_mobile/features/project_repport/domain/entities/metrics_summary_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';

class GetMetricsSummaryUseCase {
  final ProjectReportRepository repository;

  GetMetricsSummaryUseCase({required this.repository});

  Future<MetricsSummaryEntity> call({
    required String projectId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    final result = await repository.getMetricsSummary(
      projectId: projectId,
      startDate: startDate,
      endDate: endDate,
    );
    return result;
  }
}
