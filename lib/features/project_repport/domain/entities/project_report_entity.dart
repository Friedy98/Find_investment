import 'package:equatable/equatable.dart';

class ProjectReportEntity extends Equatable {
  final String id;
  final dynamic project;
  final String title;
  final String content;
  final String type;
  final PeriodEntity period;
  final MetricsEntity metrics;
  final List<AttachmentEntity> attachments;
  final dynamic createdBy;
  final String status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ProjectReportEntity({
    required this.id,
    required this.project,
    required this.title,
    required this.content,
    required this.type,
    required this.period,
    required this.metrics,
    required this.attachments,
    required this.createdBy,
    required this.status,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        project,
        title,
        content,
        type,
        period,
        metrics,
        attachments,
        createdBy,
        status,
        createdAt,
        updatedAt,
      ];
}

class AttachmentEntity extends Equatable {
  final String? url;
  final String? type;
  final String? description;
  final String? cloudinaryPublicId;

  const AttachmentEntity({
    this.url,
    this.type,
    this.description,
    this.cloudinaryPublicId,
  });

  @override
  List<Object?> get props => [url, type, description, cloudinaryPublicId];
}

class PeriodEntity extends Equatable {
  final DateTime? start;
  final DateTime? end;

  const PeriodEntity({
    this.start,
    this.end,
  });

  @override
  List<Object?> get props => [start, end];
}

class MetricsEntity extends Equatable {
  final double? revenue;
  final double? expenses;
  final List<ImpactMetricEntity> impactMetrics;

  const MetricsEntity({
    this.revenue,
    this.expenses,
    required this.impactMetrics,
  });

  @override
  List<Object?> get props => [revenue, expenses, impactMetrics];
}

class ImpactMetricEntity extends Equatable {
  final String name;
  final double value;
  final String unit;

  const ImpactMetricEntity({
    required this.name,
    required this.value,
    required this.unit,
  });

  @override
  List<Object?> get props => [name, value, unit];
}
