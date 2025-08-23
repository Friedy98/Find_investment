import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class GetProjectAnalyticsUseCase {
  final ProjectRepository repository;

  GetProjectAnalyticsUseCase({required this.repository});

  Future<Map<String, dynamic>> call(String id) async {
    return await repository.getProjectAnalytics(id);
  }
}