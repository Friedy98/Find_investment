import 'package:find_invest_mobile/features/project_invitations/domain/entities/project_invitation_entity.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/repositories/project_invitation_repository.dart';

class ListInvitationsUseCase {
  final ProjectInvitationRepository repository;

  ListInvitationsUseCase({required this.repository});

  Future<List<ProjectInvitationEntity>> call({
    required String projectId,
    String? status,
    String? query,
    int page = 1,
    int limit = 10,
  }) async {
    return await repository.listInvitations(
      projectId: projectId,
      status: status,
      query: query,
      page: page,
      limit: limit,
    );
  }
}