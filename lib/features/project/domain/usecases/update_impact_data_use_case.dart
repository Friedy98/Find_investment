import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class UpdateImpactDataUseCase {
  final ProjectRepository repository;

  UpdateImpactDataUseCase({required this.repository});

  Future<Impact> call(String id, Map<String, dynamic> data) async {
    return await repository.updateImpactData(id, data);
  }
}