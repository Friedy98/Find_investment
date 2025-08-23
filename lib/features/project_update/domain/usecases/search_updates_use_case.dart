import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';
import 'package:find_invest_mobile/features/project_update/domain/repositories/project_update_repository.dart';

class SearchUpdatesUseCase {
  final ProjectUpdateRepository repository;

  SearchUpdatesUseCase({required this.repository});

  Future<List<ProjectUpdateEntity>> call({
    required String query,
    int page = 1,
    int limit = 10,
  }) {
    return repository.searchUpdates(
      query: query,
      page: page,
      limit: limit,
    );
  }
}