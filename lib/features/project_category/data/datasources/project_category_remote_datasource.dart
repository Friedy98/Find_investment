// Path: lib/features/project_owner/data/datasources/project_category_remote_datasource.dart
import 'package:find_invest_mobile/features/project_category/data/models/project_category_model.dart';

abstract class ProjectCategoryRemoteDataSource {
  Future<List<ProjectCategoryModel>> getCategories(
      {String? parent,
      bool includeInactive = false,
      bool includeCount = false});
  Future<ProjectCategoryModel> getCategoryById(String id);
}
