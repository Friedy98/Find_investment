import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_category_model.freezed.dart';
part 'project_category_model.g.dart';

@freezed
class ProjectCategoryModel with _$ProjectCategoryModel {
  const ProjectCategoryModel._();

  factory ProjectCategoryModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String slug,
    String? description,
    @JsonKey(
      name: 'parent',
      fromJson: _parentFromJson,
      toJson: _parentToJson,
    )
    dynamic parent, // Peut être null, String (ID), ou ProjectCategoryModel (populé)
    bool? isActive,
    int? order,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? updatedAt,
    @Default([]) List<ProjectCategoryModel>? subcategories, // Champ virtuel
    @Default(0) int? projectCount, // Champ virtuel
  }) = _ProjectCategoryModel;

  factory ProjectCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectCategoryModelFromJson(json);
}

// Convertisseurs JSON
DateTime? _dateTimeFromJson(String? timestamp) =>
    timestamp != null ? DateTime.parse(timestamp) : null;

String? _dateTimeToJson(DateTime? dateTime) => dateTime?.toIso8601String();

// Conversion pour parent
dynamic _parentFromJson(dynamic json) {
  if (json == null) return null; // Si null, retourne null
  if (json is String) return json; // Si chaîne, retourne l'ID
  if (json is Map<String, dynamic>) {
    return ProjectCategoryModel.fromJson(json); // Si objet, crée le modèle populé
  }
  throw Exception('Invalid parent format');
}

dynamic _parentToJson(dynamic parent) {
  if (parent == null) return null;
  if (parent is String) return parent; // Si ID, retourne tel quel
  if (parent is ProjectCategoryModel) return parent.toJson(); // Si objet, sérialise
  throw Exception('Invalid parent type');
}