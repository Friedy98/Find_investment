import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/project_comments/data/models/project_comment_model.dart';

abstract class ProjectCommentRemoteDataSource {
  Future<List<ProjectCommentModel>> getProjectComments({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? parent,
  });
  Future<ProjectCommentModel> createComment(
      String projectId, Map<String, dynamic> data);
  Future<ProjectCommentModel> updateComment(
      String projectId, String commentId, Map<String, dynamic> data);
  Future<void> deleteComment(String projectId, String commentId);
  Future<void> flagComment(
      String projectId, String commentId, Map<String, dynamic> data);
}

class ProjectCommentRemoteDataSourceImpl
    implements ProjectCommentRemoteDataSource {
  final NetworkService networkService;

  ProjectCommentRemoteDataSourceImpl({
    required this.networkService,
  });

  @override
  Future<List<ProjectCommentModel>> getProjectComments({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? parent,
  }) async {
    try {
      final response = await networkService.get(
        '/project-comments/$projectId',
        queryParameters: {
          'page': page,
          'limit': limit,
          if (parent != null) 'parent': parent,
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch comments: response not successful');
        throw Exception('Failed to fetch comments');
      }
      LoggingService.info(
          'ProjectCommentRemoteDataSource: Fetched ${response.data['data']['comments']?.length ?? 0} comments');
      return (response.data['data']['comments'] as List)
          .map((json) => ProjectCommentModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Get comments error: $e');
      throw Exception('Failed to fetch comments');
    }
  }

  @override
  Future<ProjectCommentModel> createComment(
      String projectId, Map<String, dynamic> data) async {
    try {
      final response = await networkService.post(
        '/project-comments/$projectId',
        data: data,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to create comment: response not successful');
        throw Exception('Failed to create comment');
      }
      LoggingService.info(
          'ProjectCommentRemoteDataSource: Created comment ${response.data['data']['comment']['id']}');
      return ProjectCommentModel.fromJson(response.data['data']['comment']);
    } catch (e) {
      LoggingService.error('Create comment error: $e');
      throw Exception('Failed to create comment');
    }
  }

  @override
  Future<ProjectCommentModel> updateComment(
      String projectId, String commentId, Map<String, dynamic> data) async {
    try {
      final response = await networkService.put(
        '/project-comments/$projectId/comments/$commentId',
        data: data,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to update comment $commentId: response not successful');
        throw Exception('Failed to update comment');
      }
      LoggingService.info(
          'ProjectCommentRemoteDataSource: Updated comment $commentId');
      return ProjectCommentModel.fromJson(response.data['data']['comment']);
    } catch (e) {
      LoggingService.error('Update comment error: $e');
      throw Exception('Failed to update comment');
    }
  }

  @override
  Future<void> deleteComment(String projectId, String commentId) async {
    try {
      final response = await networkService.delete(
        '/project-comments/$projectId/comments/$commentId',
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to delete comment $commentId: response not successful');
        throw Exception('Failed to delete comment');
      }
      LoggingService.info(
          'ProjectCommentRemoteDataSource: Deleted comment $commentId');
    } catch (e) {
      LoggingService.error('Delete comment error: $e');
      throw Exception('Failed to delete comment');
    }
  }

  @override
  Future<void> flagComment(
      String projectId, String commentId, Map<String, dynamic> data) async {
    try {
      final response = await networkService.post(
        '/project-comments/$projectId/comments/$commentId/flag',
        data: data,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to flag comment $commentId: response not successful');
        throw Exception('Failed to flag comment');
      }
      LoggingService.info(
          'ProjectCommentRemoteDataSource: Flagged comment $commentId');
    } catch (e) {
      LoggingService.error('Flag comment error: $e');
      throw Exception('Failed to flag comment');
    }
  }
}
