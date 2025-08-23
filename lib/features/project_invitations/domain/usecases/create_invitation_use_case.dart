import 'package:find_invest_mobile/features/project_invitations/domain/entities/project_invitation_entity.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/repositories/project_invitation_repository.dart';

class CreateInvitationUseCase {
  final ProjectInvitationRepository repository;

  CreateInvitationUseCase({required this.repository});

  Future<ProjectInvitationEntity> call(Map<String, dynamic> data) async {
    return await repository.createInvitation(data);
  }
}