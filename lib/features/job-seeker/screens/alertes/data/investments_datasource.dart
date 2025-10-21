import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';

abstract class ProjectRemoteDataSource {
  Future<List<ProjectModel>> getProjects({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  });
  Future<Map<String, dynamic>> getProjectStats();
  Future<List<ProjectModel>> getFeaturedProjects();
  Future<List<ProjectModel>> searchProjects(String query);
  Future<ProjectModel> getProject(String id);
  Future<List<ProjectModel>> getMyProjects({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  });
  Future<ProjectModel> createProject(Map<String, dynamic> data);
  Future<ProjectModel> updateProject(String id, Map<String, dynamic> data);
  Future<void> deleteProject(String id);
  Future<List<ImageModel>> uploadImages(String id, List<MultipartFile> files);
  Future<List<VideoModel>> uploadVideos(String id, List<MultipartFile> files);
  Future<String> setCoverImage(String id, MultipartFile file);
  Future<String> setLogo(String id, MultipartFile file);
  Future<TeamMemberModel> addTeamMember(String id, Map<String, dynamic> data);
  Future<TeamMemberModel> updateTeamMember(
      String id, String memberId, Map<String, dynamic> data);
  Future<void> removeTeamMember(String id, String memberId);
  Future<ProjectModel> submitForReview(String id);
  Future<ProjectModel> duplicateProject(String id);
  Future<ProjectModel> archiveProject(String id);
  Future<Map<String, dynamic>> getProjectAnalytics(String id);
  Future<List<UserModel>> getProjectInvestors(String id);
  Future<SettingsModel> updateProjectSettings(
      String id, Map<String, dynamic> data);
  Future<FinancialProjectionsModel> updateFinancialProjections(
      String id, Map<String, dynamic> data);
  Future<ImpactModel> updateImpactData(String id, Map<String, dynamic> data);
  Future<List<RiskModel>> updateRisks(String id, Map<String, dynamic> data);
  Future<SeoModel> updateSEO(String id, Map<String, dynamic> data);
  Future<bool> toggleLike(String id);
  Future<bool> toggleBookmark(String id);
  Future<bool> toggleFollow(String id);
}

/*class ProjectRemoteDataSourceImpl implements ProjectRemoteDataSource {
  final NetworkService networkService;

  ProjectRemoteDataSourceImpl({required this.networkService});

  static const String basePath = '/projects';

  @override
  Future<List<ProjectModel>> getProjects({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final response = await networkService.get(
        basePath,
        queryParameters: {
          ...?filters,
          'page': page,
          'limit': limit,
        },
      );
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to fetch projects: response not successful');
        throw Exception('Failed to fetch projects');
      }
      LoggingService.info('Fetched ${response.data['data'].length} projects');
      return (response.data['data'] as List)
          .map((json) => ProjectModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Get projects error: $e');
      throw Exception('Failed to fetch projects');
    }
  }

  @override
  Future<Map<String, dynamic>> getProjectStats() async {
    try {
      final response = await networkService.get('$basePath/stats');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to fetch project stats: response not successful');
        throw Exception('Failed to fetch project stats');
      }
      LoggingService.info('Fetched project stats');
      return response.data['data'];
    } catch (e) {
      LoggingService.error('Get project stats error: $e');
      throw Exception('Failed to fetch project stats');
    }
  }

  @override
  Future<List<ProjectModel>> getFeaturedProjects() async {
    try {
      final response = await networkService.get('$basePath/featured');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to fetch featured projects: response not successful');
        throw Exception('Failed to fetch featured projects');
      }
      LoggingService.info(
          'Fetched ${response.data['data'].length} featured projects');
      return (response.data['data'] as List)
          .map((json) => ProjectModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Get featured projects error: $e');
      throw Exception('Failed to fetch featured projects');
    }
  }

  @override
  Future<List<ProjectModel>> searchProjects(String query) async {
    try {
      final response = await networkService.get(
        '$basePath/search',
        queryParameters: {'q': query},
      );
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to search projects: response not successful');
        throw Exception('Failed to search projects');
      }
      LoggingService.info('Searched ${response.data['data'].length} projects');
      return (response.data['data'] as List)
          .map((json) => ProjectModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Search projects error: $e');
      throw Exception('Failed to search projects');
    }
  }

  @override
  Future<ProjectModel> getProject(String id) async {
    try {
      final response = await networkService.get('$basePath/$id');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to fetch project $id: response not successful');
        throw Exception('Failed to fetch project');
      }
      LoggingService.info('Fetched project ${response.data['data']}');
      return ProjectModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Get project error: $e');
      throw Exception('Failed to fetch project');
    }
  }

}*/
