import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class ToggleLikeUseCase {
  final ProjectRepository repository;

  ToggleLikeUseCase({required this.repository});

  Future<bool> call(String id) async {
    return await repository.toggleLike(id);
  }
}