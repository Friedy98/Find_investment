// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_projects_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedProjectsModelImpl _$$PaginatedProjectsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedProjectsModelImpl(
      success: json['success'] as bool,
      data:
          PaginatedProjectsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginatedProjectsModelImplToJson(
        _$PaginatedProjectsModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$PaginatedProjectsDataImpl _$$PaginatedProjectsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedProjectsDataImpl(
      projects: (json['projects'] as List<dynamic>)
          .map((e) => ProjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginatedProjectsDataImplToJson(
        _$PaginatedProjectsDataImpl instance) =>
    <String, dynamic>{
      'projects': instance.projects,
      'pagination': instance.pagination,
    };

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      totalDocs: (json['total'] as num).toInt(),
      totalPages: (json['pages'] as num).toInt(),
      hasNextPage: json['hasNext'] as bool,
      hasPrevPage: json['hasPrev'] as bool,
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'total': instance.totalDocs,
      'pages': instance.totalPages,
      'hasNext': instance.hasNextPage,
      'hasPrev': instance.hasPrevPage,
    };
