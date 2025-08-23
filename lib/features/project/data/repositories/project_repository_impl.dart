import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/project/data/datasources/project_remote_datasource.dart';
import 'package:find_invest_mobile/features/project/data/extensions/project_extensions.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  final ProjectRemoteDataSource remoteDataSource;

  ProjectRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<ProjectEntity>> getProjects({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  }) async {
    final projects = await remoteDataSource.getProjects(
      filters: filters,
      page: page,
      limit: limit,
    );
    return projects.map((model) => model.toEntity()).toList();
  }

  @override
  Future<Map<String, dynamic>> getProjectStats() async {
    final stats = await remoteDataSource.getProjectStats();
    return stats;
  }

  @override
  Future<List<ProjectEntity>> getFeaturedProjects() async {
    final projects = await remoteDataSource.getFeaturedProjects();
    return projects.map((model) => model.toEntity()).toList();
  }

  @override
  Future<List<ProjectEntity>> searchProjects(String query) async {
    final projects = await remoteDataSource.searchProjects(query);
    return projects.map((model) => model.toEntity()).toList();
  }

  @override
  Future<ProjectEntity> getProject(String id) async {
    final project = await remoteDataSource.getProject(id);
    return project.toEntity();
  }

  @override
  Future<List<ProjectEntity>> getMyProjects({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  }) async {
    final projects = await remoteDataSource.getMyProjects(
      filters: filters,
      page: page,
      limit: limit,
    );
    return projects.map((model) => model.toEntity()).toList();
  }

  @override
  Future<ProjectEntity> createProject(Map<String, dynamic> data) async {
    final project = await remoteDataSource.createProject(data);
    return project.toEntity();
  }

  @override
  Future<ProjectEntity> updateProject(
      String id, Map<String, dynamic> data) async {
    final project = await remoteDataSource.updateProject(id, data);
    return project.toEntity();
  }

  @override
  Future<void> deleteProject(String id) async {
    await remoteDataSource.deleteProject(id);
  }

  @override
  Future<List<Image>> uploadImages(String id, List<MultipartFile> files) async {
    final imageUrls = await remoteDataSource.uploadImages(id, files);
    return imageUrls.map((model) => model.toEntity()).toList();
  }

  @override
  Future<List<Video>> uploadVideos(String id, List<MultipartFile> files) async {
    final videoUrls = await remoteDataSource.uploadVideos(id, files);
    return videoUrls.map((model) => model.toEntity()).toList();
  }

  @override
  Future<String> setCoverImage(String id, MultipartFile file) async {
    final coverUrl = await remoteDataSource.setCoverImage(id, file);
    return coverUrl;
  }

  @override
  Future<String> setLogo(String id, MultipartFile file) async {
    final logoUrl = await remoteDataSource.setLogo(id, file);
    return logoUrl;
  }

  @override
  Future<TeamMember> addTeamMember(String id, Map<String, dynamic> data) async {
    final member = await remoteDataSource.addTeamMember(id, data);
    return member.toEntity();
  }

  @override
  Future<TeamMember> updateTeamMember(
      String id, String memberId, Map<String, dynamic> data) async {
    final member = await remoteDataSource.updateTeamMember(id, memberId, data);
    return member.toEntity();
  }

  @override
  Future<void> removeTeamMember(String id, String memberId) async {
    await remoteDataSource.removeTeamMember(id, memberId);
  }

  @override
  Future<ProjectEntity> submitForReview(String id) async {
    final project = await remoteDataSource.submitForReview(id);
    return project.toEntity();
  }

  @override
  Future<ProjectEntity> duplicateProject(String id) async {
    final project = await remoteDataSource.duplicateProject(id);
    return project.toEntity();
  }

  @override
  Future<ProjectEntity> archiveProject(String id) async {
    final project = await remoteDataSource.archiveProject(id);
    return project.toEntity();
  }

  @override
  Future<Map<String, dynamic>> getProjectAnalytics(String id) async {
    final analytics = await remoteDataSource.getProjectAnalytics(id);
    return analytics;
  }

  @override
  Future<List<UserEntity>> getProjectInvestors(String id) async {
    final investors = await remoteDataSource.getProjectInvestors(id);
    return investors.map((model) => model.toEntity()).toList();
  }

  @override
  Future<Settings> updateProjectSettings(
      String id, Map<String, dynamic> data) async {
    final settings = await remoteDataSource.updateProjectSettings(id, data);
    return settings.toEntity();
  }

  @override
  Future<FinancialProjections> updateFinancialProjections(
      String id, Map<String, dynamic> data) async {
    final projections =
        await remoteDataSource.updateFinancialProjections(id, data);
    return projections.toEntity();
  }

  @override
  Future<Impact> updateImpactData(String id, Map<String, dynamic> data) async {
    final impact = await remoteDataSource.updateImpactData(id, data);
    return impact.toEntity();
  }

  @override
  Future<List<Risk>> updateRisks(String id, Map<String, dynamic> data) async {
    final risks = await remoteDataSource.updateRisks(id, data);
    return risks.map((model) => model.toEntity()).toList();
  }

  @override
  Future<Seo> updateSEO(String id, Map<String, dynamic> data) async {
    final seo = await remoteDataSource.updateSEO(id, data);
    return seo.toEntity();
  }

  @override
  Future<bool> toggleLike(String id) async {
    final result = await remoteDataSource.toggleLike(id);
    return result;
  }

  @override
  Future<bool> toggleBookmark(String id) async {
    final result = await remoteDataSource.toggleBookmark(id);
    return result;
  }

  @override
  Future<bool> toggleFollow(String id) async {
    final result = await remoteDataSource.toggleFollow(id);
    return result;
  }
}
