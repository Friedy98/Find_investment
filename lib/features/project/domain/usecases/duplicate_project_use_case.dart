import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class DuplicateProjectUseCase {
  final ProjectRepository repository;

  DuplicateProjectUseCase({required this.repository});

  Future<ProjectEntity> call(String id) async {
    return await repository.duplicateProject(id);
  }
}