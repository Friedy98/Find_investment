import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/add_deliverable_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/cancel_milestone_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/create_milestone_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/delete_milestone_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/get_milestone_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/get_progress_stats_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/get_status_stats_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/list_milestones_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/remove_deliverable_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/update_milestone_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/update_progress_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/update_status_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';

enum ProjectMilestoneErrorType {
  network,
  validation,
  notFound,
  server,
  unknown,
}

class ProjectMilestoneState {
  final List<ProjectMilestoneEntity> milestones;
  final ProjectMilestoneEntity? selectedMilestone;
  final ProgressStatsEntity? progressStats;
  final List<StatusStatsEntity>? statusStats;
  final bool isLoading;
  final ProjectMilestoneErrorType? errorType;
  final String? errorMessage;

  ProjectMilestoneState({
    this.milestones = const [],
    this.selectedMilestone,
    this.progressStats,
    this.statusStats,
    this.isLoading = false,
    this.errorType,
    this.errorMessage,
  });

  ProjectMilestoneState copyWith({
    List<ProjectMilestoneEntity>? milestones,
    ProjectMilestoneEntity? selectedMilestone,
    ProgressStatsEntity? progressStats,
    List<StatusStatsEntity>? statusStats,
    bool? isLoading,
    ProjectMilestoneErrorType? errorType,
    String? errorMessage,
  }) {
    return ProjectMilestoneState(
      milestones: milestones ?? this.milestones,
      selectedMilestone: selectedMilestone ?? this.selectedMilestone,
      progressStats: progressStats ?? this.progressStats,
      statusStats: statusStats ?? this.statusStats,
      isLoading: isLoading ?? this.isLoading,
      errorType: errorType,
      errorMessage: errorMessage,
    );
  }
}

final projectMilestoneProvider =
    StateNotifierProvider<ProjectMilestoneNotifier, ProjectMilestoneState>(
        (ref) {
  return ProjectMilestoneNotifier(
    listMilestonesUseCase: getIt<ListMilestonesUseCase>(),
    getMilestoneUseCase: getIt<GetMilestoneUseCase>(),
    createMilestoneUseCase: getIt<CreateMilestoneUseCase>(),
    updateMilestoneUseCase: getIt<UpdateMilestoneUseCase>(),
    deleteMilestoneUseCase: getIt<DeleteMilestoneUseCase>(),
    updateProgressUseCase: getIt<UpdateProgressUseCase>(),
    cancelMilestoneUseCase: getIt<CancelMilestoneUseCase>(),
    updateStatusUseCase: getIt<UpdateStatusUseCase>(),
    addDeliverableUseCase: getIt<AddDeliverableUseCase>(),
    removeDeliverableUseCase: getIt<RemoveDeliverableUseCase>(),
    getProgressStatsUseCase: getIt<GetProgressStatsUseCase>(),
    getStatusStatsUseCase: getIt<GetStatusStatsUseCase>(),
  );
});

class ProjectMilestoneNotifier extends StateNotifier<ProjectMilestoneState> {
  final ListMilestonesUseCase listMilestonesUseCase;
  final GetMilestoneUseCase getMilestoneUseCase;
  final CreateMilestoneUseCase createMilestoneUseCase;
  final UpdateMilestoneUseCase updateMilestoneUseCase;
  final DeleteMilestoneUseCase deleteMilestoneUseCase;
  final UpdateProgressUseCase updateProgressUseCase;
  final CancelMilestoneUseCase cancelMilestoneUseCase;
  final UpdateStatusUseCase updateStatusUseCase;
  final AddDeliverableUseCase addDeliverableUseCase;
  final RemoveDeliverableUseCase removeDeliverableUseCase;
  final GetProgressStatsUseCase getProgressStatsUseCase;
  final GetStatusStatsUseCase getStatusStatsUseCase;

  ProjectMilestoneNotifier({
    required this.listMilestonesUseCase,
    required this.getMilestoneUseCase,
    required this.createMilestoneUseCase,
    required this.updateMilestoneUseCase,
    required this.deleteMilestoneUseCase,
    required this.updateProgressUseCase,
    required this.cancelMilestoneUseCase,
    required this.updateStatusUseCase,
    required this.addDeliverableUseCase,
    required this.removeDeliverableUseCase,
    required this.getProgressStatsUseCase,
    required this.getStatusStatsUseCase,
  }) : super(ProjectMilestoneState());

  ProjectMilestoneErrorType _mapErrorToType(dynamic error) {
    if (error.toString().contains('Network'))
      return ProjectMilestoneErrorType.network;
    if (error.toString().contains('404'))
      return ProjectMilestoneErrorType.notFound;
    if (error.toString().contains('Validation'))
      return ProjectMilestoneErrorType.validation;
    if (error.toString().contains('Server'))
      return ProjectMilestoneErrorType.server;
    return ProjectMilestoneErrorType.unknown;
  }

  Future<void> fetchMilestones({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    String? query,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final milestones = await listMilestonesUseCase(
        projectId: projectId,
        page: page,
        limit: limit,
        status: status,
        startDate: startDate,
        endDate: endDate,
        query: query,
      );
      state = state.copyWith(milestones: milestones, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchMilestoneById(String milestoneId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final milestone = await getMilestoneUseCase(milestoneId);
      state = state.copyWith(selectedMilestone: milestone, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> createMilestone(Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final milestone = await createMilestoneUseCase(data);
      final updatedMilestones =
          List<ProjectMilestoneEntity>.from(state.milestones)..add(milestone);
      state = state.copyWith(milestones: updatedMilestones, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateMilestone(
      String milestoneId, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final milestone = await updateMilestoneUseCase(milestoneId, data);
      final updatedMilestones = state.milestones
          .map((m) => m.id == milestoneId ? milestone : m)
          .toList();
      state = state.copyWith(
          milestones: updatedMilestones,
          selectedMilestone: milestone,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> deleteMilestone(String milestoneId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      await deleteMilestoneUseCase(milestoneId);
      final updatedMilestones =
          state.milestones.where((m) => m.id != milestoneId).toList();
      state = state.copyWith(
          milestones: updatedMilestones,
          selectedMilestone: null,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateProgress(String milestoneId, int progress) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final milestone = await updateProgressUseCase(milestoneId, progress);
      final updatedMilestones = state.milestones
          .map((m) => m.id == milestoneId ? milestone : m)
          .toList();
      state = state.copyWith(
          milestones: updatedMilestones,
          selectedMilestone: milestone,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> cancelMilestone(String milestoneId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final milestone = await cancelMilestoneUseCase(milestoneId);
      final updatedMilestones = state.milestones
          .map((m) => m.id == milestoneId ? milestone : m)
          .toList();
      state = state.copyWith(
          milestones: updatedMilestones,
          selectedMilestone: milestone,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateStatus(String milestoneId, String status) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final milestone = await updateStatusUseCase(milestoneId, status);
      final updatedMilestones = state.milestones
          .map((m) => m.id == milestoneId ? milestone : m)
          .toList();
      state = state.copyWith(
          milestones: updatedMilestones,
          selectedMilestone: milestone,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> addDeliverable(
      String milestoneId, Map<String, dynamic> data, FormData fileData) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final milestone =
          await addDeliverableUseCase(milestoneId, data, fileData);
      final updatedMilestones = state.milestones
          .map((m) => m.id == milestoneId ? milestone : m)
          .toList();
      state = state.copyWith(
          milestones: updatedMilestones,
          selectedMilestone: milestone,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> removeDeliverable(
      String milestoneId, String deliverableId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final milestone =
          await removeDeliverableUseCase(milestoneId, deliverableId);
      final updatedMilestones = state.milestones
          .map((m) => m.id == milestoneId ? milestone : m)
          .toList();
      state = state.copyWith(
          milestones: updatedMilestones,
          selectedMilestone: milestone,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchProgressStats(String projectId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final stats = await getProgressStatsUseCase(projectId);
      state = state.copyWith(progressStats: stats, isLoading: false);
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
}
