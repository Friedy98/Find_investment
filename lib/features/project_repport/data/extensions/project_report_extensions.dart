import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';
import 'package:find_invest_mobile/features/project_repport/data/models/metrics_summary_model.dart';
import 'package:find_invest_mobile/features/project_repport/data/models/project_report_model.dart';
import 'package:find_invest_mobile/features/project_repport/domain/entities/metrics_summary_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/entities/project_report_entity.dart';
import 'package:find_invest_mobile/features/project/data/extensions/project_extensions.dart';

extension ProjectReportModelExtensions on ProjectReportModel {
  ProjectReportEntity toEntity() => ProjectReportEntity(
        id: id,
        project: _convertProject(project),
        title: title,
        content: content,
        type: type,
        period: period.toEntity(),
        metrics: metrics.toEntity(),
        attachments:
            attachments.map((attachment) => attachment.toEntity()).toList(),
        createdBy: _convertUser(createdBy),
        status: status,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  dynamic _convertProject(dynamic project) {
    if (project == null) return null;
    if (project is String) return project;
    if (project is ProjectModel) return project.toEntity();
    throw Exception('Invalid project format');
  }

  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }
}

extension AttachmentModelExtensions on AttachmentModel {
  AttachmentEntity toEntity() => AttachmentEntity(
        url: url,
        type: type,
        description: description,
        cloudinaryPublicId: cloudinaryPublicId,
      );
}

extension PeriodModelExtensions on PeriodModel {
  PeriodEntity toEntity() => PeriodEntity(
        start: start,
        end: end,
      );
}

extension MetricsModelExtensions on MetricsModel {
  MetricsEntity toEntity() => MetricsEntity(
        revenue: revenue,
        expenses: expenses,
        impactMetrics:
            impactMetrics.map((metric) => metric.toEntity()).toList(),
      );
}

extension ImpactMetricModelExtensions on ImpactMetricModel {
  ImpactMetricEntity toEntity() => ImpactMetricEntity(
        name: name,
        value: value,
        unit: unit,
      );
}

extension MetricsSummaryModelExtensions on MetricsSummaryModel {
  MetricsSummaryEntity toEntity() => MetricsSummaryEntity(
        totalRevenue: totalRevenue,
        totalExpenses: totalExpenses,
        impactMetrics: impactMetrics.map((metric) => metric.toEntity()).toList(),
      );
}
