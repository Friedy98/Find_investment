import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class UpdateFinancialProjectionsUseCase {
  final ProjectRepository repository;

  UpdateFinancialProjectionsUseCase({required this.repository});

  Future<FinancialProjections> call(String id, Map<String, dynamic> data) async {
    return await repository.updateFinancialProjections(id, data);
  }
}