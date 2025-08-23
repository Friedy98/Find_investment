import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_links_model.freezed.dart';
part 'social_links_model.g.dart';

@freezed
class SocialLinksModel with _$SocialLinksModel {
  factory SocialLinksModel({
    String? linkedin,
    String? twitter,
    String? facebook,
    String? instagram,
  }) = _SocialLinksModel;

  factory SocialLinksModel.fromJson(Map<String, dynamic> json) => _$SocialLinksModelFromJson(json);
}