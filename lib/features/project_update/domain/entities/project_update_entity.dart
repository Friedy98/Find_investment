import 'package:equatable/equatable.dart';

class ProjectUpdateEntity extends Equatable {
  final String id;
  final dynamic project;
  final String title;
  final String content;
  final String type;
  final List<AttachmentEntity> attachments;
  final dynamic publishedBy;
  final DateTime? publishedAt;
  final bool isPublic;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ProjectUpdateEntity({
    required this.id,
    required this.project,
    required this.title,
    required this.content,
    required this.type,
    required this.attachments,
    required this.publishedBy,
    this.publishedAt,
    required this.isPublic,
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
        attachments,
        publishedBy,
        publishedAt,
        isPublic,
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