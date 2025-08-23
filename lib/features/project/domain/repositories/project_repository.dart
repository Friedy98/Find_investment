import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:dio/dio.dart';

abstract class ProjectRepository {
  Future<List<ProjectEntity>> getProjects({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  });
  Future<Map<String, dynamic>> getProjectStats();
  Future<List<ProjectEntity>> getFeaturedProjects();
  Future<List<ProjectEntity>> searchProjects(String query);
  Future<ProjectEntity> getProject(String id);
  Future<List<ProjectEntity>> getMyProjects({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  });
  Future<ProjectEntity> createProject(Map<String, dynamic> data);
  Future<ProjectEntity> updateProject(String id, Map<String, dynamic> data);
  Future<void> deleteProject(String id);
  Future<List<Image>> uploadImages(String id, List<MultipartFile> files);
  Future<List<Video>> uploadVideos(String id, List<MultipartFile> files);
  Future<String> setCoverImage(String id, MultipartFile file);
  Future<String> setLogo(String id, MultipartFile file);
  Future<TeamMember> addTeamMember(String id, Map<String, dynamic> data);
  Future<TeamMember> updateTeamMember(
      String id, String memberId, Map<String, dynamic> data);
  Future<void> removeTeamMember(String id, String memberId);
  Future<ProjectEntity> submitForReview(String id);
  Future<ProjectEntity> duplicateProject(String id);
  Future<ProjectEntity> archiveProject(String id);
  Future<Map<String, dynamic>> getProjectAnalytics(String id);
  Future<List<UserEntity>> getProjectInvestors(String id);
  Future<Settings> updateProjectSettings(String id, Map<String, dynamic> data);
  Future<FinancialProjections> updateFinancialProjections(
      String id, Map<String, dynamic> data);
  Future<Impact> updateImpactData(String id, Map<String, dynamic> data);
  Future<List<Risk>> updateRisks(String id, Map<String, dynamic> data);
  Future<Seo> updateSEO(String id, Map<String, dynamic> data);
  Future<bool> toggleLike(String id);
  Future<bool> toggleBookmark(String id);
  Future<bool> toggleFollow(String id);
}
