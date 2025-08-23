import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class GetProjectsUseCase {
  final ProjectRepository repository;

  GetProjectsUseCase({required this.repository});

  Future<List<ProjectEntity>> call({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  }) async {
    return await repository.getProjects(
      filters: filters,
      page: page,
      limit: limit,
    );
  }
}