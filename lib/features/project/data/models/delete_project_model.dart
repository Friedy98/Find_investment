import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_project_model.freezed.dart';
part 'delete_project_model.g.dart';

@freezed
class DeleteProjectModel with _$DeleteProjectModel {
  factory DeleteProjectModel({
    required bool success,
    required String message,
  }) = _DeleteProjectModel;

  factory DeleteProjectModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteProjectModelFromJson(json);
}