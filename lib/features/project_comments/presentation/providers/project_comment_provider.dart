import 'package:find_invest_mobile/features/project_comments/domain/entities/project_comment_entity.dart';
import 'package:find_invest_mobile/features/project_comments/domain/usecases/create_comment_use_case.dart';
import 'package:find_invest_mobile/features/project_comments/domain/usecases/delete_comment_use_case.dart';
import 'package:find_invest_mobile/features/project_comments/domain/usecases/flag_comment_use_case.dart';
import 'package:find_invest_mobile/features/project_comments/domain/usecases/get_project_comments_use_case.dart';
import 'package:find_invest_mobile/features/project_comments/domain/usecases/update_comment_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';

enum ProjectCommentErrorType {
  network,
  validation,
  notFound,
  server,
  unknown,
}

class ProjectCommentState {
  final List<ProjectCommentEntity> comments;
  final ProjectCommentEntity? selectedComment;
  final bool isLoading;
  final ProjectCommentErrorType? errorType;
  final String? errorMessage;

  ProjectCommentState({
    this.comments = const [],
    this.selectedComment,
    this.isLoading = false,
    this.errorType,
    this.errorMessage,
  });

  ProjectCommentState copyWith({
    List<ProjectCommentEntity>? comments,
    ProjectCommentEntity? selectedComment,
    bool? isLoading,
    ProjectCommentErrorType? errorType,
    String? errorMessage,
  }) {
    return ProjectCommentState(
      comments: comments ?? this.comments,
      selectedComment: selectedComment ?? this.selectedComment,
      isLoading: isLoading ?? this.isLoading,
      errorType: errorType,
      errorMessage: errorMessage,
    );
  }
}

final projectCommentProvider =
    StateNotifierProvider<ProjectCommentNotifier, ProjectCommentState>((ref) {
  return ProjectCommentNotifier(
    getProjectCommentsUseCase: getIt<GetProjectCommentsUseCase>(),
    createCommentUseCase: getIt<CreateCommentUseCase>(),
    updateCommentUseCase: getIt<UpdateCommentUseCase>(),
    deleteCommentUseCase: getIt<DeleteCommentUseCase>(),
    flagCommentUseCase: getIt<FlagCommentUseCase>(),
  );
});

class ProjectCommentNotifier extends StateNotifier<ProjectCommentState> {
  final GetProjectCommentsUseCase getProjectCommentsUseCase;
  final CreateCommentUseCase createCommentUseCase;
  final UpdateCommentUseCase updateCommentUseCase;
  final DeleteCommentUseCase deleteCommentUseCase;
  final FlagCommentUseCase flagCommentUseCase;

  ProjectCommentNotifier({
    required this.getProjectCommentsUseCase,
    required this.createCommentUseCase,
    required this.updateCommentUseCase,
    required this.deleteCommentUseCase,
    required this.flagCommentUseCase,
  }) : super(ProjectCommentState());

  ProjectCommentErrorType _mapErrorToType(dynamic error) {
    if (error.toString().contains('Network'))
      return ProjectCommentErrorType.network;
    if (error.toString().contains('404'))
      return ProjectCommentErrorType.notFound;
    if (error.toString().contains('Validation'))
      return ProjectCommentErrorType.validation;
    if (error.toString().contains('Server'))
      return ProjectCommentErrorType.server;
    return ProjectCommentErrorType.unknown;
  }

  Future<void> fetchProjectComments({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? parent,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final comments = await getProjectCommentsUseCase(
        projectId: projectId,
        page: page,
        limit: limit,
        parent: parent,
      );
      state = state.copyWith(comments: comments, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> createComment(
      String projectId, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final comment = await createCommentUseCase(projectId, data);
      final updatedComments = List<ProjectCommentEntity>.from(state.comments)
        ..add(comment);
      state = state.copyWith(comments: updatedComments, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateComment(
      String projectId, String commentId, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final comment = await updateCommentUseCase(projectId, commentId, data);
      final updatedComments =
          state.comments.map((c) => c.id == commentId ? comment : c).toList();
      state = state.copyWith(
          comments: updatedComments,
          selectedComment: comment,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> deleteComment(String projectId, String commentId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      await deleteCommentUseCase(projectId, commentId);
      final updatedComments =
          state.comments.where((c) => c.id != commentId).toList();
      state = state.copyWith(
          comments: updatedComments, selectedComment: null, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> flagComment(
      String projectId, String commentId, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      await flagCommentUseCase(projectId, commentId, data);
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }
}
