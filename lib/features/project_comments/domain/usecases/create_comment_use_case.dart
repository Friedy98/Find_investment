import 'package:find_invest_mobile/features/project_comments/domain/entities/project_comment_entity.dart';
import 'package:find_invest_mobile/features/project_comments/domain/repositories/project_comment_repository.dart';

class CreateCommentUseCase {
  final ProjectCommentRepository repository;

  CreateCommentUseCase({required this.repository});

  Future<ProjectCommentEntity> call(
      String projectId, Map<String, dynamic> data) {
    return repository.createComment(projectId, data);
  }
}
