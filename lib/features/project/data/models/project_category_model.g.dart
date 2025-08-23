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
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String? ?? 'folder',
      color: json['color'] as String? ?? '#007bff',
    );

Map<String, dynamic> _$$ProjectCategoryModelImplToJson(
        _$ProjectCategoryModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'icon': instance.icon,
      'color': instance.color,
    };
