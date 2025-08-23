import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class GetProjectInvestorsUseCase {
  final ProjectRepository repository;

  GetProjectInvestorsUseCase({required this.repository});

  Future<List<UserEntity>> call(String id) async {
    return await repository.getProjectInvestors(id);
  }
}