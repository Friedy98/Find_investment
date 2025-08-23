import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_video_model.freezed.dart';
part 'media_video_model.g.dart';

@freezed
class MediaVideoModel with _$MediaVideoModel {
  factory MediaVideoModel({
    String? url,
    String? title,
    String? description,
    String? thumbnail,
  }) = _MediaVideoModel;

  factory MediaVideoModel.fromJson(Map<String, dynamic> json) =>
      _$MediaVideoModelFromJson(json);
}