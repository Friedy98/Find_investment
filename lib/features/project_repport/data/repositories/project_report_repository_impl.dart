import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project_repport/data/datasources/project_report_remote_datasource.dart';
import 'package:find_invest_mobile/features/project_repport/data/extensions/project_report_extensions.dart';
import 'package:find_invest_mobile/features/project_repport/domain/entities/metrics_summary_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/entities/project_report_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';

class ProjectReportRepositoryImpl implements ProjectReportRepository {
  final ProjectReportRemoteDataSource remoteDataSource;

  ProjectReportRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Map<String, dynamic>> listReports({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? status,
    String? type,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    final result = await remoteDataSource.listReports(
      projectId: projectId,
      page: page,
      limit: limit,
      status: status,
      type: type,
      startDate: startDate,
      endDate: endDate,
    );
    return {
      'reports':
          (result['reports'] as List).map((model) => model.toEntity()).toList(),
      'pagination': result['pagination'],
    };
  }

  @override
  Future<Map<String, dynamic>> listPublishedReports({
    String? projectId,
    int page = 1,
    int limit = 10,
    String? type,
  }) async {
    final result = await remoteDataSource.listPublishedReports(
      projectId: projectId,
      page: page,
      limit: limit,
      type: type,
    );
    return {
      'reports':
          (result['reports'] as List).map((model) => model.toEntity()).toList(),
      'pagination': result['pagination'],
    };
  }

  @override
  Future<List<ProjectReportEntity>> getReportsByType(String type,
      {String? projectId}) async {
    final reports =
        await remoteDataSource.getReportsByType(type, projectId: projectId);
    return reports.map((model) => model.toEntity()).toList();
  }

  @override
  Future<ProjectReportEntity> getReport(String reportId) async {
    final report = await remoteDataSource.getReport(reportId);
    return report.toEntity();
  }

  @override
  Future<ProjectReportEntity> createReport(
      Map<String, dynamic> data, FormData formData) async {
    final report = await remoteDataSource.createReport(data, formData);
    return report.toEntity();
  }

  @override
  Future<ProjectReportEntity> updateReport(
      String reportId, Map<String, dynamic> data) async {
    final report = await remoteDataSource.updateReport(reportId, data);
    return report.toEntity();
  }

  @override
  Future<void> deleteReport(String reportId) async {
    await remoteDataSource.deleteReport(reportId);
  }

  @override
  Future<ProjectReportEntity> publishReport(String reportId) async {
    final report = await remoteDataSource.publishReport(reportId);
    return report.toEntity();
  }

  @override
  Future<ProjectReportEntity> archiveReport(String reportId) async {
    final report = await remoteDataSource.archiveReport(reportId);
    return report.toEntity();
  }

  @override
  Future<ProjectReportEntity> addAttachment(
      String reportId, FormData formData) async {
    final report = await remoteDataSource.addAttachment(reportId, formData);
    return report.toEntity();
  }

  @override
  Future<ProjectReportEntity> removeAttachment(
      String reportId, String attachmentId) async {
    final report =
        await remoteDataSource.removeAttachment(reportId, attachmentId);
    return report.toEntity();
  }

  @override
  Future<List<ProjectReportEntity>> searchReports({
    required String projectId,
    required String query,
    int page = 1,
    int limit = 10,
  }) async {
    final reports = await remoteDataSource.searchReports(
      projectId: projectId,
      query: query,
      page: page,
      limit: limit,
    );
    return reports.map((model) => model.toEntity()).toList();
  }

  @override
  Future<MetricsSummaryEntity> getMetricsSummary({
    required String projectId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    final result = await remoteDataSource.getMetricsSummary(
      projectId: projectId,
      startDate: startDate,
      endDate: endDate,
    );
    return result.toEntity();
  }
}
