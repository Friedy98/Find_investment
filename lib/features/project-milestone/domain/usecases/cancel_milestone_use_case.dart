import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/repositories/project_milestone_repository.dart';

class CancelMilestoneUseCase {
  final ProjectMilestoneRepository repository;

  CancelMilestoneUseCase({required this.repository});

  Future<ProjectMilestoneEntity> call(String milestoneId) {
    return repository.cancelMilestone(milestoneId);
  }
}
