import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';
import 'package:find_invest_mobile/features/project_update/domain/repositories/project_update_repository.dart';

class ListPublicUpdatesUseCase {
  final ProjectUpdateRepository repository;

  ListPublicUpdatesUseCase({required this.repository});

  Future<List<ProjectUpdateEntity>> call({
    String? projectId,
    String? type,
    int page = 1,
    int limit = 10,
  }) {
    return repository.listPublicUpdates(
      projectId: projectId,
      type: type,
      page: page,
      limit: limit,
    );
  }
}