import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class SearchProjectsUseCase {
  final ProjectRepository repository;

  SearchProjectsUseCase({required this.repository});

  Future<List<ProjectEntity>> call(String query) async {
    return await repository.searchProjects(query);
  }
}