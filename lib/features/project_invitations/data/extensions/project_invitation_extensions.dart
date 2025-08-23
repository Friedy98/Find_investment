import 'package:find_invest_mobile/features/project_invitations/data/models/project_invitation_model.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/entities/project_invitation_entity.dart';
import 'package:find_invest_mobile/features/project_invitations/data/models/invitation_stat_model.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/entities/invitation_stat_entity.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';
import 'package:find_invest_mobile/features/project/data/extensions/project_extensions.dart';

extension ProjectInvitationModelExtensions on ProjectInvitationModel {
  ProjectInvitationEntity toEntity() => ProjectInvitationEntity(
        id: id,
        project: _convertProject(project),
        user: _convertUser(user),
        email: email,
        role: role,
        permissions: permissions.toEntity(),
        invitedBy: _convertUser(invitedBy),
        invitedAt: invitedAt,
        status: status,
        message: message,
        skills: skills,
        motivation: motivation,
        respondedAt: respondedAt,
        expiresAt: expiresAt,
        invitationToken: invitationToken,
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

extension PermissionsModelExtensions on PermissionsaModel {
  PermissionsEntity toEntity() => PermissionsEntity(
        canEdit: canEdit,
        canManageTeam: canManageTeam,
        canViewFinancials: canViewFinancials,
        canPostUpdates: canPostUpdates,
      );
}

extension InvitationStatModelExtensions on InvitationStatModel {
  InvitationStatEntity toEntity() => InvitationStatEntity(
        category: category,
        count: count,
      );
}
