import 'package:find_invest_mobile/features/project_comments/data/datasources/project_comment_remote_data_source.dart';
import 'package:find_invest_mobile/features/project_comments/data/extensions/project_comment_extensions.dart';
import 'package:find_invest_mobile/features/project_comments/domain/entities/project_comment_entity.dart';
import 'package:find_invest_mobile/features/project_comments/domain/repositories/project_comment_repository.dart';

class ProjectCommentRepositoryImpl implements ProjectCommentRepository {
  final ProjectCommentRemoteDataSource remoteDataSource;

  ProjectCommentRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<ProjectCommentEntity>> getProjectComments({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? parent,
  }) async {
    final comments = await remoteDataSource.getProjectComments(
      projectId: projectId,
      page: page,
      limit: limit,
      parent: parent,
    );
    return comments.map((model) => model.toEntity()).toList();
  }

  @override
  Future<ProjectCommentEntity> createComment(
      String projectId, Map<String, dynamic> data) async {
    final comment = await remoteDataSource.createComment(projectId, data);
    return comment.toEntity();
  }

  @override
  Future<ProjectCommentEntity> updateComment(
      String projectId, String commentId, Map<String, dynamic> data) async {
    final comment =
        await remoteDataSource.updateComment(projectId, commentId, data);
    return comment.toEntity();
  }

  @override
  Future<void> deleteComment(String projectId, String commentId) async {
    await remoteDataSource.deleteComment(projectId, commentId);
  }

  @override
  Future<void> flagComment(
      String projectId, String commentId, Map<String, dynamic> data) async {
    await remoteDataSource.flagComment(projectId, commentId, data);
  }
}
