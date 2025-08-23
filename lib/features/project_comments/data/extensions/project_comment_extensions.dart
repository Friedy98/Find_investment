import 'package:find_invest_mobile/features/project/data/models/project_model.dart';
import 'package:find_invest_mobile/features/project_comments/data/models/project_comment_model.dart';
import 'package:find_invest_mobile/features/project_comments/domain/entities/project_comment_entity.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';
import 'package:find_invest_mobile/features/project/data/extensions/project_extensions.dart';

extension ProjectCommentModelExtensions on ProjectCommentModel {
  ProjectCommentEntity toEntity() => ProjectCommentEntity(
        id: id,
        project: _convertProject(project),
        author: _convertUser(author),
        content: content,
        parent: _convertParent(parent),
        isModerated: isModerated,
        isApproved: isApproved,
        moderatedBy: _convertUser(moderatedBy),
        moderatedAt: moderatedAt,
        moderationReason: moderationReason,
        metrics: metrics.toEntity(),
        flags: flags.map((flag) => flag.toEntity()).toList(),
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

  dynamic _convertParent(dynamic parent) {
    if (parent == null) return null;
    if (parent is String) return parent;
    if (parent is ProjectCommentModel) return parent.toEntity();
    throw Exception('Invalid parent format');
  }
}

extension FlagModelExtensions on FlagModel {
  FlagEntity toEntity() => FlagEntity(
        user: _convertUser(user),
        reason: reason,
        description: description,
        flaggedAt: flaggedAt,
      );

  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }
}

extension MetricsModelExtensions on MetricsModel {
  MetricsEntity toEntity() => MetricsEntity(
        likes: likes,
        replies: replies,
      );
}
