import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/project-milestone/data/models/project_milestone_model.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';
import 'package:find_invest_mobile/features/project/data/extensions/project_extensions.dart';
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';

extension ProjectMilestoneModelX on ProjectMilestoneModel {
  ProjectMilestoneEntity toEntity() => ProjectMilestoneEntity(
        id: id,
        project: project is String
            ? project
            : project is ProjectModel
                ? (project as ProjectModel).toEntity()
                : null,
        title: title,
        description: description,
        dueDate: dueDate ?? DateTime.now(),
        status: status,
        progress: progress,
        deliverables: deliverables?.map((d) => d.toEntity()).toList() ?? [],
        createdBy: _convertUser(createdBy),
        completedDate: completedDate,
        createdAt: createdAt,
        updatedAt: updatedAt,
        daysUntilDue: daysUntilDue,
      );

  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }
}

extension DeliverableModelX on DeliverableModel {
  DeliverableEntity toEntity() => DeliverableEntity(
        name: name,
        url: url,
        description: description,
        cloudinaryPublicId: cloudinaryPublicId,
      );
}

extension ProgressStatsModelX on ProgressStatsModel {
  ProgressStatsEntity toEntity() => ProgressStatsEntity(
        averageProgress: averageProgress,
        totalMilestones: totalMilestones,
      );
}

extension StatusStatsModelX on StatusStatsModel {
  StatusStatsEntity toEntity() => StatusStatsEntity(
        status: status,
        count: count,
      );
}
