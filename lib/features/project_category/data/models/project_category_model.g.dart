// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectCategoryModelImpl _$$ProjectCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectCategoryModelImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String?,
      parent: _parentFromJson(json['parent']),
      isActive: json['isActive'] as bool?,
      order: (json['order'] as num?)?.toInt(),
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
      subcategories: (json['subcategories'] as List<dynamic>?)
              ?.map((e) =>
                  ProjectCategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      projectCount: (json['projectCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProjectCategoryModelImplToJson(
        _$ProjectCategoryModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'parent': _parentToJson(instance.parent),
      'isActive': instance.isActive,
      'order': instance.order,
      'createdAt': _dateTimeToJson(instance.createdAt),
      'updatedAt': _dateTimeToJson(instance.updatedAt),
      'subcategories': instance.subcategories,
      'projectCount': instance.projectCount,
    };
