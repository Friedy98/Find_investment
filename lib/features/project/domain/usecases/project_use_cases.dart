import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';

class GetProjectsUseCase {
  final ProjectRepository repository;

  GetProjectsUseCase({required this.repository});

  Future<List<ProjectEntity>> call({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  }) async {
    return await repository.getProjects(
      filters: filters,
      page: page,
      limit: limit,
    );
  }
}

class GetProjectStatsUseCase {
  final ProjectRepository repository;

  GetProjectStatsUseCase({required this.repository});

  Future<Map<String, dynamic>> call() async {
    return await repository.getProjectStats();
  }
}

class GetFeaturedProjectsUseCase {
  final ProjectRepository repository;

  GetFeaturedProjectsUseCase({required this.repository});

  Future<List<ProjectEntity>> call() async {
    return await repository.getFeaturedProjects();
  }
}

class SearchProjectsUseCase {
  final ProjectRepository repository;

  SearchProjectsUseCase({required this.repository});

  Future<List<ProjectEntity>> call(String query) async {
    return await repository.searchProjects(query);
  }
}

class GetProjectUseCase {
  final ProjectRepository repository;

  GetProjectUseCase({required this.repository});

  Future<ProjectEntity> call(String id) async {
    return await repository.getProject(id);
  }
}

class GetMyProjectsUseCase {
  final ProjectRepository repository;

  GetMyProjectsUseCase({required this.repository});

  Future<List<ProjectEntity>> call({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  }) async {
    return await repository.getMyProjects(
      filters: filters,
      page: page,
      limit: limit,
    );
  }
}

class CreateProjectUseCase {
  final ProjectRepository repository;

  CreateProjectUseCase({required this.repository});

  Future<ProjectEntity> call(Map<String, dynamic> data) async {
    return await repository.createProject(data);
  }
}

class UpdateProjectUseCase {
  final ProjectRepository repository;

  UpdateProjectUseCase({required this.repository});

  Future<ProjectEntity> call(String id, Map<String, dynamic> data) async {
    return await repository.updateProject(id, data);
  }
}

class DeleteProjectUseCase {
  final ProjectRepository repository;

  DeleteProjectUseCase({required this.repository});

  Future<void> call(String id) async {
    await repository.deleteProject(id);
  }
}

class UploadImagesUseCase {
  final ProjectRepository repository;

  UploadImagesUseCase({required this.repository});

  Future<List<Image>> call(String id, List<MultipartFile> files) async {
    return await repository.uploadImages(id, files);
  }
}

class UploadVideosUseCase {
  final ProjectRepository repository;

  UploadVideosUseCase({required this.repository});

  Future<List<Video>> call(String id, List<MultipartFile> files) async {
    return await repository.uploadVideos(id, files);
  }
}

class SetCoverImageUseCase {
  final ProjectRepository repository;

  SetCoverImageUseCase({required this.repository});

  Future<String> call(String id, MultipartFile file) async {
    return await repository.setCoverImage(id, file);
  }
}

class SetLogoUseCase {
  final ProjectRepository repository;

  SetLogoUseCase({required this.repository});

  Future<String> call(String id, MultipartFile file) async {
    return await repository.setLogo(id, file);
  }
}

class AddTeamMemberUseCase {
  final ProjectRepository repository;

  AddTeamMemberUseCase({required this.repository});

  Future<TeamMember> call(String id, Map<String, dynamic> data) async {
    return await repository.addTeamMember(id, data);
  }
}

class UpdateTeamMemberUseCase {
  final ProjectRepository repository;

  UpdateTeamMemberUseCase({required this.repository});

  Future<TeamMember> call(
      String id, String memberId, Map<String, dynamic> data) async {
    return await repository.updateTeamMember(id, memberId, data);
  }
}

class RemoveTeamMemberUseCase {
  final ProjectRepository repository;

  RemoveTeamMemberUseCase({required this.repository});

  Future<void> call(String id, String memberId) async {
    await repository.removeTeamMember(id, memberId);
  }
}

class SubmitForReviewUseCase {
  final ProjectRepository repository;

  SubmitForReviewUseCase({required this.repository});

  Future<ProjectEntity> call(String id) async {
    return await repository.submitForReview(id);
  }
}

class DuplicateProjectUseCase {
  final ProjectRepository repository;

  DuplicateProjectUseCase({required this.repository});

  Future<ProjectEntity> call(String id) async {
    return await repository.duplicateProject(id);
  }
}

class ArchiveProjectUseCase {
  final ProjectRepository repository;

  ArchiveProjectUseCase({required this.repository});

  Future<ProjectEntity> call(String id) async {
    return await repository.archiveProject(id);
  }
}

class GetProjectAnalyticsUseCase {
  final ProjectRepository repository;

  GetProjectAnalyticsUseCase({required this.repository});

  Future<Map<String, dynamic>> call(String id) async {
    return await repository.getProjectAnalytics(id);
  }
}

class GetProjectInvestorsUseCase {
  final ProjectRepository repository;

  GetProjectInvestorsUseCase({required this.repository});

  Future<List<UserEntity>> call(String id) async {
    return await repository.getProjectInvestors(id);
  }
}

class UpdateProjectSettingsUseCase {
  final ProjectRepository repository;

  UpdateProjectSettingsUseCase({required this.repository});

  Future<Settings> call(String id, Map<String, dynamic> data) async {
    return await repository.updateProjectSettings(id, data);
  }
}

class UpdateFinancialProjectionsUseCase {
  final ProjectRepository repository;

  UpdateFinancialProjectionsUseCase({required this.repository});

  Future<FinancialProjections> call(
      String id, Map<String, dynamic> data) async {
    return await repository.updateFinancialProjections(id, data);
  }
}

class UpdateImpactDataUseCase {
  final ProjectRepository repository;

  UpdateImpactDataUseCase({required this.repository});

  Future<Impact> call(String id, Map<String, dynamic> data) async {
    return await repository.updateImpactData(id, data);
  }
}

class UpdateRisksUseCase {
  final ProjectRepository repository;

  UpdateRisksUseCase({required this.repository});

  Future<List<Risk>> call(String id, Map<String, dynamic> data) async {
    return await repository.updateRisks(id, data);
  }
}

class UpdateSEOUseCase {
  final ProjectRepository repository;

  UpdateSEOUseCase({required this.repository});

  Future<Seo> call(String id, Map<String, dynamic> data) async {
    return await repository.updateSEO(id, data);
  }
}

class ToggleLikeUseCase {
  final ProjectRepository repository;

  ToggleLikeUseCase({required this.repository});

  Future<bool> call(String id) async {
    return await repository.toggleLike(id);
  }
}

class ToggleBookmarkUseCase {
  final ProjectRepository repository;

  ToggleBookmarkUseCase({required this.repository});

  Future<bool> call(String id) async {
    return await repository.toggleBookmark(id);
  }
}

class ToggleFollowUseCase {
  final ProjectRepository repository;

  ToggleFollowUseCase({required this.repository});

  Future<bool> call(String id) async {
    return await repository.toggleFollow(id);
  }
}
