// Path: lib/features/project_owner/data/models/download_document_response_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_document_response_model.freezed.dart';
part 'download_document_response_model.g.dart';

@freezed
class DownloadDocumentResponseModel with _$DownloadDocumentResponseModel {
  factory DownloadDocumentResponseModel({
    required bool success,
    required DownloadDocumentResponseData data,
  }) = _DownloadDocumentResponseModel;

  factory DownloadDocumentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DownloadDocumentResponseModelFromJson(json);
}

@freezed
class DownloadDocumentResponseData with _$DownloadDocumentResponseData {
  factory DownloadDocumentResponseData({
    required DownloadDocument document,
  }) = _DownloadDocumentResponseData;

  factory DownloadDocumentResponseData.fromJson(Map<String, dynamic> json) =>
      _$DownloadDocumentResponseDataFromJson(json);
}

@freezed
class DownloadDocument with _$DownloadDocument {
  factory DownloadDocument({
    required String url,
  }) = _DownloadDocument;

  factory DownloadDocument.fromJson(Map<String, dynamic> json) =>
      _$DownloadDocumentFromJson(json);
}