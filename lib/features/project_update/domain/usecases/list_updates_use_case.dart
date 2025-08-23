import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';
import 'package:find_invest_mobile/features/project_update/domain/repositories/project_update_repository.dart';

class ListUpdatesUseCase {
  final ProjectUpdateRepository repository;

  ListUpdatesUseCase({required this.repository});

  Future<List<ProjectUpdateEntity>> call({
    required String projectId,
    String? type,
    bool? isPublic,
    int page = 1,
    int limit = 10,
  }) {
    return repository.listUpdates(
      projectId: projectId,
      type: type,
      isPublic: isPublic,
      page: page,
      limit: limit,
    );
  }
}
