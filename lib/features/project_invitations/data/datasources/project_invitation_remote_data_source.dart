import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/project_invitations/data/models/invitation_stat_model.dart';
import 'package:find_invest_mobile/features/project_invitations/data/models/project_invitation_model.dart';

abstract class ProjectInvitationRemoteDataSource {
  Future<ProjectInvitationModel> createInvitation(Map<String, dynamic> data);
  Future<List<ProjectInvitationModel>> listInvitations({
    required String projectId,
    String? status,
    String? query,
    int page = 1,
    int limit = 10,
  });
  Future<List<ProjectInvitationModel>> listPendingInvitations({
    required String projectId,
    int page = 1,
    int limit = 10,
  });
  Future<ProjectInvitationModel> getInvitation(String invitationId);
  Future<ProjectInvitationModel> acceptInvitation(String invitationId);
  Future<ProjectInvitationModel> rejectInvitation(String invitationId);
  Future<ProjectInvitationModel> expireInvitation(String invitationId);
  Future<void> deleteInvitation(String invitationId);
  Future<List<InvitationStatModel>> getStatusStats(String projectId);
  Future<List<InvitationStatModel>> getRoleStats(String projectId);
}

class ProjectInvitationRemoteDataSourceImpl
    implements ProjectInvitationRemoteDataSource {
  final NetworkService networkService;

  ProjectInvitationRemoteDataSourceImpl({
    required this.networkService,
  });

  @override
  Future<ProjectInvitationModel> createInvitation(
      Map<String, dynamic> data) async {
    try {
      final response = await networkService.post(
        '/project-invitations',
        data: data,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to create invitation: response not successful');
        throw Exception('Failed to create invitation');
      }
      LoggingService.info(
          'ProjectInvitationRemoteDataSource: Created invitation ${response.data['data']['invitation']['id']}');
      return ProjectInvitationModel.fromJson(
          response.data['data']['invitation']);
    } catch (e) {
      LoggingService.error('Create invitation error: $e');
      throw Exception('Failed to create invitation');
    }
  }

  @override
  Future<List<ProjectInvitationModel>> listInvitations({
    required String projectId,
    String? status,
    String? query,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final response = await networkService.get(
        '/project-invitations',
        queryParameters: {
          'projectId': projectId,
          if (status != null) 'status': status,
          if (query != null) 'query': query,
          'page': page,
          'limit': limit,
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch invitations: response not successful');
        throw Exception('Failed to fetch invitations');
      }
      LoggingService.info(
          'ProjectInvitationRemoteDataSource: Fetched ${response.data['data']['invitations']?.length ?? 0} invitations');
      return (response.data['data']['invitations'] as List)
          .map((json) => ProjectInvitationModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('List invitations error: $e');
      throw Exception('Failed to fetch invitations');
    }
  }

  @override
  Future<List<ProjectInvitationModel>> listPendingInvitations({
    required String projectId,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final response = await networkService.get(
        '/project-invitations/pending',
        queryParameters: {
          'projectId': projectId,
          'page': page,
          'limit': limit,
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch pending invitations: response not successful');
        throw Exception('Failed to fetch pending invitations');
      }
      LoggingService.info(
          'ProjectInvitationRemoteDataSource: Fetched ${response.data['data']['invitations']?.length ?? 0} pending invitations');
      return (response.data['data']['invitations'] as List)
          .map((json) => ProjectInvitationModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('List pending invitations error: $e');
      throw Exception('Failed to fetch pending invitations');
    }
  }

  @override
  Future<ProjectInvitationModel> getInvitation(String invitationId) async {
    try {
      final response = await networkService.get(
        '/project-invitations/$invitationId',
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch invitation $invitationId: response not successful');
        throw Exception('Failed to fetch invitation');
      }
      LoggingService.info(
          'ProjectInvitationRemoteDataSource: Fetched invitation $invitationId');
      return ProjectInvitationModel.fromJson(
          response.data['data']['invitation']);
    } catch (e) {
      LoggingService.error('Get invitation error: $e');
      throw Exception('Failed to fetch invitation');
    }
  }

  @override
  Future<ProjectInvitationModel> acceptInvitation(String invitationId) async {
    try {
      final response = await networkService.patch(
          '/project-invitations/$invitationId/accept',
          id: invitationId,
          data: {});

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to accept invitation $invitationId: response not successful');
        throw Exception('Failed to accept invitation');
      }
      LoggingService.info(
          'ProjectInvitationRemoteDataSource: Accepted invitation $invitationId');
      return ProjectInvitationModel.fromJson(
          response.data['data']['invitation']);
    } catch (e) {
      LoggingService.error('Accept invitation error: $e');
      throw Exception('Failed to accept invitation');
    }
  }

  @override
  Future<ProjectInvitationModel> rejectInvitation(String invitationId) async {
    try {
      final response = await networkService.patch(
          '/project-invitations/$invitationId/reject',
          id: invitationId,
          data: {});

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to reject invitation $invitationId: response not successful');
        throw Exception('Failed to reject invitation');
      }
      LoggingService.info(
          'ProjectInvitationRemoteDataSource: Rejected invitation $invitationId');
      return ProjectInvitationModel.fromJson(
          response.data['data']['invitation']);
    } catch (e) {
      LoggingService.error('Reject invitation error: $e');
      throw Exception('Failed to reject invitation');
    }
  }

  @override
  Future<ProjectInvitationModel> expireInvitation(String invitationId) async {
    try {
      final response = await networkService.patch(
          '/project-invitations/$invitationId/expire',
          id: invitationId,
          data: {});

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to expire invitation $invitationId: response not successful');
        throw Exception('Failed to expire invitation');
      }
      LoggingService.info(
          'ProjectInvitationRemoteDataSource: Expired invitation $invitationId');
      return ProjectInvitationModel.fromJson(
          response.data['data']['invitation']);
    } catch (e) {
      LoggingService.error('Expire invitation error: $e');
      throw Exception('Failed to expire invitation');
    }
  }

  @override
  Future<void> deleteInvitation(String invitationId) async {
    try {
      final response = await networkService.delete(
        '/project-invitations/$invitationId',
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to delete invitation $invitationId: response not successful');
        throw Exception('Failed to delete invitation');
      }
      LoggingService.info(
          'ProjectInvitationRemoteDataSource: Deleted invitation $invitationId');
    } catch (e) {
      LoggingService.error('Delete invitation error: $e');
      throw Exception('Failed to delete invitation');
    }
  }

  @override
  Future<List<InvitationStatModel>> getStatusStats(String projectId) async {
    try {
      final response = await networkService.get(
        '/project-invitations/stats/status',
        queryParameters: {'projectId': projectId},
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch status stats: response not successful');
        throw Exception('Failed to fetch status stats');
      }
      LoggingService.info(
          'ProjectInvitationRemoteDataSource: Fetched status stats');
      return (response.data['data']['stats'] as List)
          .map((json) => InvitationStatModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Get status stats error: $e');
      throw Exception('Failed to fetch status stats');
    }
  }

  @override
  Future<List<InvitationStatModel>> getRoleStats(String projectId) async {
    try {
      final response = await networkService.get(
        '/project-invitations/stats/roles',
        queryParameters: {'projectId': projectId},
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch role stats: response not successful');
        throw Exception('Failed to fetch role stats');
      }
      LoggingService.info(
          'ProjectInvitationRemoteDataSource: Fetched role stats');
      return (response.data['data']['stats'] as List)
          .map((json) => InvitationStatModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Get role stats error: $e');
      throw Exception('Failed to fetch role stats');
    }
  }
}
