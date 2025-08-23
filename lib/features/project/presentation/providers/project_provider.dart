import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/add_team_member_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/archive_project_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/create_project_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/delete_project_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/duplicate_project_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_featured_projects_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_my_projects_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_project_analytics_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_project_investors_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_project_stats_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_project_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_projects_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/remove_team_member_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/search_projects_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/set_cover_image_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/set_logo_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/submit_for_review_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/toggle_bookmark_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/toggle_follow_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/toggle_like_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_financial_projections_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_impact_data_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_project_settings_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_project_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_risks_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_seo_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/upload_images_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/upload_videos_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_team_member_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';

enum ProjectErrorType {
  network,
  validation,
  notFound,
  server,
  unknown,
}

class ProjectState {
  final List<ProjectEntity> projects;
  final ProjectEntity? selectedProject;
  final bool isLoading;
  final ProjectErrorType? errorType;
  final String? errorMessage;
  final Map<String, dynamic>? projectStats;
  final List<UserEntity>? projectInvestors;
  final Map<String, dynamic>? projectAnalytics;

  ProjectState({
    this.projects = const [],
    this.selectedProject,
    this.isLoading = false,
    this.errorType,
    this.errorMessage,
    this.projectStats,
    this.projectInvestors,
    this.projectAnalytics,
  });

  ProjectState copyWith({
    List<ProjectEntity>? projects,
    ProjectEntity? selectedProject,
    bool? isLoading,
    ProjectErrorType? errorType,
    String? errorMessage,
    Map<String, dynamic>? projectStats,
    List<UserEntity>? projectInvestors,
    Map<String, dynamic>? projectAnalytics,
  }) {
    return ProjectState(
      projects: projects ?? this.projects,
      selectedProject: selectedProject ?? this.selectedProject,
      isLoading: isLoading ?? this.isLoading,
      errorType: errorType,
      errorMessage: errorMessage,
      projectStats: projectStats ?? this.projectStats,
      projectInvestors: projectInvestors ?? this.projectInvestors,
      projectAnalytics: projectAnalytics ?? this.projectAnalytics,
    );
  }
}

final projectProvider =
    StateNotifierProvider<ProjectNotifier, ProjectState>((ref) {
  return ProjectNotifier(
    getProjectsUseCase: getIt<GetProjectsUseCase>(),
    getProjectStatsUseCase: getIt<GetProjectStatsUseCase>(),
    getFeaturedProjectsUseCase: getIt<GetFeaturedProjectsUseCase>(),
    searchProjectsUseCase: getIt<SearchProjectsUseCase>(),
    getProjectUseCase: getIt<GetProjectUseCase>(),
    getMyProjectsUseCase: getIt<GetMyProjectsUseCase>(),
    createProjectUseCase: getIt<CreateProjectUseCase>(),
    updateProjectUseCase: getIt<UpdateProjectUseCase>(),
    deleteProjectUseCase: getIt<DeleteProjectUseCase>(),
    uploadImagesUseCase: getIt<UploadImagesUseCase>(),
    uploadVideosUseCase: getIt<UploadVideosUseCase>(),
    setCoverImageUseCase: getIt<SetCoverImageUseCase>(),
    setLogoUseCase: getIt<SetLogoUseCase>(),
    addTeamMemberUseCase: getIt<AddTeamMemberUseCase>(),
    updateTeamMemberUseCase: getIt<UpdateTeamMemberUseCase>(),
    removeTeamMemberUseCase: getIt<RemoveTeamMemberUseCase>(),
    submitForReviewUseCase: getIt<SubmitForReviewUseCase>(),
    duplicateProjectUseCase: getIt<DuplicateProjectUseCase>(),
    archiveProjectUseCase: getIt<ArchiveProjectUseCase>(),
    getProjectAnalyticsUseCase: getIt<GetProjectAnalyticsUseCase>(),
    getProjectInvestorsUseCase: getIt<GetProjectInvestorsUseCase>(),
    updateProjectSettingsUseCase: getIt<UpdateProjectSettingsUseCase>(),
    updateFinancialProjectionsUseCase:
        getIt<UpdateFinancialProjectionsUseCase>(),
    updateImpactDataUseCase: getIt<UpdateImpactDataUseCase>(),
    updateRisksUseCase: getIt<UpdateRisksUseCase>(),
    updateSEOUseCase: getIt<UpdateSEOUseCase>(),
    toggleLikeUseCase: getIt<ToggleLikeUseCase>(),
    toggleBookmarkUseCase: getIt<ToggleBookmarkUseCase>(),
    toggleFollowUseCase: getIt<ToggleFollowUseCase>(),
  );
});

class ProjectNotifier extends StateNotifier<ProjectState> {
  final GetProjectsUseCase getProjectsUseCase;
  final GetProjectStatsUseCase getProjectStatsUseCase;
  final GetFeaturedProjectsUseCase getFeaturedProjectsUseCase;
  final SearchProjectsUseCase searchProjectsUseCase;
  final GetProjectUseCase getProjectUseCase;
  final GetMyProjectsUseCase getMyProjectsUseCase;
  final CreateProjectUseCase createProjectUseCase;
  final UpdateProjectUseCase updateProjectUseCase;
  final DeleteProjectUseCase deleteProjectUseCase;
  final UploadImagesUseCase uploadImagesUseCase;
  final UploadVideosUseCase uploadVideosUseCase;
  final SetCoverImageUseCase setCoverImageUseCase;
  final SetLogoUseCase setLogoUseCase;
  final AddTeamMemberUseCase addTeamMemberUseCase;
  final UpdateTeamMemberUseCase updateTeamMemberUseCase;
  final RemoveTeamMemberUseCase removeTeamMemberUseCase;
  final SubmitForReviewUseCase submitForReviewUseCase;
  final DuplicateProjectUseCase duplicateProjectUseCase;
  final ArchiveProjectUseCase archiveProjectUseCase;
  final GetProjectAnalyticsUseCase getProjectAnalyticsUseCase;
  final GetProjectInvestorsUseCase getProjectInvestorsUseCase;
  final UpdateProjectSettingsUseCase updateProjectSettingsUseCase;
  final UpdateFinancialProjectionsUseCase updateFinancialProjectionsUseCase;
  final UpdateImpactDataUseCase updateImpactDataUseCase;
  final UpdateRisksUseCase updateRisksUseCase;
  final UpdateSEOUseCase updateSEOUseCase;
  final ToggleLikeUseCase toggleLikeUseCase;
  final ToggleBookmarkUseCase toggleBookmarkUseCase;
  final ToggleFollowUseCase toggleFollowUseCase;

  ProjectNotifier({
    required this.getProjectsUseCase,
    required this.getProjectStatsUseCase,
    required this.getFeaturedProjectsUseCase,
    required this.searchProjectsUseCase,
    required this.getProjectUseCase,
    required this.getMyProjectsUseCase,
    required this.createProjectUseCase,
    required this.updateProjectUseCase,
    required this.deleteProjectUseCase,
    required this.uploadImagesUseCase,
    required this.uploadVideosUseCase,
    required this.setCoverImageUseCase,
    required this.setLogoUseCase,
    required this.addTeamMemberUseCase,
    required this.updateTeamMemberUseCase,
    required this.removeTeamMemberUseCase,
    required this.submitForReviewUseCase,
    required this.duplicateProjectUseCase,
    required this.archiveProjectUseCase,
    required this.getProjectAnalyticsUseCase,
    required this.getProjectInvestorsUseCase,
    required this.updateProjectSettingsUseCase,
    required this.updateFinancialProjectionsUseCase,
    required this.updateImpactDataUseCase,
    required this.updateRisksUseCase,
    required this.updateSEOUseCase,
    required this.toggleLikeUseCase,
    required this.toggleBookmarkUseCase,
    required this.toggleFollowUseCase,
  }) : super(ProjectState());

  ProjectErrorType _mapErrorToType(dynamic error) {
    if (error.toString().contains('Network')) return ProjectErrorType.network;
    if (error.toString().contains('404')) return ProjectErrorType.notFound;
    if (error.toString().contains('Validation'))
      return ProjectErrorType.validation;
    if (error.toString().contains('Server')) return ProjectErrorType.server;
    return ProjectErrorType.unknown;
  }

  Future<void> getProjects({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final projects = await getProjectsUseCase(
        filters: filters,
        page: page,
        limit: limit,
      );
      state = state.copyWith(projects: projects, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> getProjectStats() async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final stats = await getProjectStatsUseCase();
      state = state.copyWith(projectStats: stats, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> getFeaturedProjects() async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final projects = await getFeaturedProjectsUseCase();
      state = state.copyWith(projects: projects, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> searchProjects(String query) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final projects = await searchProjectsUseCase(query);
      state = state.copyWith(projects: projects, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> getProject(String id) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final project = await getProjectUseCase(id);
      state = state.copyWith(selectedProject: project, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> getMyProjects({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final projects = await getMyProjectsUseCase(
        filters: filters,
        page: page,
        limit: limit,
      );
      state = state.copyWith(projects: projects, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> createProject(Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final project = await createProjectUseCase(data);
      final updatedProjects = List<ProjectEntity>.from(state.projects)
        ..add(project);
      state = state.copyWith(projects: updatedProjects, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateProject(String id, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final project = await updateProjectUseCase(id, data);
      final updatedProjects =
          state.projects.map((p) => p.id == id ? project : p).toList();
      state = state.copyWith(
          projects: updatedProjects,
          selectedProject: project,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> deleteProject(String id) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      await deleteProjectUseCase(id);
      final updatedProjects = state.projects.where((p) => p.id != id).toList();
      state = state.copyWith(
          projects: updatedProjects, selectedProject: null, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> uploadImages(String id, List<MultipartFile> files) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final project =
          await getProjectUseCase(id); // Assuming update after upload
      final imageUrls = await uploadImagesUseCase(id, files);
      if (project != null) {
        final updatedProject =
            project.copyWith(images: [...?project.images, ...imageUrls]);
        final updatedProjects =
            state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        state = state.copyWith(
            projects: updatedProjects,
            selectedProject: updatedProject,
            isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> uploadVideos(String id, List<MultipartFile> files) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final project =
          await getProjectUseCase(id); // Assuming update after upload
      final videoUrls = await uploadVideosUseCase(id, files);
      if (project != null) {
        final updatedProject =
            project.copyWith(videos: [...?project.videos, ...videoUrls]);
        final updatedProjects =
            state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        state = state.copyWith(
            projects: updatedProjects,
            selectedProject: updatedProject,
            isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> setCoverImage(String id, MultipartFile file) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final coverUrl = await setCoverImageUseCase(id, file);
      final project = await getProjectUseCase(id);
      if (project != null) {
        final updatedProject = project.copyWith(coverImage: coverUrl);
        final updatedProjects =
            state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        state = state.copyWith(
            projects: updatedProjects,
            selectedProject: updatedProject,
            isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> setLogo(String id, MultipartFile file) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final logoUrl = await setLogoUseCase(id, file);
      final project = await getProjectUseCase(id);
      if (project != null) {
        final updatedProject = project.copyWith(logo: logoUrl);
        final updatedProjects =
            state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        state = state.copyWith(
            projects: updatedProjects,
            selectedProject: updatedProject,
            isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> addTeamMember(String id, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final project = await getProjectUseCase(id);
      final teamMember = await addTeamMemberUseCase(id, data);
      if (project != null) {
        final updatedProject =
            project.copyWith(team: [...?project.team, teamMember]);
        final updatedProjects =
            state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        state = state.copyWith(
            projects: updatedProjects,
            selectedProject: updatedProject,
            isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateTeamMember(
      String id, String memberId, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final project = await getProjectUseCase(id);
      final updatedMember = await updateTeamMemberUseCase(id, memberId, data);
      if (project != null) {
        final updatedTeam = project.team
            ?.map((m) => (m.user?['id'] ?? "") == memberId ? updatedMember : m)
            .toList();
        final updatedProject = project.copyWith(team: updatedTeam);
        final updatedProjects =
            state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        state = state.copyWith(
            projects: updatedProjects,
            selectedProject: updatedProject,
            isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> removeTeamMember(String id, String memberId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final project = await getProjectUseCase(id);
      await removeTeamMemberUseCase(id, memberId);
      if (project != null) {
        final updatedTeam = project.team
            ?.where((m) => (m.user?['id'] ?? "") != memberId)
            .toList();
        final updatedProject = project.copyWith(team: updatedTeam);
        final updatedProjects =
            state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        state = state.copyWith(
            projects: updatedProjects,
            selectedProject: updatedProject,
            isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> submitForReview(String id) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final project = await submitForReviewUseCase(id);
      final updatedProjects =
          state.projects.map((p) => p.id == id ? project : p).toList();
      state = state.copyWith(
          projects: updatedProjects,
          selectedProject: project,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> duplicateProject(String id) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final project = await duplicateProjectUseCase(id);
      final updatedProjects = List<ProjectEntity>.from(state.projects)
        ..add(project);
      state = state.copyWith(projects: updatedProjects, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> archiveProject(String id) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final project = await archiveProjectUseCase(id);
      final updatedProjects =
          state.projects.map((p) => p.id == id ? project : p).toList();
      state = state.copyWith(
          projects: updatedProjects,
          selectedProject: project,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> getProjectAnalytics(String id) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final analytics = await getProjectAnalyticsUseCase(id);
      state = state.copyWith(projectAnalytics: analytics, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> getProjectInvestors(String id) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final investors = await getProjectInvestorsUseCase(id);
      state = state.copyWith(projectInvestors: investors, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateProjectSettings(
      String id, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final settings = await updateProjectSettingsUseCase(id, data);
      final project = await getProjectUseCase(id);
      if (project != null) {
        final updatedProject = project.copyWith(settings: settings);
        final updatedProjects =
            state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        state = state.copyWith(
            projects: updatedProjects,
            selectedProject: updatedProject,
            isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateFinancialProjections(
      String id, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final projections = await updateFinancialProjectionsUseCase(id, data);
      final project = await getProjectUseCase(id);
      if (project != null) {
        final updatedProject =
            project.copyWith(financialProjections: projections);
        final updatedProjects =
            state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        state = state.copyWith(
            projects: updatedProjects,
            selectedProject: updatedProject,
            isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateImpactData(String id, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final impact = await updateImpactDataUseCase(id, data);
      final project = await getProjectUseCase(id);
      if (project != null) {
        final updatedProject = project.copyWith(impact: impact);
        final updatedProjects =
            state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        state = state.copyWith(
            projects: updatedProjects,
            selectedProject: updatedProject,
            isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateRisks(String id, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final risks = await updateRisksUseCase(id, data);
      final project = await getProjectUseCase(id);
      if (project != null) {
        final updatedProject = project.copyWith(risks: risks);
        final updatedProjects =
            state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        state = state.copyWith(
            projects: updatedProjects,
            selectedProject: updatedProject,
            isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateSEO(String id, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final seo = await updateSEOUseCase(id, data);
      final project = await getProjectUseCase(id);
      if (project != null) {
        final updatedProject = project.copyWith(seo: seo);
        final updatedProjects =
            state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        state = state.copyWith(
            projects: updatedProjects,
            selectedProject: updatedProject,
            isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> toggleLike(String id) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final liked = await toggleLikeUseCase(id);
      final project = await getProjectUseCase(id);
      if (project != null) {
        // final updatedProject = project.copyWith(isLiked: liked);
        // final updatedProjects =
        //     state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        // state = state.copyWith(
        //     projects: updatedProjects,
        //     selectedProject: updatedProject,
        //     isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> toggleBookmark(String id) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final bookmarked = await toggleBookmarkUseCase(id);
      final project = await getProjectUseCase(id);
      if (project != null) {
        // final updatedProject = project.copyWith(isBookmarked: bookmarked);
        // final updatedProjects =
        //     state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        // state = state.copyWith(
        //     projects: updatedProjects,
        //     selectedProject: updatedProject,
        //     isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> toggleFollow(String id) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final followed = await toggleFollowUseCase(id);
      final project = await getProjectUseCase(id);
      if (project != null) {
        // final updatedProject = project.copyWith(isFollowed: followed);
        // final updatedProjects =
        //     state.projects.map((p) => p.id == id ? updatedProject : p).toList();
        // state = state.copyWith(
        //     projects: updatedProjects,
        //     selectedProject: updatedProject,
        //     isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }
}
