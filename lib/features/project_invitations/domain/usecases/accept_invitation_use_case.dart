import 'package:find_invest_mobile/features/project_invitations/domain/entities/project_invitation_entity.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/repositories/project_invitation_repository.dart';

class AcceptInvitationUseCase {
  final ProjectInvitationRepository repository;

  AcceptInvitationUseCase({required this.repository});

  Future<ProjectInvitationEntity> call(String invitationId) async {
    return await repository.acceptInvitation(invitationId);
  }
}
