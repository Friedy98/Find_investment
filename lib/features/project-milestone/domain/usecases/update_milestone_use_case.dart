import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/repositories/project_milestone_repository.dart';

class UpdateMilestoneUseCase {
  final ProjectMilestoneRepository repository;

  UpdateMilestoneUseCase({required this.repository});

  Future<ProjectMilestoneEntity> call(
      String milestoneId, Map<String, dynamic> data) {
    return repository.updateMilestone(milestoneId, data);
  }
}
