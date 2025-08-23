import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class UpdateProjectSettingsUseCase {
  final ProjectRepository repository;

  UpdateProjectSettingsUseCase({required this.repository});

  Future<Settings> call(String id, Map<String, dynamic> data) async {
    return await repository.updateProjectSettings(id, data);
  }
}