import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_stats_model.freezed.dart';
part 'category_stats_model.g.dart';

@freezed
class CategoryStat with _$CategoryStat {
  factory CategoryStat({
    @JsonKey(name: '_id') required String id,
    required int count,
    required double totalFunding,
    List<dynamic>? categoryInfo, // ou un type + model si tu veux les détails de la catégorie
  }) = _CategoryStat;

  factory CategoryStat.fromJson(Map<String, dynamic> json) =>
      _$CategoryStatFromJson(json);
}