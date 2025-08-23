import 'package:find_invest_mobile/features/project_invitations/domain/entities/project_invitation_entity.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/entities/invitation_stat_entity.dart';

abstract class ProjectInvitationRepository {
  Future<ProjectInvitationEntity> createInvitation(Map<String, dynamic> data);
  Future<List<ProjectInvitationEntity>> listInvitations({
    required String projectId,
    String? status,
    String? query,
    int page = 1,
    int limit = 10,
  });
  Future<List<ProjectInvitationEntity>> listPendingInvitations({
    required String projectId,
    int page = 1,
    int limit = 10,
  });
  Future<ProjectInvitationEntity> getInvitation(String invitationId);
  Future<ProjectInvitationEntity> acceptInvitation(String invitationId);
  Future<ProjectInvitationEntity> rejectInvitation(String invitationId);
  Future<ProjectInvitationEntity> expireInvitation(String invitationId);
  Future<void> deleteInvitation(String invitationId);
  Future<List<InvitationStatEntity>> getStatusStats(String projectId);
  Future<List<InvitationStatEntity>> getRoleStats(String projectId);
}
