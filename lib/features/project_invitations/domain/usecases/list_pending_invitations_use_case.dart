import 'package:find_invest_mobile/features/project_invitations/domain/entities/project_invitation_entity.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/repositories/project_invitation_repository.dart';

class ListPendingInvitationsUseCase {
  final ProjectInvitationRepository repository;

  ListPendingInvitationsUseCase({required this.repository});

  Future<List<ProjectInvitationEntity>> call({
    required String projectId,
    int page = 1,
    int limit = 10,
  }) async {
    return await repository.listPendingInvitations(
      projectId: projectId,
      page: page,
      limit: limit,
    );
  }
}