import 'package:find_invest_mobile/features/project-milestone/domain/repositories/project_milestone_repository.dart';

class DeleteMilestoneUseCase {
  final ProjectMilestoneRepository repository;

  DeleteMilestoneUseCase({required this.repository});

  Future<void> call(String milestoneId) {
    return repository.deleteMilestone(milestoneId);
  }
}
