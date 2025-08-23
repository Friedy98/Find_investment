import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/add_attachment_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/create_update_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/delete_update_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/get_latest_updates_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/get_update_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/get_updates_by_type_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/list_public_updates_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/list_updates_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/remove_attachment_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/search_updates_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/toggle_visibility_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/update_update_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';

enum ProjectUpdateErrorType {
  network,
  validation,
  notFound,
  server,
  unknown,
}

class ProjectUpdateState {
  final List<ProjectUpdateEntity> updates;
  final ProjectUpdateEntity? selectedUpdate;
  final bool isLoading;
  final ProjectUpdateErrorType? errorType;
  final String? errorMessage;

  ProjectUpdateState({
    this.updates = const [],
    this.selectedUpdate,
    this.isLoading = false,
    this.errorType,
    this.errorMessage,
  });

  ProjectUpdateState copyWith({
    List<ProjectUpdateEntity>? updates,
    ProjectUpdateEntity? selectedUpdate,
    bool? isLoading,
    ProjectUpdateErrorType? errorType,
    String? errorMessage,
  }) {
    return ProjectUpdateState(
      updates: updates ?? this.updates,
      selectedUpdate: selectedUpdate ?? this.selectedUpdate,
      isLoading: isLoading ?? this.isLoading,
      errorType: errorType,
      errorMessage: errorMessage,
    );
  }
}

final projectUpdateProvider =
    StateNotifierProvider<ProjectUpdateNotifier, ProjectUpdateState>((ref) {
  return ProjectUpdateNotifier(
    listUpdatesUseCase: getIt<ListUpdatesUseCase>(),
    listPublicUpdatesUseCase: getIt<ListPublicUpdatesUseCase>(),
    getUpdatesByTypeUseCase: getIt<GetUpdatesByTypeUseCase>(),
    getUpdateUseCase: getIt<GetUpdateUseCase>(),
    createUpdateUseCase: getIt<CreateUpdateUseCase>(),
    updateUpdateUseCase: getIt<UpdateUpdateUseCase>(),
    toggleVisibilityUseCase: getIt<ToggleVisibilityUseCase>(),
    addAttachmentUseCase: getIt<AddAttachmentUseCase>(),
    removeAttachmentUseCase: getIt<RemoveAttachmentUseCase>(),
    searchUpdatesUseCase: getIt<SearchUpdatesUseCase>(),
    getLatestUpdatesUseCase: getIt<GetLatestUpdatesUseCase>(),
    deleteUpdateUseCase: getIt<DeleteUpdateUseCase>(),
  );
});

class ProjectUpdateNotifier extends StateNotifier<ProjectUpdateState> {
  final ListUpdatesUseCase listUpdatesUseCase;
  final ListPublicUpdatesUseCase listPublicUpdatesUseCase;
  final GetUpdatesByTypeUseCase getUpdatesByTypeUseCase;
  final GetUpdateUseCase getUpdateUseCase;
  final CreateUpdateUseCase createUpdateUseCase;
  final UpdateUpdateUseCase updateUpdateUseCase;
  final ToggleVisibilityUseCase toggleVisibilityUseCase;
  final AddAttachmentUseCase addAttachmentUseCase;
  final RemoveAttachmentUseCase removeAttachmentUseCase;
  final SearchUpdatesUseCase searchUpdatesUseCase;
  final GetLatestUpdatesUseCase getLatestUpdatesUseCase;
  final DeleteUpdateUseCase deleteUpdateUseCase;

  ProjectUpdateNotifier({
    required this.listUpdatesUseCase,
    required this.listPublicUpdatesUseCase,
    required this.getUpdatesByTypeUseCase,
    required this.getUpdateUseCase,
    required this.createUpdateUseCase,
    required this.updateUpdateUseCase,
    required this.toggleVisibilityUseCase,
    required this.addAttachmentUseCase,
    required this.removeAttachmentUseCase,
    required this.searchUpdatesUseCase,
    required this.getLatestUpdatesUseCase,
    required this.deleteUpdateUseCase,
  }) : super(ProjectUpdateState());

  ProjectUpdateErrorType _mapErrorToType(dynamic error) {
    if (error.toString().contains('Network'))
      return ProjectUpdateErrorType.network;
    if (error.toString().contains('404'))
      return ProjectUpdateErrorType.notFound;
    if (error.toString().contains('Validation'))
      return ProjectUpdateErrorType.validation;
    if (error.toString().contains('Server'))
      return ProjectUpdateErrorType.server;
    return ProjectUpdateErrorType.unknown;
  }

  Future<void> fetchUpdates({
    required String projectId,
    String? type,
    bool? isPublic,
    int page = 1,
    int limit = 10,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final updates = await listUpdatesUseCase(
        projectId: projectId,
        type: type,
        isPublic: isPublic,
        page: page,
        limit: limit,
      );
      state = state.copyWith(updates: updates, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchPublicUpdates({
    String? projectId,
    String? type,
    int page = 1,
    int limit = 10,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final updates = await listPublicUpdatesUseCase(
        projectId: projectId,
        type: type,
        page: page,
        limit: limit,
      );
      state = state.copyWith(updates: updates, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchUpdatesByType({
    required String type,
    String? projectId,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final updates = await getUpdatesByTypeUseCase(
        type: type,
        projectId: projectId,
      );
      state = state.copyWith(updates: updates, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchUpdate(String updateId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final update = await getUpdateUseCase(updateId);
      state = state.copyWith(selectedUpdate: update, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> createUpdate(
      Map<String, dynamic> data, FormData? formData) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final update = await createUpdateUseCase(data, formData);
      final updatedUpdates = List<ProjectUpdateEntity>.from(state.updates)
        ..add(update);
      state = state.copyWith(updates: updatedUpdates, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateUpdate(String updateId, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final update = await updateUpdateUseCase(updateId, data);
      final updatedUpdates =
          state.updates.map((u) => u.id == updateId ? update : u).toList();
      state = state.copyWith(
          updates: updatedUpdates, selectedUpdate: update, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> toggleVisibility(String updateId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final update = await toggleVisibilityUseCase(updateId);
      final updatedUpdates =
          state.updates.map((u) => u.id == updateId ? update : u).toList();
      state = state.copyWith(
          updates: updatedUpdates, selectedUpdate: update, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> addAttachment(String updateId, FormData formData) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final update = await addAttachmentUseCase(updateId, formData);
      final updatedUpdates =
          state.updates.map((u) => u.id == updateId ? update : u).toList();
      state = state.copyWith(
          updates: updatedUpdates, selectedUpdate: update, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> removeAttachment(String updateId, String attachmentId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final update = await removeAttachmentUseCase(updateId, attachmentId);
      final updatedUpdates =
          state.updates.map((u) => u.id == updateId ? update : u).toList();
      state = state.copyWith(
          updates: updatedUpdates, selectedUpdate: update, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> searchUpdates({
    required String query,
    int page = 1,
    int limit = 10,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final updates = await searchUpdatesUseCase(
        query: query,
        page: page,
        limit: limit,
      );
      state = state.copyWith(updates: updates, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchLatestUpdates({int limit = 5}) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final updates = await getLatestUpdatesUseCase(limit: limit);
      state = state.copyWith(updates: updates, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> deleteUpdate(String updateId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      await deleteUpdateUseCase(updateId);
      final updatedUpdates =
          state.updates.where((u) => u.id != updateId).toList();
      state = state.copyWith(
          updates: updatedUpdates, selectedUpdate: null, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }
}
