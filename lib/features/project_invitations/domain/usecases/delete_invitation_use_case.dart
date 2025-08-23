import 'package:find_invest_mobile/features/project_invitations/domain/repositories/project_invitation_repository.dart';

class DeleteInvitationUseCase {
  final ProjectInvitationRepository repository;

  DeleteInvitationUseCase({required this.repository});

  Future<void> call(String invitationId) async {
    await repository.deleteInvitation(invitationId);
  }
}