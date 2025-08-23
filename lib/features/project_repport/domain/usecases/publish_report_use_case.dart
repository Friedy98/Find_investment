import 'package:find_invest_mobile/features/project_repport/domain/entities/project_report_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';

class PublishReportUseCase {
  final ProjectReportRepository repository;

  PublishReportUseCase({required this.repository});

  Future<ProjectReportEntity> call(String reportId) {
    return repository.publishReport(reportId);
  }
}