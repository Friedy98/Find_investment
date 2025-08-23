// Path: lib/features/project_owner/data/models/delete_document_response_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_document_response_model.freezed.dart';
part 'delete_document_response_model.g.dart';

@freezed
class DeleteDocumentResponseModel with _$DeleteDocumentResponseModel {
  factory DeleteDocumentResponseModel({
    required bool success,
    required String message,
  }) = _DeleteDocumentResponseModel;

  factory DeleteDocumentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteDocumentResponseModelFromJson(json);
}