import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class ToggleFollowUseCase {
  final ProjectRepository repository;

  ToggleFollowUseCase({required this.repository});

  Future<bool> call(String id) async {
    return await repository.toggleFollow(id);
  }
}