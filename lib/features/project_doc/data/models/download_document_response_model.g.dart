// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_document_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadDocumentResponseModelImpl
    _$$DownloadDocumentResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$DownloadDocumentResponseModelImpl(
          success: json['success'] as bool,
          data: DownloadDocumentResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$DownloadDocumentResponseModelImplToJson(
        _$DownloadDocumentResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$DownloadDocumentResponseDataImpl _$$DownloadDocumentResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DownloadDocumentResponseDataImpl(
      document:
          DownloadDocument.fromJson(json['document'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DownloadDocumentResponseDataImplToJson(
        _$DownloadDocumentResponseDataImpl instance) =>
    <String, dynamic>{
      'document': instance.document,
    };

_$DownloadDocumentImpl _$$DownloadDocumentImplFromJson(
        Map<String, dynamic> json) =>
    _$DownloadDocumentImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$DownloadDocumentImplToJson(
        _$DownloadDocumentImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
