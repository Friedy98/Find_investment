// Path: lib/features/project_owner/domain/usecases/get_categories.dart
import 'package:find_invest_mobile/features/project_category/domain/entities/project_category_entity.dart';
import 'package:find_invest_mobile/features/project_category/domain/repositories/project_category_repository.dart';

class GetCategories {
  final ProjectCategoryRepository repository;

  GetCategories(this.repository);

  Future<List<ProjectCategoryEntity>> call(
      {String? parent,
      bool includeInactive = false,
      bool includeCount = false}) async {
    return await repository.getCategories(
        parent: parent,
        includeInactive: includeInactive,
        includeCount: includeCount);
  }
}
