import 'package:find_invest_mobile/features/project_update/domain/repositories/project_update_repository.dart';

class DeleteUpdateUseCase {
  final ProjectUpdateRepository repository;

  DeleteUpdateUseCase({required this.repository});

  Future<void> call(String updateId) {
    return repository.deleteUpdate(updateId);
  }
}
