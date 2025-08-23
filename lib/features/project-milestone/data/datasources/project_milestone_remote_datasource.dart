import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/features/project-milestone/data/models/project_milestone_model.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';

abstract class ProjectMilestoneRemoteDataSource {
  Future<List<ProjectMilestoneModel>> listMilestones({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    String? query,
  });
  Future<ProjectMilestoneModel> getMilestone(String milestoneId);
  Future<ProjectMilestoneModel> createMilestone(Map<String, dynamic> data);
  Future<ProjectMilestoneModel> updateMilestone(
      String milestoneId, Map<String, dynamic> data);
  Future<void> deleteMilestone(String milestoneId);
  Future<ProjectMilestoneModel> updateProgress(
      String milestoneId, int progress);
  Future<ProjectMilestoneModel> cancelMilestone(String milestoneId);
  Future<ProjectMilestoneModel> updateStatus(String milestoneId, String status);
  Future<ProjectMilestoneModel> addDeliverable(
      String milestoneId, Map<String, dynamic> data, FormData fileData);
  Future<ProjectMilestoneModel> removeDeliverable(
      String milestoneId, String deliverableId);
  Future<ProgressStatsModel> getProgressStats(String projectId);
  Future<List<StatusStatsModel>> getStatusStats(String projectId);
}

class ProjectMilestoneRemoteDataSourceImpl
    implements ProjectMilestoneRemoteDataSource {
  final NetworkService networkService;

  ProjectMilestoneRemoteDataSourceImpl({
    required this.networkService,
  });

  @override
  Future<List<ProjectMilestoneModel>> listMilestones({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    String? query,
  }) async {
    try {
      final response = await networkService.get(
        '/project-milestone/',
        queryParameters: {
          'projectId': projectId,
          'page': page,
          'limit': limit,
          if (status != null) 'status': status,
          if (startDate != null) 'startDate': startDate.toIso8601String(),
          if (endDate != null) 'endDate': endDate.toIso8601String(),
          if (query != null) 'query': query,
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch milestones: response not successful');
        throw Exception('Failed to fetch milestones');
      }
      LoggingService.info(
          'ProjectMilestoneRemoteDataSource: Fetched ${response.data['data']['docs']?.length ?? 0} milestones');
      return (response.data['data']['milestones'] as List)
          .map((json) => ProjectMilestoneModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('List milestones error: $e');
      throw Exception('Failed to fetch milestones');
    }
  }

  @override
  Future<ProjectMilestoneModel> getMilestone(String milestoneId) async {
    try {
      final response = await networkService.get(
        '/project-milestone/',
        id: milestoneId,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch milestone $milestoneId: response not successful');
        throw Exception('Failed to fetch milestone');
      }
      LoggingService.info(
          'ProjectMilestoneRemoteDataSource: Fetched milestone $milestoneId');
      return ProjectMilestoneModel.fromJson(response.data['data']['milestone']);
    } catch (e) {
      LoggingService.error('Get milestone error: $e');
      throw Exception('Failed to fetch milestone');
    }
  }

  @override
  Future<ProjectMilestoneModel> createMilestone(
      Map<String, dynamic> data) async {
    try {
      final response = await networkService.post(
        '/project-milestone/',
        data: data,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to create milestone: response not successful');
        throw Exception('Failed to create milestone');
      }
      LoggingService.info(
          'ProjectMilestoneRemoteDataSource: Created milestone ${response.data['data']['milestone']['_id']}');
      return ProjectMilestoneModel.fromJson(response.data['data']['milestone']);
    } catch (e) {
      LoggingService.error('Create milestone error: $e');
      throw Exception('Failed to create milestone');
    }
  }

  @override
  Future<ProjectMilestoneModel> updateMilestone(
      String milestoneId, Map<String, dynamic> data) async {
    try {
      final response = await networkService.put(
        '/project-milestone/',
        data: data,
        id: milestoneId,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to update milestone $milestoneId: response not successful');
        throw Exception('Failed to update milestone');
      }
      LoggingService.info(
          'ProjectMilestoneRemoteDataSource: Updated milestone $milestoneId');
      return ProjectMilestoneModel.fromJson(response.data['data']['milestone']);
    } catch (e) {
      LoggingService.error('Update milestone error: $e');
      throw Exception('Failed to update milestone');
    }
  }

  @override
  Future<void> deleteMilestone(String milestoneId) async {
    try {
      final response = await networkService.delete(
        '/project-milestone/',
        id: milestoneId,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to delete milestone $milestoneId: response not successful');
        throw Exception('Failed to delete milestone');
      }
      LoggingService.info(
          'ProjectMilestoneRemoteDataSource: Deleted milestone $milestoneId');
    } catch (e) {
      LoggingService.error('Delete milestone error: $e');
      throw Exception('Failed to delete milestone');
    }
  }

  @override
  Future<ProjectMilestoneModel> updateProgress(
      String milestoneId, int progress) async {
    try {
      final response = await networkService.patch(
        '/project-milestone/progress',
        data: {'progress': progress},
        id: milestoneId,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to update progress for milestone $milestoneId: response not successful');
        throw Exception('Failed to update progress');
      }
      LoggingService.info(
          'ProjectMilestoneRemoteDataSource: Updated progress for milestone $milestoneId');
      return ProjectMilestoneModel.fromJson(response.data['data']['milestone']);
    } catch (e) {
      LoggingService.error('Update progress error: $e');
      throw Exception('Failed to update progress');
    }
  }

  @override
  Future<ProjectMilestoneModel> cancelMilestone(String milestoneId) async {
    try {
      final response = await networkService.patch(
        '/project-milestone/cancel',
        data: null,
        id: milestoneId,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to cancel milestone $milestoneId: response not successful');
        throw Exception('Failed to cancel milestone');
      }
      LoggingService.info(
          'ProjectMilestoneRemoteDataSource: Cancelled milestone $milestoneId');
      return ProjectMilestoneModel.fromJson(response.data['data']['milestone']);
    } catch (e) {
      LoggingService.error('Cancel milestone error: $e');
      throw Exception('Failed to cancel milestone');
    }
  }

  @override
  Future<ProjectMilestoneModel> updateStatus(
      String milestoneId, String status) async {
    try {
      final response = await networkService.patch(
        '/project-milestone/status',
        data: {'status': status},
        id: milestoneId,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to update status for milestone $milestoneId: response not successful');
        throw Exception('Failed to update status');
      }
      LoggingService.info(
          'ProjectMilestoneRemoteDataSource: Updated status for milestone $milestoneId');
      return ProjectMilestoneModel.fromJson(response.data['data']['milestone']);
    } catch (e) {
      LoggingService.error('Update status error: $e');
      throw Exception('Failed to update status');
    }
  }

  @override
  Future<ProjectMilestoneModel> addDeliverable(
      String milestoneId, Map<String, dynamic> data, FormData fileData) async {
    try {
      final response = await networkService.postFormData(
        '/project-milestone/deliverables',
        formData: fileData,
        id: milestoneId,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to add deliverable for milestone $milestoneId: response not successful');
        throw Exception('Failed to add deliverable');
      }
      LoggingService.info(
          'ProjectMilestoneRemoteDataSource: Added deliverable for milestone $milestoneId');
      return ProjectMilestoneModel.fromJson(response.data['data']['milestone']);
    } catch (e) {
      LoggingService.error('Add deliverable error: $e');
      throw Exception('Failed to add deliverable');
    }
  }

  @override
  Future<ProjectMilestoneModel> removeDeliverable(
      String milestoneId, String deliverableId) async {
    try {
      final response = await networkService.delete(
        '/project-milestone/deliverables',
        id: '$milestoneId/$deliverableId',
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to remove deliverable $deliverableId from milestone $milestoneId: response not successful');
        throw Exception('Failed to remove deliverable');
      }
      LoggingService.info(
          'ProjectMilestoneRemoteDataSource: Removed deliverable $deliverableId from milestone $milestoneId');
      return ProjectMilestoneModel.fromJson(response.data['data']['milestone']);
    } catch (e) {
      LoggingService.error('Remove deliverable error: $e');
      throw Exception('Failed to remove deliverable');
    }
  }

  @override
  Future<ProgressStatsModel> getProgressStats(String projectId) async {
    try {
      final response = await networkService.get(
        '/project-milestone/stats/progress',
        queryParameters: {'projectId': projectId},
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to get progress stats for project $projectId: response not successful');
        throw Exception('Failed to get progress stats');
      }
      LoggingService.info(
          'ProjectMilestoneRemoteDataSource: Fetched progress stats for project $projectId');
      return ProgressStatsModel.fromJson(response.data['data']['stats'] ?? {});
    } catch (e) {
      LoggingService.error('Get progress stats error: $e');
      throw Exception('Failed to get progress stats');
    }
  }

  @override
  Future<List<StatusStatsModel>> getStatusStats(String projectId) async {
    try {
      final response = await networkService.get(
        '/project-milestone/stats/status',
        queryParameters: {'projectId': projectId},
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to get status stats for project $projectId: response not successful');
        throw Exception('Failed to get status stats');
      }
      LoggingService.info(
          'ProjectMilestoneRemoteDataSource: Fetched status stats for project $projectId');
      return (response.data['data']['stats'] as List)
          .map((json) => StatusStatsModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Get status stats error: $e');
      throw Exception('Failed to get status stats');
    }
  }
}
