// Path: lib/features/project_doc/domain/repositories/project_document_repository.dart
import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';

abstract class ProjectDocumentRepository {
  Future<List<ProjectDocumentEntity>> listDocuments({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? type,
    String? category,
    String? visibility,
    bool? isApproved,
  });
  Future<ProjectDocumentEntity> getDocument(String documentId);
  Future<ProjectDocumentEntity> createDocument(Map<String, dynamic> data, FormData fileData);
  Future<ProjectDocumentEntity> updateDocument(String documentId, Map<String, dynamic> data);
  Future<void> deleteDocument(String documentId);
  Future<void> incrementDownload(String documentId);
  Future<List<ProjectDocumentEntity>> getDocumentsByType({
    required String type,
    required String projectId,
  });
  Future<List<ProjectDocumentEntity>> searchDocuments(String query);
  Future<ProjectDocumentEntity> createVersion(String documentId, Map<String, dynamic> data, FormData formData);
  Future<List<ProjectDocumentEntity>> getVersionHistory(String documentId);
}