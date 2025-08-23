import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/project_update/data/datasources/project_update_remote_datasource.dart';
import 'package:find_invest_mobile/features/project_update/data/extensions/project_update_model_extensions.dart';
import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';
import 'package:find_invest_mobile/features/project_update/domain/repositories/project_update_repository.dart';

class ProjectUpdateRepositoryImpl implements ProjectUpdateRepository {
  final ProjectUpdateRemoteDataSource remoteDataSource;

  ProjectUpdateRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<ProjectUpdateEntity>> listUpdates({
    required String projectId,
    String? type,
    bool? isPublic,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final models = await remoteDataSource.listUpdates(
        projectId: projectId,
        type: type,
        isPublic: isPublic,
        page: page,
        limit: limit,
      );
      LoggingService.info(
          'ProjectUpdateRepositoryImpl: Converting ${models.length} updates to entities');
      return models.map((model) => model.toEntity()).toList();
    } catch (e) {
      LoggingService.error('List updates error: $e');
      throw Exception('Failed to fetch updates');
    }
  }

  @override
  Future<List<ProjectUpdateEntity>> listPublicUpdates({
    String? projectId,
    String? type,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final models = await remoteDataSource.listPublicUpdates(
        projectId: projectId,
        type: type,
        page: page,
        limit: limit,
      );
      LoggingService.info(
          'ProjectUpdateRepositoryImpl: Converting ${models.length} public updates to entities');
      return models.map((model) => model.toEntity()).toList();
    } catch (e) {
      LoggingService.error('List public updates error: $e');
      throw Exception('Failed to fetch public updates');
    }
  }

  @override
  Future<List<ProjectUpdateEntity>> getUpdatesByType({
    required String type,
    String? projectId,
  }) async {
    try {
      final models = await remoteDataSource.getUpdatesByType(
        type: type,
        projectId: projectId,
      );
      LoggingService.info(
          'ProjectUpdateRepositoryImpl: Converting ${models.length} updates for type $type to entities');
      return models.map((model) => model.toEntity()).toList();
    } catch (e) {
      LoggingService.error('Get updates by type error: $e');
      throw Exception('Failed to fetch updates by type');
    }
  }

  @override
  Future<ProjectUpdateEntity> getUpdate(String updateId) async {
    try {
      final model = await remoteDataSource.getUpdate(updateId);
      LoggingService.info(
          'ProjectUpdateRepositoryImpl: Converting update $updateId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Get update error: $e');
      throw Exception('Failed to fetch update');
    }
  }

  @override
  Future<ProjectUpdateEntity> createUpdate(Map<String, dynamic> data, FormData? formData) async {
    try {
      final model = await remoteDataSource.createUpdate(data, formData);
      LoggingService.info(
          'ProjectUpdateRepositoryImpl: Converting created update ${model.id} to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Create update error: $e');
      throw Exception('Failed to create update');
    }
  }

  @override
  Future<ProjectUpdateEntity> updateUpdate(String updateId, Map<String, dynamic> data) async {
    try {
      final model = await remoteDataSource.updateUpdate(updateId, data);
      LoggingService.info(
          'ProjectUpdateRepositoryImpl: Converting updated update $updateId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Update update error: $e');
      throw Exception('Failed to update update');
    }
  }

  @override
  Future<ProjectUpdateEntity> toggleVisibility(String updateId) async {
    try {
      final model = await remoteDataSource.toggleVisibility(updateId);
      LoggingService.info(
          'ProjectUpdateRepositoryImpl: Converting toggled visibility for update $updateId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Toggle visibility error: $e');
      throw Exception('Failed to toggle visibility');
    }
  }

  @override
  Future<ProjectUpdateEntity> addAttachment(String updateId, FormData formData) async {
    try {
      final model = await remoteDataSource.addAttachment(updateId, formData);
      LoggingService.info(
          'ProjectUpdateRepositoryImpl: Converting added attachment for update $updateId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Add attachment error: $e');
      throw Exception('Failed to add attachment');
    }
  }

  @override
  Future<ProjectUpdateEntity> removeAttachment(String updateId, String attachmentId) async {
    try {
      final model = await remoteDataSource.removeAttachment(updateId, attachmentId);
      LoggingService.info(
          'ProjectUpdateRepositoryImpl: Converting removed attachment for update $updateId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Remove attachment error: $e');
      throw Exception('Failed to remove attachment');
    }
  }

  @override
  Future<List<ProjectUpdateEntity>> searchUpdates({
    required String query,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final models = await remoteDataSource.searchUpdates(
        query: query,
        page: page,
        limit: limit,
      );
      LoggingService.info(
          'ProjectUpdateRepositoryImpl: Converting ${models.length} search updates to entities');
      return models.map((model) => model.toEntity()).toList();
    } catch (e) {
      LoggingService.error('Search updates error: $e');
      throw Exception('Failed to search updates');
    }
  }

  @override
  Future<List<ProjectUpdateEntity>> getLatestUpdates({
    int limit = 5,
  }) async {
    try {
      final models = await remoteDataSource.getLatestUpdates(
        limit: limit,
      );
      LoggingService.info(
          'ProjectUpdateRepositoryImpl: Converting ${models.length} latest updates to entities');
      return models.map((model) => model.toEntity()).toList();
    } catch (e) {
      LoggingService.error('Get latest updates error: $e');
      throw Exception('Failed to fetch latest updates');
    }
  }

  @override
  Future<void> deleteUpdate(String updateId) async {
    try {
      await remoteDataSource.deleteUpdate(updateId);
      LoggingService.info(
          'ProjectUpdateRepositoryImpl: Deleted update $updateId');
    } catch (e) {
      LoggingService.error('Delete update error: $e');
      throw Exception('Failed to delete update');
    }
  }
}