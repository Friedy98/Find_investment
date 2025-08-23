// Path: lib/features/project_owner/data/repositories/project_category_repository_impl.dart
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/project_category/data/datasources/project_category_remote_datasource.dart';
import 'package:find_invest_mobile/features/project_category/data/extensions/project_category_extensions.dart';
import 'package:find_invest_mobile/features/project_category/domain/entities/project_category_entity.dart';
import 'package:find_invest_mobile/features/project_category/domain/repositories/project_category_repository.dart';

class ProjectCategoryRepositoryImpl implements ProjectCategoryRepository {
  final ProjectCategoryRemoteDataSource remoteDataSource;

  ProjectCategoryRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<ProjectCategoryEntity>> getCategories(
      {String? parent,
      bool includeInactive = false,
      bool includeCount = false}) async {
    try {
      final categoryModels = await remoteDataSource.getCategories(
          parent: parent,
          includeInactive: includeInactive,
          includeCount: includeCount);
      LoggingService.info(
          'ProjectCategoryRepositoryImpl: Converting ${categoryModels.length} categories to entities');
      return categoryModels.map((model) => model.toEntity()).toList();
    } catch (e) {
      LoggingService.error('Get categories error: $e');
      throw Exception('Failed to fetch categories');
    }
  }

  @override
  Future<ProjectCategoryEntity> getCategoryById(String id) async {
    try {
      final categoryModel = await remoteDataSource.getCategoryById(id);
      LoggingService.info(
          'ProjectCategoryRepositoryImpl: Converting category $id to entity');
      return categoryModel.toEntity();
    } catch (e) {
      LoggingService.error('Get category by ID error: $e');
      throw Exception('Failed to fetch category');
    }
  }
}
