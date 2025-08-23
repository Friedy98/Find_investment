import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class UpdateProjectUseCase {
  final ProjectRepository repository;

  UpdateProjectUseCase({required this.repository});

  Future<ProjectEntity> call(String id, Map<String, dynamic> data) async {
    return await repository.updateProject(id, data);
  }
}