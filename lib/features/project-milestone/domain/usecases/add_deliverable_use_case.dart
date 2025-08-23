import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/repositories/project_milestone_repository.dart';
import 'package:dio/dio.dart';

class AddDeliverableUseCase {
  final ProjectMilestoneRepository repository;

  AddDeliverableUseCase({required this.repository});

  Future<ProjectMilestoneEntity> call(String milestoneId, Map<String, dynamic> data, FormData fileData) {
    return repository.addDeliverable(milestoneId, data, fileData);
  }
}