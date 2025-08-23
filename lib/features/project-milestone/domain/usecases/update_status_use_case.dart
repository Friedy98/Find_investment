import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/repositories/project_milestone_repository.dart';

class UpdateStatusUseCase {
  final ProjectMilestoneRepository repository;

  UpdateStatusUseCase({required this.repository});

  Future<ProjectMilestoneEntity> call(String milestoneId, String status) {
    return repository.updateStatus(milestoneId, status);
  }
}
