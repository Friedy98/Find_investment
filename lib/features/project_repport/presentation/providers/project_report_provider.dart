import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project_repport/domain/entities/metrics_summary_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/entities/project_report_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/add_attachment_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/archive_report_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/create_report_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/delete_report_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/get_metrics_summary_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/get_report_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/get_reports_by_type_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/list_published_reports_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/list_reports_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/publish_report_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/remove_attachment_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/search_reports_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/update_report_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';

enum ProjectReportErrorType {
  network,
  validation,
  notFound,
  server,
  unknown,
}

class ProjectReportState {
  final List<ProjectReportEntity> reports;
  final ProjectReportEntity? selectedReport;
  final bool isLoading;
  final ProjectReportErrorType? errorType;
  final String? errorMessage;
  final MetricsSummaryEntity? metricsSummary;

  ProjectReportState({
    this.reports = const [],
    this.selectedReport,
    this.isLoading = false,
    this.errorType,
    this.errorMessage,
    this.metricsSummary,
  });

  ProjectReportState copyWith({
    List<ProjectReportEntity>? reports,
    ProjectReportEntity? selectedReport,
    bool? isLoading,
    ProjectReportErrorType? errorType,
    String? errorMessage,
    MetricsSummaryEntity? metricsSummary,
  }) {
    return ProjectReportState(
      reports: reports ?? this.reports,
      selectedReport: selectedReport ?? this.selectedReport,
      isLoading: isLoading ?? this.isLoading,
      errorType: errorType,
      errorMessage: errorMessage,
      metricsSummary: metricsSummary ?? this.metricsSummary,
    );
  }
}

final projectReportProvider =
    StateNotifierProvider<ProjectReportNotifier, ProjectReportState>((ref) {
  return ProjectReportNotifier(
    createReportUseCase: getIt<CreateReportUseCase>(),
    updateReportUseCase: getIt<UpdateReportUseCase>(),
    deleteReportUseCase: getIt<DeleteReportUseCase>(),
    publishReportUseCase: getIt<PublishReportUseCase>(),
    archiveReportUseCase: getIt<ArchiveReportUseCase>(),
    addAttachmentUseCase: getIt<AddAttachmentUseCase>(),
    removeAttachmentUseCase: getIt<RemoveAttachmentUseCase>(),
    searchReportsUseCase: getIt<SearchReportsUseCase>(),
    getReportsByTypeUseCase: getIt<GetReportsByTypeUseCase>(),
    getReportUseCase: getIt<GetReportUseCase>(),
    listReportsUseCase: getIt<ListReportsUseCase>(),
    listPublishedReportsUseCase: getIt<ListPublishedReportsUseCase>(),
    getMetricsSummaryUseCase: getIt<GetMetricsSummaryUseCase>(),
  );
});

class ProjectReportNotifier extends StateNotifier<ProjectReportState> {
  final CreateReportUseCase createReportUseCase;
  final UpdateReportUseCase updateReportUseCase;
  final DeleteReportUseCase deleteReportUseCase;
  final PublishReportUseCase publishReportUseCase;
  final ArchiveReportUseCase archiveReportUseCase;
  final AddAttachmentUseCase addAttachmentUseCase;
  final RemoveAttachmentUseCase removeAttachmentUseCase;
  final SearchReportsUseCase searchReportsUseCase;
  final GetReportsByTypeUseCase getReportsByTypeUseCase;
  final GetReportUseCase getReportUseCase;
  final ListReportsUseCase listReportsUseCase;
  final ListPublishedReportsUseCase listPublishedReportsUseCase;
  final GetMetricsSummaryUseCase getMetricsSummaryUseCase;

  ProjectReportNotifier({
    required this.createReportUseCase,
    required this.updateReportUseCase,
    required this.deleteReportUseCase,
    required this.publishReportUseCase,
    required this.archiveReportUseCase,
    required this.addAttachmentUseCase,
    required this.removeAttachmentUseCase,
    required this.searchReportsUseCase,
    required this.getReportsByTypeUseCase,
    required this.getReportUseCase,
    required this.listReportsUseCase,
    required this.listPublishedReportsUseCase,
    required this.getMetricsSummaryUseCase,
  }) : super(ProjectReportState());

  ProjectReportErrorType _mapErrorToType(dynamic error) {
    if (error.toString().contains('Network'))
      return ProjectReportErrorType.network;
    if (error.toString().contains('404'))
      return ProjectReportErrorType.notFound;
    if (error.toString().contains('Validation'))
      return ProjectReportErrorType.validation;
    if (error.toString().contains('Server'))
      return ProjectReportErrorType.server;
    return ProjectReportErrorType.unknown;
  }

  Future<void> createReport(
      Map<String, dynamic> data, FormData formData) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final report = await createReportUseCase(data, formData);
      final updatedReports = List<ProjectReportEntity>.from(state.reports)
        ..add(report);
      state = state.copyWith(reports: updatedReports, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> updateReport(String reportId, Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final report = await updateReportUseCase(reportId, data);
      final updatedReports =
          state.reports.map((r) => r.id == reportId ? report : r).toList();
      state = state.copyWith(
          reports: updatedReports, selectedReport: report, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> deleteReport(String reportId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      await deleteReportUseCase(reportId);
      final updatedReports =
          state.reports.where((r) => r.id != reportId).toList();
      state = state.copyWith(
          reports: updatedReports, selectedReport: null, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> publishReport(String reportId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final report = await publishReportUseCase(reportId);
      final updatedReports =
          state.reports.map((r) => r.id == reportId ? report : r).toList();
      state = state.copyWith(
          reports: updatedReports, selectedReport: report, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> archiveReport(String reportId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final report = await archiveReportUseCase(reportId);
      final updatedReports =
          state.reports.map((r) => r.id == reportId ? report : r).toList();
      state = state.copyWith(
          reports: updatedReports, selectedReport: report, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> addAttachment(String reportId, FormData formData) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final report = await addAttachmentUseCase(reportId, formData);
      final updatedReports =
          state.reports.map((r) => r.id == reportId ? report : r).toList();
      state = state.copyWith(
          reports: updatedReports, selectedReport: report, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> removeAttachment(String reportId, String attachmentId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final report = await removeAttachmentUseCase(reportId, attachmentId);
      final updatedReports =
          state.reports.map((r) => r.id == reportId ? report : r).toList();
      state = state.copyWith(
          reports: updatedReports, selectedReport: report, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> searchReports({
    required String projectId,
    required String query,
    int page = 1,
    int limit = 10,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final reports = await searchReportsUseCase(
        projectId: projectId,
        query: query,
        page: page,
        limit: limit,
      );
      state = state.copyWith(reports: reports, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> getReportsByType(String type, {String? projectId}) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final reports = await getReportsByTypeUseCase(type, projectId: projectId);
      state = state.copyWith(reports: reports, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> getReport(String reportId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final report = await getReportUseCase(reportId);
      state = state.copyWith(selectedReport: report, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> listReports({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? status,
    String? type,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final result = await listReportsUseCase(
        projectId: projectId,
        page: page,
        limit: limit,
        status: status,
        type: type,
        startDate: startDate,
        endDate: endDate,
      );
      state = state.copyWith(
          reports: result['reports'] as List<ProjectReportEntity>,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> listPublishedReports({
    String? projectId,
    int page = 1,
    int limit = 10,
    String? type,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final result = await listPublishedReportsUseCase(
        projectId: projectId,
        page: page,
        limit: limit,
        type: type,
      );
      state = state.copyWith(
          reports: result['reports'] as List<ProjectReportEntity>,
          isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> getMetricsSummary({
    required String projectId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final metricsSummary = await getMetricsSummaryUseCase(
        projectId: projectId,
        startDate: startDate,
        endDate: endDate,
      );
      state = state.copyWith(metricsSummary: metricsSummary, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }
}
