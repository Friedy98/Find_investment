// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_document_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDocumentResponseModelImpl _$$ProjectDocumentResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectDocumentResponseModelImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
      responseData: json['data'],
    );

Map<String, dynamic> _$$ProjectDocumentResponseModelImplToJson(
        _$ProjectDocumentResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.responseData,
    };

_$ProjectDocumentResponseDataImpl _$$ProjectDocumentResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectDocumentResponseDataImpl(
      document: json['document'] == null
          ? null
          : ProjectDocumentModel.fromJson(
              json['document'] as Map<String, dynamic>),
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => ProjectDocumentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      history: (json['history'] as List<dynamic>?)
          ?.map((e) => ProjectDocumentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProjectDocumentResponseDataImplToJson(
        _$ProjectDocumentResponseDataImpl instance) =>
    <String, dynamic>{
      'document': instance.document,
      'documents': instance.documents,
      'history': instance.history,
    };
