import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';
import 'package:find_invest_mobile/features/project_update/domain/repositories/project_update_repository.dart';
class UpdateUpdateUseCase {
  final ProjectUpdateRepository repository;

  UpdateUpdateUseCase({required this.repository});

  Future<ProjectUpdateEntity> call(String updateId, Map<String, dynamic> data) {
    return repository.updateUpdate(updateId, data);
  }
}
