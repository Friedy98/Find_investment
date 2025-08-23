// Path: lib/features/project_owner/data/models/document_response_model.dart
import 'package:find_invest_mobile/features/project_doc/data/models/project_document_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_response_model.freezed.dart';
part 'document_response_model.g.dart';

@freezed
class DocumentResponseModel with _$DocumentResponseModel {
  factory DocumentResponseModel({
    required bool success,
    String? message,
    required DocumentResponseData data,
  }) = _DocumentResponseModel;

  factory DocumentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentResponseModelFromJson(json);
}

@freezed
class DocumentResponseData with _$DocumentResponseData {
  factory DocumentResponseData({
    required ProjectDocumentModel document,
  }) = _DocumentResponseData;

  factory DocumentResponseData.fromJson(Map<String, dynamic> json) =>
      _$DocumentResponseDataFromJson(json);
}