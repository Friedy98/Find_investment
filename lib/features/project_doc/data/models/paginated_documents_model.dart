// Path: lib/features/project_owner/data/models/paginated_documents_model.dart
import 'package:find_invest_mobile/features/project/data/models/paginated_projects_model.dart';
import 'package:find_invest_mobile/features/project_doc/data/models/project_document_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_documents_model.freezed.dart';
part 'paginated_documents_model.g.dart';

@freezed
class PaginatedDocumentsModel with _$PaginatedDocumentsModel {
  factory PaginatedDocumentsModel({
    required bool success,
    required PaginatedDocumentsData data,
  }) = _PaginatedDocumentsModel;

  factory PaginatedDocumentsModel.fromJson(Map<String, dynamic> json) =>
      _$PaginatedDocumentsModelFromJson(json);
}

@freezed
class PaginatedDocumentsData with _$PaginatedDocumentsData {
  factory PaginatedDocumentsData({
    @JsonKey(name: 'documents') required List<ProjectDocumentModel> documents,
    required Pagination pagination,
  }) = _PaginatedDocumentsData;

  factory PaginatedDocumentsData.fromJson(Map<String, dynamic> json) =>
      _$PaginatedDocumentsDataFromJson(json);
}