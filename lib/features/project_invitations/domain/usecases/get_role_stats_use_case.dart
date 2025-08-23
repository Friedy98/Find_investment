import 'package:find_invest_mobile/features/project_invitations/domain/entities/invitation_stat_entity.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/repositories/project_invitation_repository.dart';

class GetRoleStatsUseCase {
  final ProjectInvitationRepository repository;

  GetRoleStatsUseCase({required this.repository});

  Future<List<InvitationStatEntity>> call(String projectId) async {
    return await repository.getRoleStats(projectId);
  }
}