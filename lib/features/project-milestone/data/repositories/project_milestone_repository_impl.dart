import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/project-milestone/data/datasources/project_milestone_remote_datasource.dart';
import 'package:find_invest_mobile/features/project-milestone/data/extensions/project_milestone_model_extensions.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/repositories/project_milestone_repository.dart';

class ProjectMilestoneRepositoryImpl implements ProjectMilestoneRepository {
  final ProjectMilestoneRemoteDataSource remoteDataSource;

  ProjectMilestoneRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<ProjectMilestoneEntity>> listMilestones({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    String? query,
  }) async {
    try {
      final models = await remoteDataSource.listMilestones(
        projectId: projectId,
        page: page,
        limit: limit,
        status: status,
        startDate: startDate,
        endDate: endDate,
        query: query,
      );
      LoggingService.info(
          'ProjectMilestoneRepositoryImpl: Converting ${models.length} milestones to entities');
      return models.map((model) => model.toEntity()).toList();
    } catch (e) {
      LoggingService.error('List milestones error: $e');
      throw Exception('Failed to fetch milestones');
    }
  }

  @override
  Future<ProjectMilestoneEntity> getMilestone(String milestoneId) async {
    try {
      final model = await remoteDataSource.getMilestone(milestoneId);
      LoggingService.info(
          'ProjectMilestoneRepositoryImpl: Converting milestone $milestoneId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Get milestone error: $e');
      throw Exception('Failed to fetch milestone');
    }
  }

  @override
  Future<ProjectMilestoneEntity> createMilestone(
      Map<String, dynamic> data) async {
    try {
      final model = await remoteDataSource.createMilestone(data);
      LoggingService.info(
          'ProjectMilestoneRepositoryImpl: Converting created milestone ${model.id} to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Create milestone error: $e');
      throw Exception('Failed to create milestone');
    }
  }

  @override
  Future<ProjectMilestoneEntity> updateMilestone(
      String milestoneId, Map<String, dynamic> data) async {
    try {
      final model = await remoteDataSource.updateMilestone(milestoneId, data);
      LoggingService.info(
          'ProjectMilestoneRepositoryImpl: Converting updated milestone $milestoneId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Update milestone error: $e');
      throw Exception('Failed to update milestone');
    }
  }

  @override
  Future<void> deleteMilestone(String milestoneId) async {
    try {
      await remoteDataSource.deleteMilestone(milestoneId);
      LoggingService.info(
          'ProjectMilestoneRepositoryImpl: Deleted milestone $milestoneId');
    } catch (e) {
      LoggingService.error('Delete milestone error: $e');
      throw Exception('Failed to delete milestone');
    }
  }

  @override
  Future<ProjectMilestoneEntity> updateProgress(
      String milestoneId, int progress) async {
    try {
      final model =
          await remoteDataSource.updateProgress(milestoneId, progress);
      LoggingService.info(
          'ProjectMilestoneRepositoryImpl: Converting updated progress for milestone $milestoneId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Update progress error: $e');
      throw Exception('Failed to update progress');
    }
  }

  @override
  Future<ProjectMilestoneEntity> cancelMilestone(String milestoneId) async {
    try {
      final model = await remoteDataSource.cancelMilestone(milestoneId);
      LoggingService.info(
          'ProjectMilestoneRepositoryImpl: Converting cancelled milestone $milestoneId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Cancel milestone error: $e');
      throw Exception('Failed to cancel milestone');
    }
  }

  @override
  Future<ProjectMilestoneEntity> updateStatus(
      String milestoneId, String status) async {
    try {
      final model = await remoteDataSource.updateStatus(milestoneId, status);
      LoggingService.info(
          'ProjectMilestoneRepositoryImpl: Converting updated status for milestone $milestoneId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Update status error: $e');
      throw Exception('Failed to update status');
    }
  }

  @override
  Future<ProjectMilestoneEntity> addDeliverable(
      String milestoneId, Map<String, dynamic> data, FormData fileData) async {
    try {
      final model =
          await remoteDataSource.addDeliverable(milestoneId, data, fileData);
      LoggingService.info(
          'ProjectMilestoneRepositoryImpl: Converting added deliverable for milestone $milestoneId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Add deliverable error: $e');
      throw Exception('Failed to add deliverable');
    }
  }

  @override
  Future<ProjectMilestoneEntity> removeDeliverable(
      String milestoneId, String deliverableId) async {
    try {
      final model =
          await remoteDataSource.removeDeliverable(milestoneId, deliverableId);
      LoggingService.info(
          'ProjectMilestoneRepositoryImpl: Converting removed deliverable for milestone $milestoneId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Remove deliverable error: $e');
      throw Exception('Failed to remove deliverable');
    }
  }

  @override
  Future<ProgressStatsEntity> getProgressStats(String projectId) async {
    try {
      final model = await remoteDataSource.getProgressStats(projectId);
      LoggingService.info(
          'ProjectMilestoneRepositoryImpl: Converting progress stats for project $projectId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Get progress stats error: $e');
      throw Exception('Failed to get progress stats');
    }
  }

  @override
  Future<List<StatusStatsEntity>> getStatusStats(String projectId) async {
    try {
      final models = await remoteDataSource.getStatusStats(projectId);
      LoggingService.info(
          'ProjectMilestoneRepositoryImpl: Converting ${models.length} status stats for project $projectId to entities');
      return models.map((model) => model.toEntity()).toList();
    } catch (e) {
      LoggingService.error('Get status stats error: $e');
      throw Exception('Failed to get status stats');
    }
  }
}
