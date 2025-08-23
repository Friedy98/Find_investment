import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/project/data/models/project_document_model.dart';
import 'package:find_invest_mobile/features/project/data/models/media_video_model.dart';

part 'project_media_model.freezed.dart';
part 'project_media_model.g.dart';

@freezed
class ProjectMediaModel with _$ProjectMediaModel {
  factory ProjectMediaModel({
    String? logo,
    String? coverImage,
    @Default([]) List<String> images,
    @Default([]) List<MediaVideoModel> videos,
    @JsonKey(fromJson: _documentsFromJson, toJson: _documentsToJson) @Default([]) List<dynamic> documents,
  }) = _ProjectMediaModel;

  factory ProjectMediaModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectMediaModelFromJson(json);
}

List<dynamic> _documentsFromJson(List<dynamic> json) {
  return json.map((item) {
    if (item is String) return item;
    if (item is Map<String, dynamic>) return ProjectDocumentModel.fromJson(item);
    throw Exception('Invalid document format');
  }).toList();
}

List<dynamic> _documentsToJson(List<dynamic> documents) {
  return documents.map((item) {
    if (item is ProjectDocumentModel) return item.toJson();
    return item;
  }).toList();
}