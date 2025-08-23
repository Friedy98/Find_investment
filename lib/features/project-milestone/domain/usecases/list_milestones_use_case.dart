import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/repositories/project_milestone_repository.dart';

class ListMilestonesUseCase {
  final ProjectMilestoneRepository repository;

  ListMilestonesUseCase({required this.repository});

  Future<List<ProjectMilestoneEntity>> call({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    String? query,
  }) {
    return repository.listMilestones(
      projectId: projectId,
      page: page,
      limit: limit,
      status: status,
      startDate: startDate,
      endDate: endDate,
      query: query,
    );
  }
}
