// Path: lib/features/project_doc/presentation/providers/project_document_provider.dart
import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/create_document_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/create_version_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/delete_document_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/get_document_by_id_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/get_documents_by_type_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/get_version_history_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/increment_download_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/list_documents_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/search_documents_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/update_document_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';

// Enum pour gérer les types d'erreurs
enum ProjectDocumentErrorType {
  network,
  validation,
  notFound,
  server,
  unknown,
}

class ProjectDocumentState {
  final List<ProjectDocumentEntity> documents;
  final ProjectDocumentEntity? selectedDocument;
  final bool isLoading;
  final ProjectDocumentErrorType? errorType;
  final String? errorMessage;

  ProjectDocumentState({
    this.documents = const [],
    this.selectedDocument,
    this.isLoading = false,
    this.errorType,
    this.errorMessage,
  });

  ProjectDocumentState copyWith({
    List<ProjectDocumentEntity>? documents,
    ProjectDocumentEntity? selectedDocument,
    bool? isLoading,
    ProjectDocumentErrorType? errorType,
    String? errorMessage,
  }) {
    return ProjectDocumentState(
      documents: documents ?? this.documents,
      selectedDocument: selectedDocument ?? this.selectedDocument,
      isLoading: isLoading ?? this.isLoading,
      errorType: errorType,
      errorMessage: errorMessage,
    );
  }
}

final projectDocumentProvider =
    StateNotifierProvider<ProjectDocumentNotifier, ProjectDocumentState>((ref) {
  return ProjectDocumentNotifier(
    listDocumentsUseCase: getIt<ListDocumentsUseCase>(),
    getDocumentByIdUseCase: getIt<GetDocumentByIdUseCase>(),
    createDocumentUseCase: getIt<CreateDocumentUseCase>(),
    updateDocumentUseCase: getIt<UpdateDocumentUseCase>(),
    deleteDocumentUseCase: getIt<DeleteDocumentUseCase>(),
    incrementDownloadUseCase: getIt<IncrementDownloadUseCase>(),
    getDocumentsByTypeUseCase: getIt<GetDocumentsByTypeUseCase>(),
    searchDocumentsUseCase: getIt<SearchDocumentsUseCase>(),
    createVersionUseCase: getIt<CreateVersionUseCase>(),
    getVersionHistoryUseCase: getIt<GetVersionHistoryUseCase>(),
  );
});

class ProjectDocumentNotifier extends StateNotifier<ProjectDocumentState> {
  final ListDocumentsUseCase listDocumentsUseCase;
  final GetDocumentByIdUseCase getDocumentByIdUseCase;
  final CreateDocumentUseCase createDocumentUseCase;
  final UpdateDocumentUseCase updateDocumentUseCase;
  final DeleteDocumentUseCase deleteDocumentUseCase;
  final IncrementDownloadUseCase incrementDownloadUseCase;
  final GetDocumentsByTypeUseCase getDocumentsByTypeUseCase;
  final SearchDocumentsUseCase searchDocumentsUseCase;
  final CreateVersionUseCase createVersionUseCase;
  final GetVersionHistoryUseCase getVersionHistoryUseCase;

  ProjectDocumentNotifier({
    required this.listDocumentsUseCase,
    required this.getDocumentByIdUseCase,
    required this.createDocumentUseCase,
    required this.updateDocumentUseCase,
    required this.deleteDocumentUseCase,
    required this.incrementDownloadUseCase,
    required this.getDocumentsByTypeUseCase,
    required this.searchDocumentsUseCase,
    required this.createVersionUseCase,
    required this.getVersionHistoryUseCase,
  }) : super(ProjectDocumentState());

  // Méthode utilitaire pour gérer les erreurs
  ProjectDocumentErrorType _mapErrorToType(dynamic error) {
    if (error.toString().contains('Network'))
      return ProjectDocumentErrorType.network;
    if (error.toString().contains('404'))
      return ProjectDocumentErrorType.notFound;
    if (error.toString().contains('Validation'))
      return ProjectDocumentErrorType.validation;
    if (error.toString().contains('Server'))
      return ProjectDocumentErrorType.server;
    return ProjectDocumentErrorType.unknown;
  }

  Future<void> fetchDocuments({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? type,
    String? category,
    String? visibility,
    bool? isApproved,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final documents = await listDocumentsUseCase(
        projectId: projectId,
        page: page,
        limit: limit,
        type: type,
        category: category,
        visibility: visibility,
        isApproved: isApproved,
      );
      state = state.copyWith(documents: documents, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchDocumentById(String documentId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final document = await getDocumentByIdUseCase(documentId);
      state = state.copyWith(selectedDocument: document, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> createDocument(
      Map<String, dynamic> data, FormData formData) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final document = await createDocumentUseCase(data, formData);
      final updatedDocuments = List<ProjectDocumentEntity>.from(state.documents)
        ..add(document);
      state = state.copyWith(documents: updatedDocuments, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateDocument(
      String documentId, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final document = await updateDocumentUseCase(documentId, data);
      final updatedDocuments = state.documents
          .map((d) => d.id == documentId ? document : d)
          .toList();
      state = state.copyWith(
          documents: updatedDocuments,
          selectedDocument: document,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> deleteDocument(String documentId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      await deleteDocumentUseCase(documentId);
      final updatedDocuments =
          state.documents.where((d) => d.id != documentId).toList();
      state = state.copyWith(
          documents: updatedDocuments,
          selectedDocument: null,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> incrementDownload(String documentId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      await incrementDownloadUseCase(documentId);
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchDocumentsByType(
      {required String type, required String projectId}) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final documents =
          await getDocumentsByTypeUseCase(type: type, projectId: projectId);
      state = state.copyWith(documents: documents, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> searchDocuments(String query) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final documents = await searchDocumentsUseCase(query);
      state = state.copyWith(documents: documents, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> createVersion(
      String documentId, Map<String, dynamic> data, FormData formData) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final document = await createVersionUseCase(documentId, data, formData);
      final updatedDocuments = state.documents
          .map((d) => d.id == documentId ? document : d)
          .toList();
      state = state.copyWith(
          documents: updatedDocuments,
          selectedDocument: document,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchVersionHistory(String documentId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final documents = await getVersionHistoryUseCase(documentId);
      state = state.copyWith(documents: documents, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }
}
