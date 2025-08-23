import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';
import 'package:find_invest_mobile/features/project_update/domain/repositories/project_update_repository.dart';

class GetLatestUpdatesUseCase {
  final ProjectUpdateRepository repository;

  GetLatestUpdatesUseCase({required this.repository});

  Future<List<ProjectUpdateEntity>> call({int limit = 5}) {
    return repository.getLatestUpdates(limit: limit);
  }
}