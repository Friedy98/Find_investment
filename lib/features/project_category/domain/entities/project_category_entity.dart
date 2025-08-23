import 'package:equatable/equatable.dart';

class ProjectCategoryEntity extends Equatable {
  final String id; // _id de MongoDB
  final String name;
  final String slug;
  final String? description;
  final dynamic
      parent; // Peut être null, String (ID), ou ProjectCategoryEntity (populé)
  final bool? isActive;
  final int? order;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<ProjectCategoryEntity>? subcategories; // Champ virtuel, nullable
  final int? projectCount; // Champ virtuel, nullable

  const ProjectCategoryEntity({
    required this.id,
    required this.name,
    required this.slug,
    this.description,
    this.parent,
    this.isActive,
    this.order,
    this.createdAt,
    this.updatedAt,
    this.subcategories,
    this.projectCount,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        slug,
        description,
        parent,
        isActive,
        order,
        createdAt,
        updatedAt,
        subcategories,
        projectCount,
      ];
}
