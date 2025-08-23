import 'package:find_invest_mobile/features/project_invitations/domain/entities/project_invitation_entity.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/entities/invitation_stat_entity.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/accept_invitation_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/create_invitation_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/delete_invitation_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/expire_invitation_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/get_invitation_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/get_role_stats_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/get_status_stats_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/list_invitations_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/list_pending_invitations_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/reject_invitation_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';

enum ProjectInvitationErrorType {
  network,
  validation,
  notFound,
  server,
  unknown,
}

class ProjectInvitationState {
  final List<ProjectInvitationEntity> invitations;
  final ProjectInvitationEntity? selectedInvitation;
  final List<InvitationStatEntity> statusStats;
  final List<InvitationStatEntity> roleStats;
  final bool isLoading;
  final ProjectInvitationErrorType? errorType;
  final String? errorMessage;

  ProjectInvitationState({
    this.invitations = const [],
    this.selectedInvitation,
    this.statusStats = const [],
    this.roleStats = const [],
    this.isLoading = false,
    this.errorType,
    this.errorMessage,
  });

  ProjectInvitationState copyWith({
    List<ProjectInvitationEntity>? invitations,
    ProjectInvitationEntity? selectedInvitation,
    List<InvitationStatEntity>? statusStats,
    List<InvitationStatEntity>? roleStats,
    bool? isLoading,
    ProjectInvitationErrorType? errorType,
    String? errorMessage,
  }) {
    return ProjectInvitationState(
      invitations: invitations ?? this.invitations,
      selectedInvitation: selectedInvitation ?? this.selectedInvitation,
      statusStats: statusStats ?? this.statusStats,
      roleStats: roleStats ?? this.roleStats,
      isLoading: isLoading ?? this.isLoading,
      errorType: errorType,
      errorMessage: errorMessage,
    );
  }
}

final projectInvitationProvider =
    StateNotifierProvider<ProjectInvitationNotifier, ProjectInvitationState>(
        (ref) {
  return ProjectInvitationNotifier(
    createInvitationUseCase: getIt<CreateInvitationUseCase>(),
    listInvitationsUseCase: getIt<ListInvitationsUseCase>(),
    listPendingInvitationsUseCase: getIt<ListPendingInvitationsUseCase>(),
    getInvitationUseCase: getIt<GetInvitationUseCase>(),
    acceptInvitationUseCase: getIt<AcceptInvitationUseCase>(),
    rejectInvitationUseCase: getIt<RejectInvitationUseCase>(),
    expireInvitationUseCase: getIt<ExpireInvitationUseCase>(),
    deleteInvitationUseCase: getIt<DeleteInvitationUseCase>(),
    getStatusStatsUseCase: getIt<GetStatusStatsUseCase>(),
    getRoleStatsUseCase: getIt<GetRoleStatsUseCase>(),
  );
});

class ProjectInvitationNotifier extends StateNotifier<ProjectInvitationState> {
  final CreateInvitationUseCase createInvitationUseCase;
  final ListInvitationsUseCase listInvitationsUseCase;
  final ListPendingInvitationsUseCase listPendingInvitationsUseCase;
  final GetInvitationUseCase getInvitationUseCase;
  final AcceptInvitationUseCase acceptInvitationUseCase;
  final RejectInvitationUseCase rejectInvitationUseCase;
  final ExpireInvitationUseCase expireInvitationUseCase;
  final DeleteInvitationUseCase deleteInvitationUseCase;
  final GetStatusStatsUseCase getStatusStatsUseCase;
  final GetRoleStatsUseCase getRoleStatsUseCase;

  ProjectInvitationNotifier({
    required this.createInvitationUseCase,
    required this.listInvitationsUseCase,
    required this.listPendingInvitationsUseCase,
    required this.getInvitationUseCase,
    required this.acceptInvitationUseCase,
    required this.rejectInvitationUseCase,
    required this.expireInvitationUseCase,
    required this.deleteInvitationUseCase,
    required this.getStatusStatsUseCase,
    required this.getRoleStatsUseCase,
  }) : super(ProjectInvitationState());

  ProjectInvitationErrorType _mapErrorToType(dynamic error) {
    if (error.toString().contains('Network'))
      return ProjectInvitationErrorType.network;
    if (error.toString().contains('404'))
      return ProjectInvitationErrorType.notFound;
    if (error.toString().contains('Validation'))
      return ProjectInvitationErrorType.validation;
    if (error.toString().contains('Server'))
      return ProjectInvitationErrorType.server;
    return ProjectInvitationErrorType.unknown;
  }

  Future<void> createInvitation(Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final invitation = await createInvitationUseCase(data);
      final updatedInvitations =
          List<ProjectInvitationEntity>.from(state.invitations)
            ..add(invitation);
      state = state.copyWith(invitations: updatedInvitations, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchInvitations({
    required String projectId,
    String? status,
    String? query,
    int page = 1,
    int limit = 10,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final invitations = await listInvitationsUseCase(
        projectId: projectId,
        status: status,
        query: query,
        page: page,
        limit: limit,
      );
      state = state.copyWith(invitations: invitations, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchPendingInvitations({
    required String projectId,
    int page = 1,
    int limit = 10,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final invitations = await listPendingInvitationsUseCase(
        projectId: projectId,
        page: page,
        limit: limit,
      );
      state = state.copyWith(invitations: invitations, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchInvitationById(String invitationId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final invitation = await getInvitationUseCase(invitationId);
      state = state.copyWith(selectedInvitation: invitation, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> acceptInvitation(String invitationId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final invitation = await acceptInvitationUseCase(invitationId);
      final updatedInvitations = state.invitations
          .map((i) => i.id == invitationId ? invitation : i)
          .toList();
      state = state.copyWith(
          invitations: updatedInvitations,
          selectedInvitation: invitation,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> rejectInvitation(String invitationId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final invitation = await rejectInvitationUseCase(invitationId);
      final updatedInvitations = state.invitations
          .map((i) => i.id == invitationId ? invitation : i)
          .toList();
      state = state.copyWith(
          invitations: updatedInvitations,
          selectedInvitation: invitation,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> expireInvitation(String invitationId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final invitation = await expireInvitationUseCase(invitationId);
      final updatedInvitations = state.invitations
          .map((i) => i.id == invitationId ? invitation : i)
          .toList();
      state = state.copyWith(
          invitations: updatedInvitations,
          selectedInvitation: invitation,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> deleteInvitation(String invitationId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      await deleteInvitationUseCase(invitationId);
      final updatedInvitations =
          state.invitations.where((i) => i.id != invitationId).toList();
      state = state.copyWith(
          invitations: updatedInvitations,
          selectedInvitation: null,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchStatusStats(String projectId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final stats = await getStatusStatsUseCase(projectId);
      state = state.copyWith(statusStats: stats, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchRoleStats(String projectId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final stats = await getRoleStatsUseCase(projectId);
      state = state.copyWith(roleStats: stats, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }
}
