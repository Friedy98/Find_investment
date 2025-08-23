import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/repositories/project_milestone_repository.dart';

class GetStatusStatsUseCase {
  final ProjectMilestoneRepository repository;

  GetStatusStatsUseCase({required this.repository});

  Future<List<StatusStatsEntity>> call(String projectId) {
    return repository.getStatusStats(projectId);
  }
}
