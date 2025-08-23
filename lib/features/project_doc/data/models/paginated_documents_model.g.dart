// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_documents_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedDocumentsModelImpl _$$PaginatedDocumentsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedDocumentsModelImpl(
      success: json['success'] as bool,
      data:
          PaginatedDocumentsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginatedDocumentsModelImplToJson(
        _$PaginatedDocumentsModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$PaginatedDocumentsDataImpl _$$PaginatedDocumentsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedDocumentsDataImpl(
      documents: (json['documents'] as List<dynamic>)
          .map((e) => ProjectDocumentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginatedDocumentsDataImplToJson(
        _$PaginatedDocumentsDataImpl instance) =>
    <String, dynamic>{
      'documents': instance.documents,
      'pagination': instance.pagination,
    };
