import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../project_doc/domain/entities/project_document_entity.dart';

class DocumentSearchDelegate extends SearchDelegate<ProjectDocumentEntity?> {
  final List<ProjectDocumentEntity> documents;
  final Function(ProjectDocumentEntity) onDocumentSelected;

  DocumentSearchDelegate({
    required this.documents,
    required this.onDocumentSelected,
  });

  @override
  String get searchFieldLabel => 'Rechercher un document...';

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
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: const Icon(Icons.clear, color: AppColors.textPrimary),
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
      icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
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
    final filteredDocuments = documents.where((document) {
      final searchLower = query.toLowerCase();
      return document.name.toLowerCase().contains(searchLower) ||
          (document.description?.toLowerCase().contains(searchLower) ??
              false) ||
          document.type.toLowerCase().contains(searchLower);
    }).toList();

    if (filteredDocuments.isEmpty) {
      return _buildNoResults(context);
    }

    return Container(
      color: AppColors.background,
      child: ListView.builder(
        padding: EdgeInsets.all(16.w),
        itemCount: filteredDocuments.length,
        itemBuilder: (context, index) {
          final document = filteredDocuments[index];
          return _buildDocumentItem(context, document);
        },
      ),
    );
  }

  Widget _buildDocumentItem(
      BuildContext context, ProjectDocumentEntity document) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      child: Card(
        color: AppColors.cardBackground,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: InkWell(
          onTap: () {
            close(context, document);
            onDocumentSelected(document);
          },
          borderRadius: BorderRadius.circular(12.r),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              children: [
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: _getTypeColor(document.type).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    _getDocumentIcon(document.type),
                    color: _getTypeColor(document.type),
                    size: 24.sp,
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        document.name,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (document.description != null) ...[
                        SizedBox(height: 4.h),
                        Text(
                          document.description!,
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
                              color:
                                  _getTypeColor(document.type).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: Text(
                              _getTypeLabel(document.type),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: _getTypeColor(document.type),
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          if (document.isApproved)
                            Icon(
                              Icons.verified,
                              color: AppColors.success,
                              size: 16.sp,
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
                _buildRecentSearchItem(
                    context, 'Business plan', Icons.business),
                _buildRecentSearchItem(
                    context, 'Documents financiers', Icons.account_balance),
                _buildRecentSearchItem(
                    context, 'Présentation', Icons.slideshow),
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
                'Aucun document trouvé',
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

  IconData _getDocumentIcon(String type) {
    switch (type.toLowerCase()) {
      case 'business_plan':
        return Icons.business;
      case 'financial':
        return Icons.account_balance;
      case 'legal':
        return Icons.gavel;
      case 'presentation':
        return Icons.slideshow;
      case 'pdf':
        return Icons.picture_as_pdf;
      case 'image':
        return Icons.image;
      case 'video':
        return Icons.video_file;
      default:
        return Icons.description;
    }
  }

  Color _getTypeColor(String type) {
    switch (type.toLowerCase()) {
      case 'business_plan':
        return AppColors.primary;
      case 'financial':
        return AppColors.success;
      case 'legal':
        return AppColors.warning;
      case 'presentation':
        return AppColors.info;
      default:
        return AppColors.textSecondary;
    }
  }

  String _getTypeLabel(String type) {
    switch (type.toLowerCase()) {
      case 'business_plan':
        return 'Business Plan';
      case 'financial':
        return 'Financier';
      case 'legal':
        return 'Légal';
      case 'presentation':
        return 'Présentation';
      default:
        return 'Document';
    }
  }
}
