import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';

class ListPublishedReportsUseCase {
  final ProjectReportRepository repository;

  ListPublishedReportsUseCase({required this.repository});

  Future<Map<String, dynamic>> call({
    String? projectId,
    int page = 1,
    int limit = 10,
    String? type,
  }) {
    return repository.listPublishedReports(
      projectId: projectId,
      page: page,
      limit: limit,
      type: type,
    );
  }
}