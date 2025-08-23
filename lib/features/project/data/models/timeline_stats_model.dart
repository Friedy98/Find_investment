import 'package:freezed_annotation/freezed_annotation.dart';

part 'timeline_stats_model.freezed.dart';
part 'timeline_stats_model.g.dart';

@freezed
class TimelineStat with _$TimelineStat {
  factory TimelineStat({
    @JsonKey(name: '_id') required String date, // format "YYYY-MM"
    required int count,
    required double totalFunding,
  }) = _TimelineStat;

  factory TimelineStat.fromJson(Map<String, dynamic> json) =>
      _$TimelineStatFromJson(json);
}