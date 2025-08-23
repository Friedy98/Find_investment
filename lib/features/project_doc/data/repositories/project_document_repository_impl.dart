// Path: lib/features/project_doc/data/repositories/project_document_repository_impl.dart
import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/project_doc/data/datasources/project_document_remote_datasource.dart';
import 'package:find_invest_mobile/features/project_doc/data/extensions/project_document_extensions.dart';
import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';
import 'package:find_invest_mobile/features/project_doc/domain/repositories/project_document_repository.dart';

class ProjectDocumentRepositoryImpl implements ProjectDocumentRepository {
  final ProjectDocumentRemoteDataSource remoteDataSource;

  ProjectDocumentRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<ProjectDocumentEntity>> listDocuments({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? type,
    String? category,
    String? visibility,
    bool? isApproved,
  }) async {
    try {
      final documentModels = await remoteDataSource.listDocuments(
        projectId: projectId,
        page: page,
        limit: limit,
        type: type,
        category: category,
        visibility: visibility,
        isApproved: isApproved,
      );
      LoggingService.info(
          'ProjectDocumentRepositoryImpl: Converting ${documentModels.length} documents to entities');
      return documentModels.map((model) => model.toEntity()).toList();
    } catch (e) {
      LoggingService.error('List documents error: $e');
      throw Exception('Failed to fetch documents');
    }
  }

  @override
  Future<ProjectDocumentEntity> getDocument(String documentId) async {
    try {
      final documentModel = await remoteDataSource.getDocument(documentId);
      LoggingService.info(
          'ProjectDocumentRepositoryImpl: Converting document $documentId to entity');
      return documentModel.toEntity();
    } catch (e) {
      LoggingService.error('Get document error: $e');
      throw Exception('Failed to fetch document');
    }
  }

  @override
  Future<ProjectDocumentEntity> createDocument(
      Map<String, dynamic> data, FormData formData) async {
    try {
      final documentModel =
          await remoteDataSource.createDocument(data, formData);
      LoggingService.info(
          'ProjectDocumentRepositoryImpl: Converting created document ${documentModel.id} to entity');
      return documentModel.toEntity();
    } catch (e) {
      LoggingService.error('Create document error: $e');
      throw Exception('Failed to create document');
    }
  }

  @override
  Future<ProjectDocumentEntity> updateDocument(
      String documentId, Map<String, dynamic> data) async {
    try {
      final documentModel =
          await remoteDataSource.updateDocument(documentId, data);
      LoggingService.info(
          'ProjectDocumentRepositoryImpl: Converting updated document $documentId to entity');
      return documentModel.toEntity();
    } catch (e) {
      LoggingService.error('Update document error: $e');
      throw Exception('Failed to update document');
    }
  }

  @override
  Future<void> deleteDocument(String documentId) async {
    try {
      await remoteDataSource.deleteDocument(documentId);
      LoggingService.info(
          'ProjectDocumentRepositoryImpl: Deleted document $documentId');
    } catch (e) {
      LoggingService.error('Delete document error: $e');
      throw Exception('Failed to delete document');
    }
  }

  @override
  Future<void> incrementDownload(String documentId) async {
    try {
      await remoteDataSource.incrementDownload(documentId);
      LoggingService.info(
          'ProjectDocumentRepositoryImpl: Incremented download for document $documentId');
    } catch (e) {
      LoggingService.error('Increment download error: $e');
      throw Exception('Failed to increment download');
    }
  }

  @override
  Future<List<ProjectDocumentEntity>> getDocumentsByType({
    required String type,
    required String projectId,
  }) async {
    try {
      final documentModels = await remoteDataSource.getDocumentsByType(
          type: type, projectId: projectId);
      LoggingService.info(
          'ProjectDocumentRepositoryImpl: Converting ${documentModels.length} documents by type $type to entities');
      return documentModels.map((model) => model.toEntity()).toList();
    } catch (e) {
      LoggingService.error('Get documents by type error: $e');
      throw Exception('Failed to fetch documents by type');
    }
  }

  @override
  Future<List<ProjectDocumentEntity>> searchDocuments(String query) async {
    try {
      final documentModels = await remoteDataSource.searchDocuments(query);
      LoggingService.info(
          'ProjectDocumentRepositoryImpl: Converting ${documentModels.length} searched documents to entities');
      return documentModels.map((model) => model.toEntity()).toList();
    } catch (e) {
      LoggingService.error('Search documents error: $e');
      throw Exception('Failed to search documents');
    }
  }

  @override
  Future<ProjectDocumentEntity> createVersion(
      String documentId, Map<String, dynamic> data, FormData formData) async {
    try {
      final documentModel =
          await remoteDataSource.createVersion(documentId, data, formData);
      LoggingService.info(
          'ProjectDocumentRepositoryImpl: Converting new version for document $documentId to entity');
      return documentModel.toEntity();
    } catch (e) {
      LoggingService.error('Create version error: $e');
      throw Exception('Failed to create version');
    }
  }

  @override
  Future<List<ProjectDocumentEntity>> getVersionHistory(
      String documentId) async {
    try {
      final documentModels =
          await remoteDataSource.getVersionHistory(documentId);
      LoggingService.info(
          'ProjectDocumentRepositoryImpl: Converting ${documentModels.length} version history documents to entities');
      return documentModels.map((model) => model.toEntity()).toList();
    } catch (e) {
      LoggingService.error('Get version history error: $e');
      throw Exception('Failed to fetch version history');
    }
  }
}
