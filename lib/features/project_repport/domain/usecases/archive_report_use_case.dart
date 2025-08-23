import 'package:find_invest_mobile/features/project_repport/domain/entities/project_report_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';

class ArchiveReportUseCase {
  final ProjectReportRepository repository;

  ArchiveReportUseCase({required this.repository});

  Future<ProjectReportEntity> call(String reportId) {
    return repository.archiveReport(reportId);
  }
}