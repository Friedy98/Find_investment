import 'package:equatable/equatable.dart';

class ProjectInvitationEntity extends Equatable {
  final String id;
  final dynamic project;
  final dynamic user;
  final String? email;
  final String role;
  final PermissionsEntity permissions;
  final dynamic invitedBy;
  final DateTime? invitedAt;
  final String status;
  final String? message;
  final List<String> skills;
  final String? motivation;
  final DateTime? respondedAt;
  final DateTime? expiresAt;
  final String? invitationToken;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ProjectInvitationEntity({
    required this.id,
    required this.project,
    this.user,
    this.email,
    required this.role,
    required this.permissions,
    required this.invitedBy,
    this.invitedAt,
    required this.status,
    this.message,
    required this.skills,
    this.motivation,
    this.respondedAt,
    this.expiresAt,
    this.invitationToken,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        project,
        user,
        email,
        role,
        permissions,
        invitedBy,
        invitedAt,
        status,
        message,
        skills,
        motivation,
        respondedAt,
        expiresAt,
        invitationToken,
        createdAt,
        updatedAt,
      ];
}

class PermissionsEntity extends Equatable {
  final bool canEdit;
  final bool canManageTeam;
  final bool canViewFinancials;
  final bool canPostUpdates;

  const PermissionsEntity({
    required this.canEdit,
    required this.canManageTeam,
    required this.canViewFinancials,
    required this.canPostUpdates,
  });

  @override
  List<Object?> get props =>
      [canEdit, canManageTeam, canViewFinancials, canPostUpdates];
}
