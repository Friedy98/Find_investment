import 'package:find_invest_mobile/features/project_comments/domain/entities/project_comment_entity.dart';
import 'package:find_invest_mobile/features/project_comments/domain/repositories/project_comment_repository.dart';

class UpdateCommentUseCase {
  final ProjectCommentRepository repository;

  UpdateCommentUseCase({required this.repository});

  Future<ProjectCommentEntity> call(
      String projectId, String commentId, Map<String, dynamic> data) {
    return repository.updateComment(projectId, commentId, data);
  }
}
