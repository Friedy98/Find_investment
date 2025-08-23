import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class GetProjectStatsUseCase {
  final ProjectRepository repository;

  GetProjectStatsUseCase({required this.repository});

  Future<Map<String, dynamic>> call() async {
    return await repository.getProjectStats();
  }
}