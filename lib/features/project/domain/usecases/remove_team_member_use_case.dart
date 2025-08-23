import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class RemoveTeamMemberUseCase {
  final ProjectRepository repository;

  RemoveTeamMemberUseCase({required this.repository});

  Future<void> call(String id, String memberId) async {
    await repository.removeTeamMember(id, memberId);
  }
}