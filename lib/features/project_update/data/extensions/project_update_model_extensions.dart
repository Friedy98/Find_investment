import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';
import 'package:find_invest_mobile/features/project_update/data/models/project_update_model.dart';
import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';
import 'package:find_invest_mobile/features/project/data/extensions/project_extensions.dart';

extension ProjectUpdateModelX on ProjectUpdateModel {
  ProjectUpdateEntity toEntity() => ProjectUpdateEntity(
        id: id,
        project: project is String
            ? project
            : project is ProjectModel
                ? (project as ProjectModel).toEntity()
                : null,
        title: title,
        content: content,
        type: type,
        isPublic: isPublic,
        publishedBy: _convertUser(publishedBy),
        createdAt: createdAt,
        updatedAt: updatedAt,
        attachments: attachments.map((a) => a.toEntity()).toList(),
        publishedAt: publishedAt,
      );

  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }
}

extension AttachmentModelX on AttachmentModel {
  AttachmentEntity toEntity() => AttachmentEntity(
        type: type,
        description: description,
        url: url,
        cloudinaryPublicId: cloudinaryPublicId,
      );
}
