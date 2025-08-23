import 'package:find_invest_mobile/features/project_repport/domain/entities/project_report_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';

class SearchReportsUseCase {
  final ProjectReportRepository repository;

  SearchReportsUseCase({required this.repository});

  Future<List<ProjectReportEntity>> call({
    required String projectId,
    required String query,
    int page = 1,
    int limit = 10,
  }) {
    return repository.searchReports(
      projectId: projectId,
      query: query,
      page: page,
      limit: limit,
    );
  }
}