import 'package:equatable/equatable.dart';

class ProjectCommentEntity extends Equatable {
  final String id;
  final dynamic project;
  final dynamic author;
  final String content;
  final dynamic parent;
  final bool isModerated;
  final bool isApproved;
  final dynamic moderatedBy;
  final DateTime? moderatedAt;
  final String? moderationReason;
  final MetricsEntity metrics;
  final List<FlagEntity> flags;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ProjectCommentEntity({
    required this.id,
    required this.project,
    required this.author,
    required this.content,
    this.parent,
    required this.isModerated,
    required this.isApproved,
    this.moderatedBy,
    this.moderatedAt,
    this.moderationReason,
    required this.metrics,
    required this.flags,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        project,
        author,
        content,
        parent,
        isModerated,
        isApproved,
        moderatedBy,
        moderatedAt,
        moderationReason,
        metrics,
        flags,
        createdAt,
        updatedAt,
      ];
}

class FlagEntity extends Equatable {
  final dynamic user;
  final String reason;
  final String? description;
  final DateTime? flaggedAt;

  const FlagEntity({
    required this.user,
    required this.reason,
    this.description,
    this.flaggedAt,
  });

  @override
  List<Object?> get props => [user, reason, description, flaggedAt];
}

class MetricsEntity extends Equatable {
  final double likes;
  final double replies;

  const MetricsEntity({
    required this.likes,
    required this.replies,
  });

  @override
  List<Object?> get props => [likes, replies];
}
