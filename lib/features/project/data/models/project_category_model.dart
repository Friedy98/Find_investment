import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_category_model.freezed.dart';
part 'project_category_model.g.dart';

@freezed
class ProjectCategoryModel with _$ProjectCategoryModel {
  factory ProjectCategoryModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    String? slug,
    String? description,
    @Default('folder') String icon,
    @Default('#007bff') String color,
  }) = _ProjectCategoryModel;

  factory ProjectCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectCategoryModelFromJson(json);
}