import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class SubmitForReviewUseCase {
  final ProjectRepository repository;

  SubmitForReviewUseCase({required this.repository});

  Future<ProjectEntity> call(String id) async {
    return await repository.submitForReview(id);
  }
}