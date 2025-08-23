import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/project_repport/data/models/metrics_summary_model.dart';
import 'package:find_invest_mobile/features/project_repport/data/models/project_report_model.dart';

abstract class ProjectReportRemoteDataSource {
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
  Future<List<ProjectReportModel>> getReportsByType(String type,
      {String? projectId});
  Future<ProjectReportModel> getReport(String reportId);
  Future<ProjectReportModel> createReport(
      Map<String, dynamic> data, FormData formData);
  Future<ProjectReportModel> updateReport(
      String reportId, Map<String, dynamic> data);
  Future<void> deleteReport(String reportId);
  Future<ProjectReportModel> publishReport(String reportId);
  Future<ProjectReportModel> archiveReport(String reportId);
  Future<ProjectReportModel> addAttachment(String reportId, FormData formData);
  Future<ProjectReportModel> removeAttachment(
      String reportId, String attachmentId);
  Future<List<ProjectReportModel>> searchReports({
    required String projectId,
    required String query,
    int page = 1,
    int limit = 10,
  });
  Future<MetricsSummaryModel> getMetricsSummary({
    required String projectId,
    DateTime? startDate,
    DateTime? endDate,
  });
}

class ProjectReportRemoteDataSourceImpl
    implements ProjectReportRemoteDataSource {
  final NetworkService networkService;

  ProjectReportRemoteDataSourceImpl({
    required this.networkService,
  });

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
    try {
      final response = await networkService.get(
        '/project-reports',
        queryParameters: {
          'projectId': projectId,
          'page': page,
          'limit': limit,
          if (status != null) 'status': status,
          if (type != null) 'type': type,
          if (startDate != null) 'startDate': startDate.toIso8601String(),
          if (endDate != null) 'endDate': endDate.toIso8601String(),
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch reports: response not successful');
        throw Exception('Failed to fetch reports');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Fetched ${response.data['data']['reports']?.length ?? 0} reports');
      return {
        'reports': (response.data['data']['reports'] as List)
            .map((json) => ProjectReportModel.fromJson(json))
            .toList(),
        'pagination': response.data['data']['pagination'],
      };
    } catch (e) {
      LoggingService.error('Get reports error: $e');
      throw Exception('Failed to fetch reports');
    }
  }

  @override
  Future<Map<String, dynamic>> listPublishedReports({
    String? projectId,
    int page = 1,
    int limit = 10,
    String? type,
  }) async {
    try {
      final response = await networkService.get(
        '/project-reports/published',
        queryParameters: {
          if (projectId != null) 'projectId': projectId,
          'page': page,
          'limit': limit,
          if (type != null) 'type': type,
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch published reports: response not successful');
        throw Exception('Failed to fetch published reports');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Fetched ${response.data['data']['reports']?.length ?? 0} published reports');
      return {
        'reports': (response.data['data']['reports'] as List)
            .map((json) => ProjectReportModel.fromJson(json))
            .toList(),
        'pagination': response.data['data']['pagination'],
      };
    } catch (e) {
      LoggingService.error('Get published reports error: $e');
      throw Exception('Failed to fetch published reports');
    }
  }

  @override
  Future<List<ProjectReportModel>> getReportsByType(String type,
      {String? projectId}) async {
    try {
      final response = await networkService.get(
        '/project-reports/type/$type',
        queryParameters: {if (projectId != null) 'projectId': projectId},
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch reports by type: response not successful');
        throw Exception('Failed to fetch reports by type');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Fetched ${response.data['data']['reports']?.length ?? 0} reports by type');
      return (response.data['data']['reports'] as List)
          .map((json) => ProjectReportModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Get reports by type error: $e');
      throw Exception('Failed to fetch reports by type');
    }
  }

  @override
  Future<ProjectReportModel> getReport(String reportId) async {
    try {
      final response = await networkService.get('/project-reports/$reportId');

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch report $reportId: response not successful');
        throw Exception('Failed to fetch report');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Fetched report $reportId');
      return ProjectReportModel.fromJson(response.data['data']['report']);
    } catch (e) {
      LoggingService.error('Get report error: $e');
      throw Exception('Failed to fetch report');
    }
  }

  @override
  Future<ProjectReportModel> createReport(
      Map<String, dynamic> data, FormData formData) async {
    try {
      final response = await networkService.post(
        '/project-reports',
        data: formData,
        queryParameters: data,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to create report: response not successful');
        throw Exception('Failed to create report');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Created report ${response.data['data']['report']['id']}');
      return ProjectReportModel.fromJson(response.data['data']['report']);
    } catch (e) {
      LoggingService.error('Create report error: $e');
      throw Exception('Failed to create report');
    }
  }

  @override
  Future<ProjectReportModel> updateReport(
      String reportId, Map<String, dynamic> data) async {
    try {
      final response = await networkService.put(
        '/project-reports/$reportId',
        data: data,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to update report $reportId: response not successful');
        throw Exception('Failed to update report');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Updated report $reportId');
      return ProjectReportModel.fromJson(response.data['data']['report']);
    } catch (e) {
      LoggingService.error('Update report error: $e');
      throw Exception('Failed to update report');
    }
  }

  @override
  Future<void> deleteReport(String reportId) async {
    try {
      final response =
          await networkService.delete('/project-reports/$reportId');

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to delete report $reportId: response not successful');
        throw Exception('Failed to delete report');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Deleted report $reportId');
    } catch (e) {
      LoggingService.error('Delete report error: $e');
      throw Exception('Failed to delete report');
    }
  }

  @override
  Future<ProjectReportModel> publishReport(String reportId) async {
    try {
      final response = await networkService
          .patch('/project-reports/$reportId/publish', id: reportId, data: {});

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to publish report $reportId: response not successful');
        throw Exception('Failed to publish report');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Published report $reportId');
      return ProjectReportModel.fromJson(response.data['data']['report']);
    } catch (e) {
      LoggingService.error('Publish report error: $e');
      throw Exception('Failed to publish report');
    }
  }

  @override
  Future<ProjectReportModel> archiveReport(String reportId) async {
    try {
      final response = await networkService
          .patch('/project-reports/$reportId/archive', id: reportId, data: {});

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to archive report $reportId: response not successful');
        throw Exception('Failed to archive report');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Archived report $reportId');
      return ProjectReportModel.fromJson(response.data['data']['report']);
    } catch (e) {
      LoggingService.error('Archive report error: $e');
      throw Exception('Failed to archive report');
    }
  }

  @override
  Future<ProjectReportModel> addAttachment(
      String reportId, FormData formData) async {
    try {
      final response = await networkService.post(
        '/project-reports/$reportId/attachments',
        data: formData,
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to add attachment to report $reportId: response not successful');
        throw Exception('Failed to add attachment');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Added attachment to report $reportId');
      return ProjectReportModel.fromJson(response.data['data']['report']);
    } catch (e) {
      LoggingService.error('Add attachment error: $e');
      throw Exception('Failed to add attachment');
    }
  }

  @override
  Future<ProjectReportModel> removeAttachment(
      String reportId, String attachmentId) async {
    try {
      final response = await networkService
          .delete('/project-reports/$reportId/attachments/$attachmentId');

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to remove attachment $attachmentId from report $reportId: response not successful');
        throw Exception('Failed to remove attachment');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Removed attachment $attachmentId from report $reportId');
      return ProjectReportModel.fromJson(response.data['data']['report']);
    } catch (e) {
      LoggingService.error('Remove attachment error: $e');
      throw Exception('Failed to remove attachment');
    }
  }

  @override
  Future<List<ProjectReportModel>> searchReports({
    required String projectId,
    required String query,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final response = await networkService.get(
        '/project-reports/search',
        queryParameters: {
          'projectId': projectId,
          'query': query,
          'page': page,
          'limit': limit,
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to search reports: response not successful');
        throw Exception('Failed to search reports');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Fetched ${response.data['data']['reports']?.length ?? 0} search results');
      return (response.data['data']['reports'] as List)
          .map((json) => ProjectReportModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Search reports error: $e');
      throw Exception('Failed to search reports');
    }
  }

  @override
  Future<MetricsSummaryModel> getMetricsSummary({
    required String projectId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      final response = await networkService.get(
        '/project-reports/metrics/summary',
        queryParameters: {
          'projectId': projectId,
          if (startDate != null) 'startDate': startDate.toIso8601String(),
          if (endDate != null) 'endDate': endDate.toIso8601String(),
        },
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch metrics summary: response not successful');
        throw Exception('Failed to fetch metrics summary');
      }
      LoggingService.info(
          'ProjectReportRemoteDataSource: Fetched metrics summary for project $projectId');
      return MetricsSummaryModel.fromJson(response.data);
    } catch (e) {
      LoggingService.error('Get metrics summary error: $e');
      throw Exception('Failed to fetch metrics summary');
    }
  }
}
