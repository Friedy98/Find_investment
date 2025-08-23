// Path: lib/features/project_owner/data/extensions/project_category_extensions.dart
import 'package:find_invest_mobile/features/project_category/data/models/project_category_model.dart'
    as model;
import 'package:find_invest_mobile/features/project_category/domain/entities/project_category_entity.dart'
    as entity;

extension ProjectCategoryModelExtension on model.ProjectCategoryModel {
  entity.ProjectCategoryEntity toEntity() => entity.ProjectCategoryEntity(
        id: id,
        name: name,
        slug: slug,
        description: description,
        parent: parent is String
            ? parent
            : parent is model.ProjectCategoryModel
                ? parent.toEntity()
                : null,
        isActive: isActive,
        order: order,
        createdAt: createdAt,
        updatedAt: updatedAt,
        subcategories: subcategories?.map((s) => s.toEntity()).toList(),
        projectCount: projectCount,
      );
}

extension ProjectCategoryEntityExtension on entity.ProjectCategoryEntity {
  model.ProjectCategoryModel toModel() => model.ProjectCategoryModel(
        id: id,
        name: name,
        slug: slug,
        description: description,
        parent: parent is String
            ? parent
            : parent is entity.ProjectCategoryEntity
                ? parent.toModel()
                : null,
        isActive: isActive,
        order: order,
        createdAt: createdAt,
        updatedAt: updatedAt,
        subcategories: subcategories?.map((s) => s.toModel()).toList(),
        projectCount: projectCount,
      );
}
