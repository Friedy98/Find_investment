import 'package:find_invest_mobile/features/project/data/models/project_stats_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_stats_model.freezed.dart';
part 'project_stats_model.g.dart';

@freezed
class ProjectStatsModel with _$ProjectStatsModel {
  factory ProjectStatsModel({
    required bool success,
    required ProjectStatsData data,
  }) = _ProjectStatsModel;

  factory ProjectStatsModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectStatsModelFromJson(json);
}


