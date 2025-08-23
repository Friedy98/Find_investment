import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';

abstract class ProjectUpdateRepository {
  Future<List<ProjectUpdateEntity>> listUpdates({
    required String projectId,
    String? type,
    bool? isPublic,
    int page = 1,
    int limit = 10,
  });
  Future<List<ProjectUpdateEntity>> listPublicUpdates({
    String? projectId,
    String? type,
    int page = 1,
    int limit = 10,
  });
  Future<List<ProjectUpdateEntity>> getUpdatesByType({
    required String type,
    String? projectId,
  });
  Future<ProjectUpdateEntity> getUpdate(String updateId);
  Future<ProjectUpdateEntity> createUpdate(
      Map<String, dynamic> data, FormData? formData);
  Future<ProjectUpdateEntity> updateUpdate(
      String updateId, Map<String, dynamic> data);
  Future<ProjectUpdateEntity> toggleVisibility(String updateId);
  Future<ProjectUpdateEntity> addAttachment(String updateId, FormData formData);
  Future<ProjectUpdateEntity> removeAttachment(
      String updateId, String attachmentId);
  Future<List<ProjectUpdateEntity>> searchUpdates({
    required String query,
    int page = 1,
    int limit = 10,
  });
  Future<List<ProjectUpdateEntity>> getLatestUpdates({
    int limit = 5,
  });
  Future<void> deleteUpdate(String updateId);
}
