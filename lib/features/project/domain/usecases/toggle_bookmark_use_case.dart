import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class ToggleBookmarkUseCase {
  final ProjectRepository repository;

  ToggleBookmarkUseCase({required this.repository});

  Future<bool> call(String id) async {
    return await repository.toggleBookmark(id);
  }
}