import 'package:freezed_annotation/freezed_annotation.dart';

part 'funding_stats_model.freezed.dart';
part 'funding_stats_model.g.dart';

@freezed
class FundingStats with _$FundingStats {
  factory FundingStats({
    @Default(0) double totalFunding,
    @Default(0) double averageFunding,
    @Default(0) double totalGoal,
  }) = _FundingStats;

  factory FundingStats.fromJson(Map<String, dynamic> json) =>
      _$FundingStatsFromJson(json);
}