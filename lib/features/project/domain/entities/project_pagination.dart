import 'package:equatable/equatable.dart';

class ProjectPaginationEntity extends Equatable {
  final int page;
  final int limit;
  final int totalDocs;
  final int totalPages;
  final bool hasNextPage;
  final bool hasPrevPage;

  const ProjectPaginationEntity({
    this.page = 1,
    this.limit = 20,
    required this.totalDocs,
    required this.totalPages,
    required this.hasNextPage,
    required this.hasPrevPage,
  });

  @override
  List<Object?> get props => [
        page,
        limit,
        totalDocs,
        totalPages,
        hasNextPage,
        hasPrevPage,
      ];
}
