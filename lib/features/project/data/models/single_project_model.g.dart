// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleProjectModelImpl _$$SingleProjectModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleProjectModelImpl(
      success: json['success'] as bool,
      data: SingleProjectData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SingleProjectModelImplToJson(
        _$SingleProjectModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_$SingleProjectDataImpl _$$SingleProjectDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleProjectDataImpl(
      project: ProjectModel.fromJson(json['project'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SingleProjectDataImplToJson(
        _$SingleProjectDataImpl instance) =>
    <String, dynamic>{
      'project': instance.project,
    };
