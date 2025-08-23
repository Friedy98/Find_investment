// Path: lib/features/project_owner/data/datasources/project_category_remote_datasource_impl.dart
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/core/utils/constants.dart';
import 'package:find_invest_mobile/features/project_category/data/datasources/project_category_remote_datasource.dart';
import 'package:find_invest_mobile/features/project_category/data/models/project_category_model.dart';

class ProjectCategoryRemoteDataSourceImpl
    implements ProjectCategoryRemoteDataSource {
  final NetworkService networkService;

  ProjectCategoryRemoteDataSourceImpl({required this.networkService});

  @override
  Future<List<ProjectCategoryModel>> getCategories(
      {String? parent,
      bool includeInactive = false,
      bool includeCount = false}) async {
    try {
      final response = await networkService.get(
        ApiConstants.projectCategoryEndpoint,
        queryParameters: {
          if (parent != null) 'parent': parent,
          'includeInactive': includeInactive.toString(),
          'includeCount': includeCount.toString(),
        },
      );
      LoggingService.info(
          'ProjectCategoryRemoteDataSourceImpl: Fetched categories');
      final data = response.data['data']['categories'] as List;
      return data.map((json) => ProjectCategoryModel.fromJson(json)).toList();
    } catch (e) {
      LoggingService.error('Get categories error: $e');
      throw Exception('Failed to fetch categories');
    }
  }

  @override
  Future<ProjectCategoryModel> getCategoryById(String id) async {
    try {
      final response = await networkService
          .get('${ApiConstants.projectCategoryEndpoint}/$id');
      LoggingService.info(
          'ProjectCategoryRemoteDataSourceImpl: Fetched category $id');
      return ProjectCategoryModel.fromJson(response.data['data']['category']);
    } catch (e) {
      LoggingService.error('Get category by ID error: $e');
      throw Exception('Failed to fetch category');
    }
  }
}
