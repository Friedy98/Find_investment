import 'package:find_invest_mobile/features/project_comments/domain/entities/project_comment_entity.dart';
import 'package:find_invest_mobile/features/project_comments/domain/repositories/project_comment_repository.dart';

class GetProjectCommentsUseCase {
  final ProjectCommentRepository repository;

  GetProjectCommentsUseCase({required this.repository});

  Future<List<ProjectCommentEntity>> call({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? parent,
  }) {
    return repository.getProjectComments(
      projectId: projectId,
      page: page,
      limit: limit,
      parent: parent,
    );
  }
}