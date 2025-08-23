import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';

part 'paginated_projects_model.freezed.dart';
part 'paginated_projects_model.g.dart';

@freezed
class PaginatedProjectsModel with _$PaginatedProjectsModel {
  factory PaginatedProjectsModel({
    required bool success,
    required PaginatedProjectsData data,
  }) = _PaginatedProjectsModel;

  factory PaginatedProjectsModel.fromJson(Map<String, dynamic> json) =>
      _$PaginatedProjectsModelFromJson(json);
}

@freezed
class PaginatedProjectsData with _$PaginatedProjectsData {
  factory PaginatedProjectsData({
    @JsonKey(name: 'projects') required List<ProjectModel> projects,
    required Pagination pagination,
  }) = _PaginatedProjectsData;

  factory PaginatedProjectsData.fromJson(Map<String, dynamic> json) =>
      _$PaginatedProjectsDataFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  factory Pagination({
    required int page,
    required int limit,
    @JsonKey(name: 'total') required int totalDocs,
    @JsonKey(name: 'pages') required int totalPages,
    @JsonKey(name: 'hasNext') required bool hasNextPage,
    @JsonKey(name: 'hasPrev') required bool hasPrevPage,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}