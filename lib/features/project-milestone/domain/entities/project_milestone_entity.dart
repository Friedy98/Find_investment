import 'package:equatable/equatable.dart';

class ProjectMilestoneEntity extends Equatable {
  final String id;
  final dynamic project;
  final String title;
  final String? description;
  final DateTime dueDate;
  final String status;
  final int progress;
  final List<DeliverableEntity> deliverables;
  final dynamic createdBy;
  final DateTime? completedDate;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? daysUntilDue;

  const ProjectMilestoneEntity({
    required this.id,
    required this.project,
    required this.title,
    this.description,
    required this.dueDate,
    required this.status,
    required this.progress,
    required this.deliverables,
    required this.createdBy,
    this.completedDate,
    this.createdAt,
    this.updatedAt,
    this.daysUntilDue,
  });

  @override
  List<Object?> get props => [
        id,
        project,
        title,
        description,
        dueDate,
        status,
        progress,
        deliverables,
        createdBy,
        completedDate,
        createdAt,
        updatedAt,
        daysUntilDue,
      ];
}

class DeliverableEntity extends Equatable {
  final String name;
  final String? url;
  final String? description;
  final String? cloudinaryPublicId;

  const DeliverableEntity({
    required this.name,
    this.url,
    this.description,
    this.cloudinaryPublicId,
  });

  @override
  List<Object?> get props => [name, url, description, cloudinaryPublicId];
}

class ProgressStatsEntity extends Equatable {
  final double averageProgress;
  final int totalMilestones;

  const ProgressStatsEntity({
    required this.averageProgress,
    required this.totalMilestones,
  });

  @override
  List<Object?> get props => [averageProgress, totalMilestones];
}

class StatusStatsEntity extends Equatable {
  final String status;
  final int count;

  const StatusStatsEntity({
    required this.status,
    required this.count,
  });

  @override
  List<Object?> get props => [status, count];
}
