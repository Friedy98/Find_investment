// Path: lib/features/project_owner/domain/repositories/project_category_repository.dart

import 'package:find_invest_mobile/features/project_category/domain/entities/project_category_entity.dart';

abstract class ProjectCategoryRepository {
  Future<List<ProjectCategoryEntity>> getCategories(
      {String? parent,
      bool includeInactive = false,
      bool includeCount = false});
  Future<ProjectCategoryEntity> getCategoryById(String id);
}
