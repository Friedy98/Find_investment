// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentResponseModelImpl _$$DocumentResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentResponseModelImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: DocumentResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DocumentResponseModelImplToJson(
        _$DocumentResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DocumentResponseDataImpl _$$DocumentResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentResponseDataImpl(
      document: ProjectDocumentModel.fromJson(
          json['document'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DocumentResponseDataImplToJson(
        _$DocumentResponseDataImpl instance) =>
    <String, dynamic>{
      'document': instance.document,
    };
