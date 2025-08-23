import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/project/data/models/funding_stats_model.dart';
import 'package:find_invest_mobile/features/project/data/models/timeline_stats_model.dart';
import 'package:find_invest_mobile/features/project/data/models/category_stats_model.dart';
import 'package:find_invest_mobile/features/project/data/models/stat_count_model.dart';

part 'project_stats_data_model.freezed.dart';
part 'project_stats_data_model.g.dart';

@freezed
class ProjectStatsData with _$ProjectStatsData {
  factory ProjectStatsData({
    required int total,
    required int active,
    required int funded,
    required int completed,
    required List<StatCount> byStatus,
    required List<CategoryStat> byCategory,
    required List<TimelineStat> timeline,
    required FundingStats funding,
  }) = _ProjectStatsData;

  factory ProjectStatsData.fromJson(Map<String, dynamic> json) =>
      _$ProjectStatsDataFromJson(json);
}