import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project_repport/domain/entities/metrics_summary_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/entities/project_report_entity.dart';

abstract class ProjectReportRepository {
  Future<Map<String, dynamic>> listReports({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? status,
    String? type,
    DateTime? startDate,
    DateTime? endDate,
  });
  Future<Map<String, dynamic>> listPublishedReports({
    String? projectId,
    int page = 1,
    int limit = 10,
    String? type,
  });
  Future<List<ProjectReportEntity>> getReportsByType(String type,
      {String? projectId});
  Future<ProjectReportEntity> getReport(String reportId);
  Future<ProjectReportEntity> createReport(
      Map<String, dynamic> data, FormData formData);
  Future<ProjectReportEntity> updateReport(
      String reportId, Map<String, dynamic> data);
  Future<void> deleteReport(String reportId);
  Future<ProjectReportEntity> publishReport(String reportId);
  Future<ProjectReportEntity> archiveReport(String reportId);
  Future<ProjectReportEntity> addAttachment(String reportId, FormData formData);
  Future<ProjectReportEntity> removeAttachment(
      String reportId, String attachmentId);
  Future<List<ProjectReportEntity>> searchReports({
    required String projectId,
    required String query,
    int page = 1,
    int limit = 10,
  });
  Future<MetricsSummaryEntity> getMetricsSummary({
    required String projectId,
    DateTime? startDate,
    DateTime? endDate,
  });
}
