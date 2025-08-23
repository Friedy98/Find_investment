import 'package:find_invest_mobile/features/project_invitations/data/datasources/project_invitation_remote_data_source.dart';
import 'package:find_invest_mobile/features/project_invitations/data/extensions/project_invitation_extensions.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/entities/project_invitation_entity.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/entities/invitation_stat_entity.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/repositories/project_invitation_repository.dart';

class ProjectInvitationRepositoryImpl implements ProjectInvitationRepository {
  final ProjectInvitationRemoteDataSource remoteDataSource;

  ProjectInvitationRepositoryImpl({required this.remoteDataSource});

  @override
  Future<ProjectInvitationEntity> createInvitation(
      Map<String, dynamic> data) async {
    final invitation = await remoteDataSource.createInvitation(data);
    return invitation.toEntity();
  }

  @override
  Future<List<ProjectInvitationEntity>> listInvitations({
    required String projectId,
    String? status,
    String? query,
    int page = 1,
    int limit = 10,
  }) async {
    final invitations = await remoteDataSource.listInvitations(
      projectId: projectId,
      status: status,
      query: query,
      page: page,
      limit: limit,
    );
    return invitations.map((model) => model.toEntity()).toList();
  }

  @override
  Future<List<ProjectInvitationEntity>> listPendingInvitations({
    required String projectId,
    int page = 1,
    int limit = 10,
  }) async {
    final invitations = await remoteDataSource.listPendingInvitations(
      projectId: projectId,
      page: page,
      limit: limit,
    );
    return invitations.map((model) => model.toEntity()).toList();
  }

  @override
  Future<ProjectInvitationEntity> getInvitation(String invitationId) async {
    final invitation = await remoteDataSource.getInvitation(invitationId);
    return invitation.toEntity();
  }

  @override
  Future<ProjectInvitationEntity> acceptInvitation(String invitationId) async {
    final invitation = await remoteDataSource.acceptInvitation(invitationId);
    return invitation.toEntity();
  }

  @override
  Future<ProjectInvitationEntity> rejectInvitation(String invitationId) async {
    final invitation = await remoteDataSource.rejectInvitation(invitationId);
    return invitation.toEntity();
  }

  @override
  Future<ProjectInvitationEntity> expireInvitation(String invitationId) async {
    final invitation = await remoteDataSource.expireInvitation(invitationId);
    return invitation.toEntity();
  }

  @override
  Future<void> deleteInvitation(String invitationId) async {
    await remoteDataSource.deleteInvitation(invitationId);
  }

  @override
  Future<List<InvitationStatEntity>> getStatusStats(String projectId) async {
    final stats = await remoteDataSource.getStatusStats(projectId);
    return stats.map((model) => model.toEntity()).toList();
  }

  @override
  Future<List<InvitationStatEntity>> getRoleStats(String projectId) async {
    final stats = await remoteDataSource.getRoleStats(projectId);
    return stats.map((model) => model.toEntity()).toList();
  }
}
