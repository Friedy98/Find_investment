import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/repositories/project_milestone_repository.dart';

class UpdateProgressUseCase {
  final ProjectMilestoneRepository repository;

  UpdateProgressUseCase({required this.repository});

  Future<ProjectMilestoneEntity> call(String milestoneId, int progress) {
    return repository.updateProgress(milestoneId, progress);
  }
}
