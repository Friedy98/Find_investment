import 'package:find_invest_mobile/features/project_comments/domain/entities/project_comment_entity.dart';

abstract class ProjectCommentRepository {
  Future<List<ProjectCommentEntity>> getProjectComments({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? parent,
  });
  Future<ProjectCommentEntity> createComment(
      String projectId, Map<String, dynamic> data);
  Future<ProjectCommentEntity> updateComment(
      String projectId, String commentId, Map<String, dynamic> data);
  Future<void> deleteComment(String projectId, String commentId);
  Future<void> flagComment(
      String projectId, String commentId, Map<String, dynamic> data);
}
