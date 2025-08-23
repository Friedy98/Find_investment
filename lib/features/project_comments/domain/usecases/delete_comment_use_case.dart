import 'package:find_invest_mobile/features/project_comments/domain/repositories/project_comment_repository.dart';

class DeleteCommentUseCase {
  final ProjectCommentRepository repository;

  DeleteCommentUseCase({required this.repository});

  Future<void> call(String projectId, String commentId) {
    return repository.deleteComment(projectId, commentId);
  }
}
