import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';

abstract class ProjectMilestoneRepository {
  Future<List<ProjectMilestoneEntity>> listMilestones({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    String? query,
  });
  Future<ProjectMilestoneEntity> getMilestone(String milestoneId);
  Future<ProjectMilestoneEntity> createMilestone(Map<String, dynamic> data);
  Future<ProjectMilestoneEntity> updateMilestone(
      String milestoneId, Map<String, dynamic> data);
  Future<void> deleteMilestone(String milestoneId);
  Future<ProjectMilestoneEntity> updateProgress(
      String milestoneId, int progress);
  Future<ProjectMilestoneEntity> cancelMilestone(String milestoneId);
  Future<ProjectMilestoneEntity> updateStatus(
      String milestoneId, String status);
  Future<ProjectMilestoneEntity> addDeliverable(
      String milestoneId, Map<String, dynamic> data, FormData fileData);
  Future<ProjectMilestoneEntity> removeDeliverable(
      String milestoneId, String deliverableId);
  Future<ProgressStatsEntity> getProgressStats(String projectId);
  Future<List<StatusStatsEntity>> getStatusStats(String projectId);
}
