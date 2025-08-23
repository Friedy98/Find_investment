import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class AddTeamMemberUseCase {
  final ProjectRepository repository;

  AddTeamMemberUseCase({required this.repository});

  Future<TeamMember> call(String id, Map<String, dynamic> data) async {
    return await repository.addTeamMember(id, data);
  }
}