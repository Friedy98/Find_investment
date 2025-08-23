import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class DeleteProjectUseCase {
  final ProjectRepository repository;

  DeleteProjectUseCase({required this.repository});

  Future<void> call(String id) async {
    await repository.deleteProject(id);
  }
}