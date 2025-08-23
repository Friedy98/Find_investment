import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';

part 'featured_projects_model.freezed.dart';
part 'featured_projects_model.g.dart';

@freezed
class FeaturedProjectsModel with _$FeaturedProjectsModel {
  factory FeaturedProjectsModel({
    required bool success,
    required FeaturedProjectsData data,
  }) = _FeaturedProjectsModel;

  factory FeaturedProjectsModel.fromJson(Map<String, dynamic> json) =>
      _$FeaturedProjectsModelFromJson(json);
}

@freezed
class FeaturedProjectsData with _$FeaturedProjectsData {
  factory FeaturedProjectsData({
    @JsonKey(name: 'projects') required List<ProjectModel> projects,
  }) = _FeaturedProjectsData;

  factory FeaturedProjectsData.fromJson(Map<String, dynamic> json) =>
      _$FeaturedProjectsDataFromJson(json);
}
