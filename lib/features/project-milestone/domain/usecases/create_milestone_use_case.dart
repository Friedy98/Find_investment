import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/repositories/project_milestone_repository.dart';

class CreateMilestoneUseCase {
  final ProjectMilestoneRepository repository;

  CreateMilestoneUseCase({required this.repository});

  Future<ProjectMilestoneEntity> call(Map<String, dynamic> data) {
    return repository.createMilestone(data);
  }
}
