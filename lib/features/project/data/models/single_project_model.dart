import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';

part 'single_project_model.freezed.dart';
part 'single_project_model.g.dart';

@freezed
class SingleProjectModel with _$SingleProjectModel {
  factory SingleProjectModel({
    required bool success,
    required SingleProjectData data,
    String? message,
  }) = _SingleProjectModel;

  factory SingleProjectModel.fromJson(Map<String, dynamic> json) =>
      _$SingleProjectModelFromJson(json);
}

@freezed
class SingleProjectData with _$SingleProjectData {
  factory SingleProjectData({
    required ProjectModel project,
  }) = _SingleProjectData;

  factory SingleProjectData.fromJson(Map<String, dynamic> json) =>
      _$SingleProjectDataFromJson(json);
}
