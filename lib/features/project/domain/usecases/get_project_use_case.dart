import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class GetProjectUseCase {
  final ProjectRepository repository;

  GetProjectUseCase({required this.repository});

  Future<ProjectEntity> call(String id) async {
    return await repository.getProject(id);
  }
}
