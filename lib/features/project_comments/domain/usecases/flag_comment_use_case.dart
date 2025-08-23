import 'package:find_invest_mobile/features/project_comments/domain/repositories/project_comment_repository.dart';

class FlagCommentUseCase {
  final ProjectCommentRepository repository;

  FlagCommentUseCase({required this.repository});

  Future<void> call(String projectId, String commentId, Map<String, dynamic> data) {
    return repository.flagComment(projectId, commentId, data);
  }
}