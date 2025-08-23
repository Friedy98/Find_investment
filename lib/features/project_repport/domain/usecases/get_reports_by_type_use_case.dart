import 'package:find_invest_mobile/features/project_repport/domain/entities/project_report_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';

class GetReportsByTypeUseCase {
  final ProjectReportRepository repository;

  GetReportsByTypeUseCase({required this.repository});

  Future<List<ProjectReportEntity>> call(String type, {String? projectId}) {
    return repository.getReportsByType(type, projectId: projectId);
  }
}