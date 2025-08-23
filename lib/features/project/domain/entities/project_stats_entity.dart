import 'package:equatable/equatable.dart';

class ProjectStats extends Equatable {
  final int total;
  final int active;
  final int funded;
  final int completed;
  final List<StatCount> byStatus;
  final List<CategoryStat> byCategory;
  final List<TimelineStat> timeline;
  final FundingStats funding;

  const ProjectStats({
    required this.total,
    required this.active,
    required this.funded,
    required this.completed,
    required this.byStatus,
    required this.byCategory,
    required this.timeline,
    required this.funding,
  });

  @override
  List<Object?> get props => [
        total,
        active,
        funded,
        completed,
        byStatus,
        byCategory,
        timeline,
        funding,
      ];
}

class StatCount extends Equatable {
  final String id;
  final int count;

  const StatCount({
    required this.id,
    required this.count,
  });

  @override
  List<Object?> get props => [id, count];
}

class CategoryStat extends Equatable {
  final String id;
  final int count;
  final double totalFunding;
  final List<dynamic>? categoryInfo;

  const CategoryStat({
    required this.id,
    required this.count,
    required this.totalFunding,
    this.categoryInfo,
  });

  @override
  List<Object?> get props => [id, count, totalFunding, categoryInfo];
}

class TimelineStat extends Equatable {
  final String date;
  final int count;
  final double totalFunding;

  const TimelineStat({
    required this.date,
    required this.count,
    required this.totalFunding,
  });

  @override
  List<Object?> get props => [date, count, totalFunding];
}

class FundingStats extends Equatable {
  final double totalFunding;
  final double averageFunding;
  final double totalGoal;

  const FundingStats({
    required this.totalFunding,
    required this.averageFunding,
    required this.totalGoal,
  });

  @override
  List<Object?> get props => [totalFunding, averageFunding, totalGoal];
}
