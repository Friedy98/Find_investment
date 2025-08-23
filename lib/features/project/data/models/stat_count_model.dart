import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_count_model.freezed.dart';
part 'stat_count_model.g.dart';

@freezed
class StatCount with _$StatCount {
  factory StatCount({
    @JsonKey(name: '_id') required String id,
    required int count,
  }) = _StatCount;

  factory StatCount.fromJson(Map<String, dynamic> json) =>
      _$StatCountFromJson(json);
}