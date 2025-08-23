import 'package:find_invest_mobile/features/project_repport/domain/entities/project_report_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';

class UpdateReportUseCase {
  final ProjectReportRepository repository;

  UpdateReportUseCase({required this.repository});

  Future<ProjectReportEntity> call(String reportId, Map<String, dynamic> data) {
    return repository.updateReport(reportId, data);
  }
}