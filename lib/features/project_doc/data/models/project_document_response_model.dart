// Path: lib/features/project_doc/data/models/project_document_response_model.dart
import 'package:find_invest_mobile/features/project_doc/data/models/project_document_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_document_response_model.freezed.dart';
part 'project_document_response_model.g.dart';

@freezed
class ProjectDocumentResponseModel with _$ProjectDocumentResponseModel {
  factory ProjectDocumentResponseModel({
    required bool success,
    String? message,
    @JsonKey(name: 'data') required dynamic responseData,
  }) = _ProjectDocumentResponseModel;

  factory ProjectDocumentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectDocumentResponseModelFromJson(json);
}

@freezed
class ProjectDocumentResponseData with _$ProjectDocumentResponseData {
  factory ProjectDocumentResponseData({
    @JsonKey(name: 'document') ProjectDocumentModel? document,
    @JsonKey(name: 'documents') List<ProjectDocumentModel>? documents,
    @JsonKey(name: 'history') List<ProjectDocumentModel>? history,
  }) = _ProjectDocumentResponseData;

  factory ProjectDocumentResponseData.fromJson(Map<String, dynamic> json) =>
      _$ProjectDocumentResponseDataFromJson(json);
}