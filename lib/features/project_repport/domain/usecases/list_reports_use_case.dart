import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';

class ListReportsUseCase {
  final ProjectReportRepository repository;

  ListReportsUseCase({required this.repository});

  Future<Map<String, dynamic>> call({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? status,
    String? type,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return repository.listReports(
      projectId: projectId,
      page: page,
      limit: limit,
      status: status,
      type: type,
      startDate: startDate,
      endDate: endDate,
    );
  }
}