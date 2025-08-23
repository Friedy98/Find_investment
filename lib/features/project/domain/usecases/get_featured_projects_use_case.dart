import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class GetFeaturedProjectsUseCase {
  final ProjectRepository repository;

  GetFeaturedProjectsUseCase({required this.repository});

  Future<List<ProjectEntity>> call() async {
    return await repository.getFeaturedProjects();
  }
}