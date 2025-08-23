import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';

class DeleteReportUseCase {
  final ProjectReportRepository repository;

  DeleteReportUseCase({required this.repository});

  Future<void> call(String reportId) {
    return repository.deleteReport(reportId);
  }
}