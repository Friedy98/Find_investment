import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/features/project_update/data/models/project_update_model.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';

abstract class ProjectUpdateRemoteDataSource {
  Future<List<ProjectUpdateModel>> listUpdates({
    required String projectId,
    String? type,
    bool? isPublic,
    int page = 1,
    int limit = 10,
  });
  Future<List<ProjectUpdateModel>> listPublicUpdates({
    String? projectId,
    String? type,
    int page = 1,
    int limit = 10,
  });
  Future<List<ProjectUpdateModel>> getUpdatesByType({
    required String type,
    String? projectId,
  });
  Future<ProjectUpdateModel> getUpdate(String updateId);
  Future<ProjectUpdateModel> createUpdate(
      Map<String, dynamic> data, FormData? formData);
  Future<ProjectUpdateModel> updateUpdate(
      String updateId, Map<String, dynamic> data);
  Future<ProjectUpdateModel> toggleVisibility(String updateId);
  Future<ProjectUpdateModel> addAttachment(String updateId, FormData formData);
  Future<ProjectUpdateModel> removeAttachment(
      String updateId, String attachmentId);
  Future<List<ProjectUpdateModel>> searchUpdates({
    required String query,
    int page = 1,
    int limit = 10,
  });
  Future<List<ProjectUpdateModel>> getLatestUpdates({
    int limit = 5,
  });
  Future<void> deleteUpdate(String updateId);
}

class ProjectUpdateRemoteDataSourceImpl
    implements ProjectUpdateRemoteDataSource {
  final NetworkService networkService;

  ProjectUpdateRemoteDataSourceImpl({
    required this.networkService,
  });

  @override
  Future<List<ProjectUpdateModel>> listUpdates({
    required String projectId,
    String? type,
    bool? isPublic,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final response = await networkService.get(
        '/project-updates/',
        queryParameters: {
          'projectId': projectId,
          if (type != null) 'type': type,
          if (isPublic != null) 'isPublic': isPublic.toString(),
          'page': page,
          'limit': limit,
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch updates: response not successful');
        throw Exception('Failed to fetch updates');
      }
      LoggingService.info(
          'ProjectUpdateRemoteDataSource: Fetched ${response.data['data']['updates']?.length ?? 0} updates');
      return (response.data['data']['updates'] as List)
          .map((json) => ProjectUpdateModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('List updates error: $e');
      throw Exception('Failed to fetch updates');
    }
  }

  @override
  Future<List<ProjectUpdateModel>> listPublicUpdates({
    String? projectId,
    String? type,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final response = await networkService.get(
        '/project-updates/public',
        queryParameters: {
          if (projectId != null) 'projectId': projectId,
          if (type != null) 'type': type,
          'page': page,
          'limit': limit,
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch public updates: response not successful');
        throw Exception('Failed to fetch public updates');
      }
      LoggingService.info(
          'ProjectUpdateRemoteDataSource: Fetched ${response.data['data']?.length ?? 0} public updates');
      return (response.data['data'] as List)
          .map((json) => ProjectUpdateModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('List public updates error: $e');
      throw Exception('Failed to fetch public updates');
    }
  }

  @override
  Future<List<ProjectUpdateModel>> getUpdatesByType({
    required String type,
    String? projectId,
  }) async {
    try {
      final response = await networkService.get(
        '/project-updates/type/$type',
        queryParameters: {
          if (projectId != null) 'projectId': projectId,
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch updates by type $type: response not successful');
        throw Exception('Failed to fetch updates by type');
      }
      LoggingService.info(
          'ProjectUpdateRemoteDataSource: Fetched ${response.data['data']['updates']?.length ?? 0} updates for type $type');
      return (response.data['data']['updates'] as List)
          .map((json) => ProjectUpdateModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Get updates by type error: $e');
      throw Exception('Failed to fetch updates by type');
    }
  }

  @override
  Future<ProjectUpdateModel> getUpdate(String updateId) async {
    try {
      final response = await networkService.get(
        '/project-updates/$updateId',
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch update $updateId: response not successful');
        throw Exception('Failed to fetch update');
      }
      LoggingService.info(
          'ProjectUpdateRemoteDataSource: Fetched update $updateId');
      return ProjectUpdateModel.fromJson(response.data['data']['update']);
    } catch (e) {
      LoggingService.error('Get update error: $e');
      throw Exception('Failed to fetch update');
    }
  }

  @override
  Future<ProjectUpdateModel> createUpdate(
      Map<String, dynamic> data, FormData? formData) async {
    try {
      formData?.fields
          .addAll(data.entries.map((e) => MapEntry(e.key, e.value.toString())));
      formData?.files.add(MapEntry(
          'attachments',
          await MultipartFile.fromFile(data['file'].path,
              filename: data['file'].name)));
      final response = await networkService.postFormData(
        '/project-updates/',
        formData: formData ?? FormData.fromMap(data),
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to create update: response not successful');
        throw Exception('Failed to create update');
      }
      LoggingService.info(
          'ProjectUpdateRemoteDataSource: Created update ${response.data['data']['update']['id']}');
      return ProjectUpdateModel.fromJson(response.data['data']['update']);
    } catch (e) {
      LoggingService.error('Create update error: $e');
      throw Exception('Failed to create update');
    }
  }

  @override
  Future<ProjectUpdateModel> updateUpdate(
      String updateId, Map<String, dynamic> data) async {
    try {
      final response = await networkService.put(
        '/project-updates/$updateId',
        data: data,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to update update $updateId: response not successful');
        throw Exception('Failed to update update');
      }
      LoggingService.info(
          'ProjectUpdateRemoteDataSource: Updated update $updateId');
      return ProjectUpdateModel.fromJson(response.data['data']['update']);
    } catch (e) {
      LoggingService.error('Update update error: $e');
      throw Exception('Failed to update update');
    }
  }

  @override
  Future<ProjectUpdateModel> toggleVisibility(String updateId) async {
    try {
      final response = await networkService.patch(
        '/project-updates/$updateId/toggle-visibility',
        data: null,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to toggle visibility for update $updateId: response not successful');
        throw Exception('Failed to toggle visibility');
      }
      LoggingService.info(
          'ProjectUpdateRemoteDataSource: Toggled visibility for update $updateId');
      return ProjectUpdateModel.fromJson(response.data['data']['update']);
    } catch (e) {
      LoggingService.error('Toggle visibility error: $e');
      throw Exception('Failed to toggle visibility');
    }
  }

  @override
  Future<ProjectUpdateModel> addAttachment(
      String updateId, FormData formData) async {
    try {
      final response = await networkService.postFormData(
        '/project-updates/$updateId/attachments',
        formData: formData,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to add attachment to update $updateId: response not successful');
        throw Exception('Failed to add attachment');
      }
      LoggingService.info(
          'ProjectUpdateRemoteDataSource: Added attachment to update $updateId');
      return ProjectUpdateModel.fromJson(response.data['data']['update']);
    } catch (e) {
      LoggingService.error('Add attachment error: $e');
      throw Exception('Failed to add attachment');
    }
  }

  @override
  Future<ProjectUpdateModel> removeAttachment(
      String updateId, String attachmentId) async {
    try {
      final response = await networkService.delete(
        '/project-updates/$updateId/attachments/$attachmentId',
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to remove attachment $attachmentId from update $updateId: response not successful');
        throw Exception('Failed to remove attachment');
      }
      LoggingService.info(
          'ProjectUpdateRemoteDataSource: Removed attachment $attachmentId from update $updateId');
      return ProjectUpdateModel.fromJson(response.data['data']['update']);
    } catch (e) {
      LoggingService.error('Remove attachment error: $e');
      throw Exception('Failed to remove attachment');
    }
  }

  @override
  Future<List<ProjectUpdateModel>> searchUpdates({
    required String query,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final response = await networkService.get(
        '/project-updates/search',
        queryParameters: {
          'query': query,
          'page': page,
          'limit': limit,
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to search updates: response not successful');
        throw Exception('Failed to search updates');
      }
      LoggingService.info(
          'ProjectUpdateRemoteDataSource: Searched ${response.data['data']['updates']?.length ?? 0} updates');
      return (response.data['data']['updates'] as List)
          .map((json) => ProjectUpdateModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Search updates error: $e');
      throw Exception('Failed to search updates');
    }
  }

  @override
  Future<List<ProjectUpdateModel>> getLatestUpdates({
    int limit = 5,
  }) async {
    try {
      final response = await networkService.get(
        '/project-updates/latest',
        queryParameters: {
          'limit': limit,
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch latest updates: response not successful');
        throw Exception('Failed to fetch latest updates');
      }
      LoggingService.info(
          'ProjectUpdateRemoteDataSource: Fetched ${response.data['data']['updates']?.length ?? 0} latest updates');
      return (response.data['data']['updates'] as List)
          .map((json) => ProjectUpdateModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Get latest updates error: $e');
      throw Exception('Failed to fetch latest updates');
    }
  }

  @override
  Future<void> deleteUpdate(String updateId) async {
    try {
      final response = await networkService.delete(
        '/project-updates/$updateId',
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to delete update $updateId: response not successful');
        throw Exception('Failed to delete update');
      }
      LoggingService.info(
          'ProjectUpdateRemoteDataSource: Deleted update $updateId');
    } catch (e) {
      LoggingService.error('Delete update error: $e');
      throw Exception('Failed to delete update');
    }
  }
}
