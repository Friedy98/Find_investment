import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/core/services/secure_storage_service.dart';
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

class ProjectRemoteDataSourceImpl implements ProjectRemoteDataSource {
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
      LoggingService.info('Fetched project $id');
      return ProjectModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Get project error: $e');
      throw Exception('Failed to fetch project');
    }
  }

  @override
  Future<List<ProjectModel>> getMyProjects({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final response =
          await networkService.get('$basePath/my/projects', queryParameters: {
        ...?filters,
        'page': page,
        'limit': limit,
      });
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to fetch my projects: response not successful');
        throw Exception('Failed to fetch my projects');
      }
      LoggingService.info(
          'Fetched ${response.data['data'].length} my projects');
      return (response.data['data'] as List)
          .map((json) => ProjectModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Get my projects error: $e');
      throw Exception('Failed to fetch my projects');
    }
  }

  @override
  Future<ProjectModel> createProject(Map<String, dynamic> data) async {
    try {
      final response = await networkService.post(basePath, data: data);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to create project: response not successful');
        throw Exception('Failed to create project');
      }
      LoggingService.info('Created project ${response.data['data']['id']}');
      return ProjectModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Create project error: $e');
      throw Exception('Failed to create project');
    }
  }

  @override
  Future<ProjectModel> updateProject(
      String id, Map<String, dynamic> data) async {
    try {
      final response = await networkService.put('$basePath/$id', data: data);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to update project $id: response not successful');
        throw Exception('Failed to update project');
      }
      LoggingService.info('Updated project $id');
      return ProjectModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Update project error: $e');
      throw Exception('Failed to update project');
    }
  }

  @override
  Future<void> deleteProject(String id) async {
    try {
      final response = await networkService.delete('$basePath/$id');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to delete project $id: response not successful');
        throw Exception('Failed to delete project');
      }
      LoggingService.info('Deleted project $id');
    } catch (e) {
      LoggingService.error('Delete project error: $e');
      throw Exception('Failed to delete project');
    }
  }

  @override
  Future<List<ImageModel>> uploadImages(
      String id, List<MultipartFile> files) async {
    try {
      if (files.isEmpty) {
        throw Exception('No files uploaded');
      }
      final formData = FormData.fromMap({'images': files});
      final response = await networkService.postFormData('$basePath/$id/images',
          formData: formData);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to upload images for project $id: response not successful');
        throw Exception('Failed to upload images');
      }
      LoggingService.info(
          'Uploaded ${response.data['data'].length} images for project $id');
      return (response.data['data'] as List)
          .map((json) => ImageModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Upload images error: $e');
      throw Exception('Failed to upload images');
    }
  }

  @override
  Future<List<VideoModel>> uploadVideos(
      String id, List<MultipartFile> files) async {
    try {
      if (files.isEmpty) {
        throw Exception('No files uploaded');
      }
      final formData = FormData.fromMap({'videos': files});
      final response = await networkService.postFormData('$basePath/$id/videos',
          formData: formData);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to upload videos for project $id: response not successful');
        throw Exception('Failed to upload videos');
      }
      LoggingService.info(
          'Uploaded ${response.data['data'].length} videos for project $id');
      return (response.data['data'] as List)
          .map((json) => VideoModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Upload videos error: $e');
      throw Exception('Failed to upload videos');
    }
  }

  @override
  Future<String> setCoverImage(String id, MultipartFile file) async {
    try {
      if (file == null) {
        throw Exception('No file uploaded');
      }
      final formData = FormData.fromMap({'cover': file});
      final response = await networkService.putFormData('$basePath/$id/cover',
          formData: formData);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to set cover image for project $id: response not successful');
        throw Exception('Failed to set cover image');
      }
      LoggingService.info('Set cover image for project $id');
      return response.data['data'] as String;
    } catch (e) {
      LoggingService.error('Set cover image error: $e');
      throw Exception('Failed to set cover image');
    }
  }

  @override
  Future<String> setLogo(String id, MultipartFile file) async {
    try {
      if (file == null) {
        throw Exception('No file uploaded');
      }
      final formData = FormData.fromMap({'logo': file});
      final response = await networkService.putFormData('$basePath/$id/logo',
          formData: formData);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to set logo for project $id: response not successful');
        throw Exception('Failed to set logo');
      }
      LoggingService.info('Set logo for project $id');
      return response.data['data'] as String;
    } catch (e) {
      LoggingService.error('Set logo error: $e');
      throw Exception('Failed to set logo');
    }
  }

  @override
  Future<TeamMemberModel> addTeamMember(
      String id, Map<String, dynamic> data) async {
    try {
      final response =
          await networkService.post('$basePath/$id/team', data: data);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to add team member to project $id: response not successful');
        throw Exception('Failed to add team member');
      }
      LoggingService.info('Added team member to project $id');
      return TeamMemberModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Add team member error: $e');
      throw Exception('Failed to add team member');
    }
  }

  @override
  Future<TeamMemberModel> updateTeamMember(
      String id, String memberId, Map<String, dynamic> data) async {
    try {
      final response =
          await networkService.put('$basePath/$id/team/$memberId', data: data);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to update team member $memberId in project $id: response not successful');
        throw Exception('Failed to update team member');
      }
      LoggingService.info('Updated team member $memberId in project $id');
      return TeamMemberModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Update team member error: $e');
      throw Exception('Failed to update team member');
    }
  }

  @override
  Future<void> removeTeamMember(String id, String memberId) async {
    try {
      final response =
          await networkService.delete('$basePath/$id/team/$memberId');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to remove team member $memberId from project $id: response not successful');
        throw Exception('Failed to remove team member');
      }
      LoggingService.info('Removed team member $memberId from project $id');
    } catch (e) {
      LoggingService.error('Remove team member error: $e');
      throw Exception('Failed to remove team member');
    }
  }

  @override
  Future<ProjectModel> submitForReview(String id) async {
    try {
      final response = await networkService.post('$basePath/$id/submit');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to submit project $id for review: response not successful');
        throw Exception('Failed to submit for review');
      }
      LoggingService.info('Submitted project $id for review');
      return ProjectModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Submit for review error: $e');
      throw Exception('Failed to submit for review');
    }
  }

  @override
  Future<ProjectModel> duplicateProject(String id) async {
    try {
      final response = await networkService.post('$basePath/$id/duplicate');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to duplicate project $id: response not successful');
        throw Exception('Failed to duplicate project');
      }
      LoggingService.info('Duplicated project $id');
      return ProjectModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Duplicate project error: $e');
      throw Exception('Failed to duplicate project');
    }
  }

  @override
  Future<ProjectModel> archiveProject(String id) async {
    try {
      final response = await networkService.post('$basePath/$id/archive');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to archive project $id: response not successful');
        throw Exception('Failed to archive project');
      }
      LoggingService.info('Archived project $id');
      return ProjectModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Archive project error: $e');
      throw Exception('Failed to archive project');
    }
  }

  @override
  Future<Map<String, dynamic>> getProjectAnalytics(String id) async {
    try {
      final response = await networkService.get('$basePath/$id/analytics');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to fetch analytics for project $id: response not successful');
        throw Exception('Failed to fetch analytics');
      }
      LoggingService.info('Fetched analytics for project $id');
      return response.data['data'];
    } catch (e) {
      LoggingService.error('Get project analytics error: $e');
      throw Exception('Failed to fetch analytics');
    }
  }

  @override
  Future<List<UserModel>> getProjectInvestors(String id) async {
    try {
      final response = await networkService.get('$basePath/$id/investors');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to fetch investors for project $id: response not successful');
        throw Exception('Failed to fetch investors');
      }
      LoggingService.info(
          'Fetched ${response.data['data'].length} investors for project $id');
      return (response.data['data'] as List)
          .map((json) => UserModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Get project investors error: $e');
      throw Exception('Failed to fetch investors');
    }
  }

  @override
  Future<SettingsModel> updateProjectSettings(
      String id, Map<String, dynamic> data) async {
    try {
      final response =
          await networkService.put('$basePath/$id/settings', data: data);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to update settings for project $id: response not successful');
        throw Exception('Failed to update settings');
      }
      LoggingService.info('Updated settings for project $id');
      return SettingsModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Update project settings error: $e');
      throw Exception('Failed to update settings');
    }
  }

  @override
  Future<FinancialProjectionsModel> updateFinancialProjections(
      String id, Map<String, dynamic> data) async {
    try {
      final response = await networkService
          .put('$basePath/$id/financial-projections', data: data);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to update financial projections for project $id: response not successful');
        throw Exception('Failed to update financial projections');
      }
      LoggingService.info('Updated financial projections for project $id');
      return FinancialProjectionsModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Update financial projections error: $e');
      throw Exception('Failed to update financial projections');
    }
  }

  @override
  Future<ImpactModel> updateImpactData(
      String id, Map<String, dynamic> data) async {
    try {
      final response =
          await networkService.put('$basePath/$id/impact', data: data);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to update impact data for project $id: response not successful');
        throw Exception('Failed to update impact data');
      }
      LoggingService.info('Updated impact data for project $id');
      return ImpactModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Update impact data error: $e');
      throw Exception('Failed to update impact data');
    }
  }

  @override
  Future<List<RiskModel>> updateRisks(
      String id, Map<String, dynamic> data) async {
    try {
      final response =
          await networkService.put('$basePath/$id/risks', data: data);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to update risks for project $id: response not successful');
        throw Exception('Failed to update risks');
      }
      LoggingService.info(
          'Updated ${response.data['data'].length} risks for project $id');
      return (response.data['data'] as List)
          .map((json) => RiskModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Update risks error: $e');
      throw Exception('Failed to update risks');
    }
  }

  @override
  Future<SeoModel> updateSEO(String id, Map<String, dynamic> data) async {
    try {
      final response =
          await networkService.put('$basePath/$id/seo', data: data);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to update SEO for project $id: response not successful');
        throw Exception('Failed to update SEO');
      }
      LoggingService.info('Updated SEO for project $id');
      return SeoModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Update SEO error: $e');
      throw Exception('Failed to update SEO');
    }
  }

  @override
  Future<bool> toggleLike(String id) async {
    try {
      final response = await networkService.post('$basePath/$id/like');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to toggle like for project $id: response not successful');
        throw Exception('Failed to toggle like');
      }
      LoggingService.info('Toggled like for project $id');
      return response.data['success'];
    } catch (e) {
      LoggingService.error('Toggle like error: $e');
      throw Exception('Failed to toggle like');
    }
  }

  @override
  Future<bool> toggleBookmark(String id) async {
    try {
      final response = await networkService.post('$basePath/$id/bookmark');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to toggle bookmark for project $id: response not successful');
        throw Exception('Failed to toggle bookmark');
      }
      LoggingService.info('Toggled bookmark for project $id');
      return response.data['success'];
    } catch (e) {
      LoggingService.error('Toggle bookmark error: $e');
      throw Exception('Failed to toggle bookmark');
    }
  }

  @override
  Future<bool> toggleFollow(String id) async {
    try {
      final response = await networkService.post('$basePath/$id/follow');
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to toggle follow for project $id: response not successful');
        throw Exception('Failed to toggle follow');
      }
      LoggingService.info('Toggled follow for project $id');
      return response.data['success'];
    } catch (e) {
      LoggingService.error('Toggle follow error: $e');
      throw Exception('Failed to toggle follow');
    }
  }
}
