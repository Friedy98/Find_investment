import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProjectSearchDelegate extends SearchDelegate<ProjectEntity?> {
  final List<ProjectEntity> projects;
  final Function(ProjectEntity) onProjectSelected;

  ProjectSearchDelegate({
    required this.projects,
    required this.onProjectSelected,
  });

  @override
  String get searchFieldLabel => 'Rechercher des projets...';

  @override
  TextStyle get searchFieldStyle => TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16.sp,
        color: AppColors.textPrimary,
      );

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.cardBackground,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16.sp,
          color: AppColors.textSecondary,
        ),
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: Icon(Icons.clear, color: AppColors.textPrimary, size: 20.sp),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: AppColors.textPrimary, size: 20.sp),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildSearchResults(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return _buildRecentSearches(context);
    }
    return _buildSearchResults(context);
  }

  Widget _buildSearchResults(BuildContext context) {
    final filteredProjects = projects.where((project) {
      final searchLower = query.toLowerCase();
      return (project.title.toLowerCase().contains(searchLower)) ||
          (project.description?.toLowerCase().contains(searchLower) ?? false) ||
          (project.shortDescription?.toLowerCase().contains(searchLower) ??
              false) ||
          (project.category is String
              ? (project.category as String).toLowerCase().contains(searchLower)
              : false) ||
          (project.tags
                  ?.any((tag) => tag.toLowerCase().contains(searchLower)) ??
              false);
    }).toList();

    if (filteredProjects.isEmpty) {
      return _buildNoResults(context);
    }

    return Container(
      color: AppColors.background,
      child: ListView.builder(
        padding: EdgeInsets.all(16.w),
        itemCount: filteredProjects.length,
        itemBuilder: (context, index) {
          final project = filteredProjects[index];
          return _buildProjectSearchItem(context, project).animate().fadeIn(
                duration: 300.ms,
                delay: Duration(milliseconds: index * 100),
              );
        },
      ),
    );
  }

  Widget _buildProjectSearchItem(BuildContext context, ProjectEntity project) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      child: Card(
        color: AppColors.cardBackground,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
            side: BorderSide(color: AppColors.gray200.withOpacity(0.8))),
        child: InkWell(
          onTap: () {
            close(context, project);
            onProjectSelected(project);
          },
          borderRadius: BorderRadius.circular(12.r),
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: Row(
              children: [
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: project.coverImage != null
                        ? CachedNetworkImage(
                            imageUrl: project.coverImage!,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Container(
                              color: AppColors.accent.withOpacity(0.1),
                              child: Center(
                                child: Icon(
                                  Icons.image,
                                  color: AppColors.textTertiary,
                                  size: 20.sp,
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) => Container(
                              color: AppColors.accent.withOpacity(0.1),
                              child: Center(
                                child: Icon(
                                  Icons.error,
                                  color: AppColors.textTertiary,
                                  size: 20.sp,
                                ),
                              ),
                            ),
                          )
                        : Center(
                            child: Icon(
                              _getCategoryIcon(project.category is String
                                  ? project.category
                                  : 'default'),
                              color: AppColors.textTertiary.withOpacity(0.5),
                              size: 20.sp,
                            ),
                          ),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        project.title ?? 'Sans titre',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (project.shortDescription != null) ...[
                        SizedBox(height: 4.h),
                        Text(
                          project.shortDescription!,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.sp,
                            color: AppColors.textSecondary,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                      SizedBox(height: 4.h),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 2.h),
                            decoration: BoxDecoration(
                              color: AppColors.primary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: Text(
                              project.category is String
                                  ? project.category
                                  : 'Non catégorisé',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 2.h),
                            decoration: BoxDecoration(
                              color:
                                  _getStatusColor(project.status ?? 'unknown')
                                      .withOpacity(0.1),
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: Text(
                              _getStatusLabel(project.status ?? 'unknown'),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: _getStatusColor(
                                    project.status ?? 'unknown'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.textTertiary,
                  size: 16.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRecentSearches(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Text(
              'Recherches récentes',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildRecentSearchItem(context, 'Technologie', Icons.computer),
                _buildRecentSearchItem(
                    context, 'Santé', Icons.health_and_safety),
                _buildRecentSearchItem(context, 'Éducation', Icons.school),
                _buildRecentSearchItem(
                    context, 'Agriculture', Icons.agriculture),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentSearchItem(
      BuildContext context, String searchTerm, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: AppColors.textSecondary, size: 20.sp),
      title: Text(
        searchTerm,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14.sp,
          color: AppColors.textPrimary,
        ),
      ),
      trailing: Icon(
        Icons.north_west,
        color: AppColors.textTertiary,
        size: 16.sp,
      ),
      onTap: () {
        query = searchTerm;
        showResults(context);
      },
    );
  }

  Widget _buildNoResults(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(32.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search_off,
                size: 64.sp,
                color: AppColors.textTertiary,
              ),
              SizedBox(height: 16.h),
              Text(
                'Aucun projet trouvé',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Essayez avec d\'autres mots-clés',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getCategoryIcon(String? category) {
    switch (category?.toLowerCase()) {
      case 'business':
        return Icons.business;
      case 'tech':
      case 'technology':
        return Icons.computer;
      case 'health':
      case 'healthcare':
        return Icons.health_and_safety;
      case 'education':
        return Icons.school;
      case 'agriculture':
        return Icons.agriculture;
      case 'environment':
        return Icons.eco;
      default:
        return Icons.folder;
    }
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'active':
        return AppColors.success;
      case 'draft':
        return AppColors.warning;
      case 'completed':
        return AppColors.info;
      case 'cancelled':
        return AppColors.error;
      default:
        return AppColors.textTertiary;
    }
  }

  String _getStatusLabel(String status) {
    switch (status.toLowerCase()) {
      case 'active':
        return 'Actif';
      case 'draft':
        return 'Brouillon';
      case 'completed':
        return 'Terminé';
      case 'cancelled':
        return 'Annulé';
      default:
        return status;
    }
  }
}
