// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_projects_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeaturedProjectsModelImpl _$$FeaturedProjectsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FeaturedProjectsModelImpl(
      success: json['success'] as bool,
      data: FeaturedProjectsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeaturedProjectsModelImplToJson(
        _$FeaturedProjectsModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$FeaturedProjectsDataImpl _$$FeaturedProjectsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$FeaturedProjectsDataImpl(
      projects: (json['projects'] as List<dynamic>)
          .map((e) => ProjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FeaturedProjectsDataImplToJson(
        _$FeaturedProjectsDataImpl instance) =>
    <String, dynamic>{
      'projects': instance.projects,
    };
