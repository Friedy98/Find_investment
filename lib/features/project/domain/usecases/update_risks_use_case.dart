import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class UpdateRisksUseCase {
  final ProjectRepository repository;

  UpdateRisksUseCase({required this.repository});

  Future<List<Risk>> call(String id, Map<String, dynamic> data) async {
    return await repository.updateRisks(id, data);
  }
}