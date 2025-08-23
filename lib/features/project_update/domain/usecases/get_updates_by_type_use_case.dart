import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';
import 'package:find_invest_mobile/features/project_update/domain/repositories/project_update_repository.dart';

class GetUpdatesByTypeUseCase {
  final ProjectUpdateRepository repository;

  GetUpdatesByTypeUseCase({required this.repository});

  Future<List<ProjectUpdateEntity>> call({
    required String type,
    String? projectId,
  }) {
    return repository.getUpdatesByType(
      type: type,
      projectId: projectId,
    );
  }
}
