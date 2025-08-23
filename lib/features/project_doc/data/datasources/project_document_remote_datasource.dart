// lib/features/project_doc/data/datasources/project_document_remote_datasource.dart
import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
// import 'package:find_invest_mobile/core/services/secure_storage_service.dart';
// import 'package:find_invest_mobile/features/project_doc/data/models/document_response_model.dart';
// import 'package:find_invest_mobile/features/project_doc/data/models/paginated_documents_model.dart';
import 'package:find_invest_mobile/features/project_doc/data/models/project_document_model.dart';
import 'package:find_invest_mobile/core/utils/constants.dart';
import 'package:find_invest_mobile/features/project_doc/data/models/project_document_response_model.dart';
import 'package:path_provider/path_provider.dart';

abstract class ProjectDocumentRemoteDataSource {
  Future<List<ProjectDocumentModel>> listDocuments({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? type,
    String? category,
    String? visibility,
    bool? isApproved,
  });
  Future<ProjectDocumentModel> getDocument(String documentId);
  Future<ProjectDocumentModel> createDocument(
      Map<String, dynamic> data, FormData fileData);
  Future<ProjectDocumentModel> updateDocument(
      String documentId, Map<String, dynamic> data);
  Future<void> deleteDocument(String documentId);
  Future<void> incrementDownload(String documentId);
  Future<List<ProjectDocumentModel>> getDocumentsByType({
    required String type,
    required String projectId,
  });
  Future<List<ProjectDocumentModel>> searchDocuments(String query);
  Future<ProjectDocumentModel> createVersion(
      String documentId, Map<String, dynamic> data, FormData formData);
  Future<List<ProjectDocumentModel>> getVersionHistory(String documentId);
}

class ProjectDocumentRemoteDataSourceImpl
    implements ProjectDocumentRemoteDataSource {
  final NetworkService networkService;
  // final SecureStorageService secureStorage;

  ProjectDocumentRemoteDataSourceImpl({
    required this.networkService,
    // required this.secureStorage,
  });

  @override
  Future<List<ProjectDocumentModel>> listDocuments({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? type,
    String? category,
    String? visibility,
    bool? isApproved,
  }) async {
    try {
      final response = await networkService.get(
        '${ApiConstants.projectDocumentEndpoint}/',
        queryParameters: {
          'projectId': projectId,
          'page': page,
          'limit': limit,
          if (type != null) 'type': type,
          if (category != null) 'category': category,
          if (visibility != null) 'visibility': visibility,
          if (isApproved != null) 'isApproved': isApproved,
        },
      );

      // final documentResponse =
      //     ProjectDocumentResponseModel.fromJson(response.data);
      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch documents: response not successful');
        throw Exception('Failed to fetch documents');
      }
      LoggingService.info(
          'ProjectDocumentRemoteDataSource: Fetched ${response.data['data']['documents']?.length ?? 0} documents');

      return (response.data['data']['documents'] as List)
          .map((json) => ProjectDocumentModel.fromJson(json))
          .toList();
      // return documentResponse.responseData.documents ?? [];
    } catch (e) {
      LoggingService.error('List documents error: $e');
      throw Exception('Failed to fetch documents');
    }
  }

  @override
  Future<ProjectDocumentModel> getDocument(String documentId) async {
    try {
      final response = await networkService.get(
        '${ApiConstants.projectDocumentEndpoint}/$documentId',
      );

      final documentResponse =
          ProjectDocumentResponseModel.fromJson(response.data);
      if (!documentResponse.success) {
        LoggingService.error(
            'Failed to fetch document $documentId: response not successful');
        throw Exception('Failed to fetch document');
      }
      LoggingService.info(
          'ProjectDocumentRemoteDataSource: Fetched document $documentId');
      return documentResponse.responseData.document ??
          (throw Exception('Document not found in response'));
    } catch (e) {
      LoggingService.error('Get document error: $e');
      throw Exception('Failed to fetch document');
    }
  }

  @override
  Future<ProjectDocumentModel> createDocument(
      Map<String, dynamic> data, FormData formData) async {
    try {
      formData.fields
          .addAll(data.entries.map((e) => MapEntry(e.key, e.value.toString())));
      formData.files.add(MapEntry(
          'file',
          await MultipartFile.fromFile(data['file'].path,
              filename: data['file'].name)));
      final response = await networkService.postFormData(
        '${ApiConstants.projectDocumentEndpoint}/',
        formData: formData,
      );

      final documentResponse =
          ProjectDocumentResponseModel.fromJson(response.data);
      if (!documentResponse.success) {
        LoggingService.error(
            'Failed to create document: response not successful');
        throw Exception('Failed to create document');
      }
      LoggingService.info(
          'ProjectDocumentRemoteDataSource: Created document ${documentResponse.responseData.document?.id}');
      return documentResponse.responseData.document ??
          (throw Exception('Document not found in response'));
    } catch (e) {
      LoggingService.error('Create document error: $e');
      throw Exception('Failed to create document');
    }
  }

  @override
  Future<ProjectDocumentModel> updateDocument(
      String documentId, Map<String, dynamic> data) async {
    try {
      final response = await networkService.put(
        '${ApiConstants.projectDocumentEndpoint}/$documentId',
        data: data,
      );

      final documentResponse =
          ProjectDocumentResponseModel.fromJson(response.data);
      if (!documentResponse.success) {
        LoggingService.error(
            'Failed to update document $documentId: response not successful');
        throw Exception('Failed to update document');
      }
      LoggingService.info(
          'ProjectDocumentRemoteDataSource: Updated document $documentId');
      return documentResponse.responseData.document ??
          (throw Exception('Document not found in response'));
    } catch (e) {
      LoggingService.error('Update document error: $e');
      throw Exception('Failed to update document');
    }
  }

  @override
  Future<void> deleteDocument(String documentId) async {
    try {
      final response = await networkService.delete(
        '${ApiConstants.projectDocumentEndpoint}/$documentId',
      );

      final documentResponse =
          ProjectDocumentResponseModel.fromJson(response.data);
      if (!documentResponse.success) {
        LoggingService.error(
            'Failed to delete document $documentId: response not successful');
        throw Exception('Failed to delete document');
      }
      LoggingService.info(
          'ProjectDocumentRemoteDataSource: Deleted document $documentId');
    } catch (e) {
      LoggingService.error('Delete document error: $e');
      throw Exception('Failed to delete document');
    }
  }

  @override
  Future<void> incrementDownload(String documentId) async {
    try {
      final response = await networkService.get(
        '${ApiConstants.projectDocumentEndpoint}/$documentId/download',
      );

      if (response.statusCode == 302) {
        final redirectUrl = response.headers['location']?.first;
        if (redirectUrl != null) {
          final directory = await getApplicationDocumentsDirectory();
          final filePath =
              '${directory.path}/document_$documentId.${redirectUrl.split('.').last}';
          await Dio().download(redirectUrl, filePath);
          LoggingService.info(
              'ProjectDocumentRemoteDataSource: Downloaded file for document $documentId to $filePath');
        } else {
          LoggingService.error(
              'No redirect URL found for document $documentId');
          throw Exception('Failed to find download URL');
        }
      } else {
        final documentResponse =
            ProjectDocumentResponseModel.fromJson(response.data);
        if (!documentResponse.success) {
          LoggingService.error(
              'Failed to increment download for document $documentId: response not successful');
          throw Exception('Failed to increment download');
        }
        LoggingService.info(
            'ProjectDocumentRemoteDataSource: Incremented download for document $documentId');
      }
    } catch (e) {
      LoggingService.error('Increment download error: $e');
      throw Exception('Failed to increment download');
    }
  }

  @override
  Future<List<ProjectDocumentModel>> getDocumentsByType({
    required String type,
    required String projectId,
  }) async {
    try {
      final response = await networkService.get(
        '${ApiConstants.projectDocumentEndpoint}/type/$type',
        queryParameters: {'projectId': projectId},
      );

      final documentResponse =
          ProjectDocumentResponseModel.fromJson(response.data);
      if (!documentResponse.success) {
        LoggingService.error(
            'Failed to fetch documents by type $type: response not successful');
        throw Exception('Failed to fetch documents by type');
      }
      LoggingService.info(
          'ProjectDocumentRemoteDataSource: Fetched ${documentResponse.responseData.documents?.length ?? 0} documents by type $type');
      return documentResponse.responseData.documents ?? [];
    } catch (e) {
      LoggingService.error('Get documents by type error: $e');
      throw Exception('Failed to fetch documents by type');
    }
  }

  @override
  Future<List<ProjectDocumentModel>> searchDocuments(String query) async {
    try {
      final response = await networkService.get(
        '${ApiConstants.projectDocumentEndpoint}/search/all',
        queryParameters: {'query': query},
      );

      final documentResponse =
          ProjectDocumentResponseModel.fromJson(response.data);
      if (!documentResponse.success) {
        LoggingService.error(
            'Failed to search documents: response not successful');
        throw Exception('Failed to search documents');
      }
      LoggingService.info(
          'ProjectDocumentRemoteDataSource: Searched ${documentResponse.responseData.documents?.length ?? 0} documents');
      return documentResponse.responseData.documents ?? [];
    } catch (e) {
      LoggingService.error('Search documents error: $e');
      throw Exception('Failed to search documents');
    }
  }

  @override
  Future<ProjectDocumentModel> createVersion(
      String documentId, Map<String, dynamic> data, FormData formData) async {
    try {
      formData.fields
          .addAll(data.entries.map((e) => MapEntry(e.key, e.value.toString())));
      formData.files.add(MapEntry(
          'file',
          await MultipartFile.fromFile(data['file'].path,
              filename: data['file'].name)));
      final response = await networkService.postFormData(
        '${ApiConstants.projectDocumentEndpoint}/$documentId/version',
        formData: formData,
      );

      final documentResponse =
          ProjectDocumentResponseModel.fromJson(response.data);
      if (!documentResponse.success) {
        LoggingService.error(
            'Failed to create version for document $documentId: response not successful');
        throw Exception('Failed to create version');
      }
      LoggingService.info(
          'ProjectDocumentRemoteDataSource: Created version for document $documentId');
      return documentResponse.responseData.document ??
          (throw Exception('Document not found in response'));
    } catch (e) {
      LoggingService.error('Create version error: $e');
      throw Exception('Failed to create version');
    }
  }

  @override
  Future<List<ProjectDocumentModel>> getVersionHistory(
      String documentId) async {
    try {
      final response = await networkService.get(
        '${ApiConstants.projectDocumentEndpoint}/$documentId/history',
      );

      final documentResponse =
          ProjectDocumentResponseModel.fromJson(response.data);
      if (!documentResponse.success) {
        LoggingService.error(
            'Failed to fetch version history for document $documentId: response not successful');
        throw Exception('Failed to fetch version history');
      }
      LoggingService.info(
          'ProjectDocumentRemoteDataSource: Fetched ${documentResponse.responseData.history?.length ?? 0} version history for document $documentId');
      return documentResponse.responseData.history ?? [];
    } catch (e) {
      LoggingService.error('Get version history error: $e');
      throw Exception('Failed to fetch version history');
    }
  }
}
