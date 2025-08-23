import 'package:find_invest_mobile/features/project_invitations/domain/entities/invitation_stat_entity.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/repositories/project_invitation_repository.dart';

class GetStatusStatsUseCase {
  final ProjectInvitationRepository repository;

  GetStatusStatsUseCase({required this.repository});

  Future<List<InvitationStatEntity>> call(String projectId) async {
    return await repository.getStatusStats(projectId);
  }
}