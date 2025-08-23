import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';
import 'package:find_invest_mobile/features/project_update/domain/repositories/project_update_repository.dart';

class GetUpdateUseCase {
  final ProjectUpdateRepository repository;

  GetUpdateUseCase({required this.repository});

  Future<ProjectUpdateEntity> call(String updateId) {
    return repository.getUpdate(updateId);
  }
}
