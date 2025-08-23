import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class UpdateTeamMemberUseCase {
  final ProjectRepository repository;

  UpdateTeamMemberUseCase({required this.repository});

  Future<TeamMember> call(String id, String memberId, Map<String, dynamic> data) async {
    return await repository.updateTeamMember(id, memberId, data);
  }
}