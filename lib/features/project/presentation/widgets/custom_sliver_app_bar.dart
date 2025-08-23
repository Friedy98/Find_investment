import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:find_invest_mobile/features/project_category/domain/entities/project_category_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomSliverAppBar extends StatelessWidget {
  final ProjectEntity project;
  final bool canEdit;
  final VoidCallback? onShare;
  final Function(String) onMenuAction;

  const CustomSliverAppBar({
    super.key,
    required this.project,
    required this.canEdit,
    this.onShare,
    required this.onMenuAction,
  });

  @override
  Widget build(BuildContext context) {
    final progress = project.fundingGoal > 0
        ? (project.currentFunding ?? 0 / project.fundingGoal).clamp(0.0, 1.0)
        : 0.0;
    final category = project.category as ProjectCategoryEntity;

    return SliverAppBar(
      expandedHeight: 500.h, // Increased to accommodate content
      pinned: true,
      elevation: 0,
      backgroundColor: AppColors.background,
      leading: Container(
        margin: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(12.r),
          // boxShadow: [
          //   BoxShadow(
          //     color: AppColors.shadow.withOpacity(0.1),
          //     blurRadius: 8,
          //     offset: const Offset(0, 2),
          //   ),
          // ],
        ),
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios,
              color: AppColors.textPrimary, size: 20.sp),
          onPressed: () => context.pop(),
        ).animate().fadeIn(duration: 300.ms),
      ),
      actions: [
        Container(
          margin: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            borderRadius: BorderRadius.circular(12.r),
            // boxShadow: [
            //   BoxShadow(
            //     color: AppColors.shadow.withOpacity(0.1),
            //     blurRadius: 8,
            //     offset: const Offset(0, 2),
            //   ),
            // ],
          ),
          child: canEdit
              ? PopupMenuButton<String>(
                  icon: Icon(Icons.more_horiz,
                      color: AppColors.textPrimary, size: 22.sp),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  color: AppColors.cardBackground,
                  elevation: 4,
                  onSelected: onMenuAction,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 'edit',
                      child: Row(
                        children: [
                          Icon(Icons.edit,
                              size: 18.sp, color: AppColors.primary),
                          SizedBox(width: 12.w),
                          Text('Edit Project',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.textPrimary)),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 'submit',
                      child: Row(
                        children: [
                          Icon(Icons.send,
                              size: 18.sp, color: AppColors.success),
                          SizedBox(width: 12.w),
                          Text('Submit for Review',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.textPrimary)),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 'delete',
                      child: Row(
                        children: [
                          Icon(Icons.delete,
                              size: 18.sp, color: AppColors.error),
                          SizedBox(width: 12.w),
                          Text('Delete Project',
                              style: TextStyle(
                                  fontSize: 14.sp, color: AppColors.error)),
                        ],
                      ),
                    ),
                  ],
                ).animate().fadeIn(duration: 400.ms)
              : IconButton(
                  icon: Icon(Icons.share,
                      color: AppColors.textPrimary, size: 22.sp),
                  onPressed: onShare,
                ).animate().fadeIn(duration: 400.ms),
        ),
      ],
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          return FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                _buildBackgroundImage(),
                _buildHeaderContent(category, progress.toDouble(), constraints),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.primary.withOpacity(0.7),
            AppColors.primary.withOpacity(0.3)
          ],
        ),
      ),
      child: project.coverImage != null
          ? CachedNetworkImage(
              imageUrl: project.coverImage!,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                color: AppColors.accent.withOpacity(0.3),
                child: const Center(
                    child: CircularProgressIndicator(
                        color: AppColors.textPrimary)),
              ),
              errorWidget: (context, url, error) => _buildDefaultBackground(),
            )
          : _buildDefaultBackground(),
    );
  }

  Widget _buildDefaultBackground() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.accent, AppColors.accent.withOpacity(0.5)],
        ),
      ),
      child: Center(
        child: Icon(
          _getCategoryIcon(),
          size: 150.sp,
          color: AppColors.textPrimary.withOpacity(0.2),
        ).animate().scale(duration: 600.ms, curve: Curves.easeOut),
      ),
    );
  }

  Widget _buildHeaderContent(ProjectCategoryEntity category, double progress,
      BoxConstraints constraints) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: constraints.maxHeight - 100.h, // Adjust to avoid overflow
      ),
      child: Padding(
        padding:
            EdgeInsets.only(top: 100.h, left: 16.w, right: 16.w, bottom: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    project.title,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w800,
                      color: AppColors.textPrimary,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.3),
                ),
                SizedBox(width: 12.w),
                _buildCategoryChip(category),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Icon(Icons.location_on,
                    color: AppColors.textSecondary, size: 18.sp),
                SizedBox(width: 8.w),
                Text(
                  '${project.location?.city ?? ''}, ${project.location?.country ?? ''}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.sp,
                    color: AppColors.textSecondary,
                  ),
                ).animate().fadeIn(duration: 600.ms).slideX(begin: 0.3),
              ],
            ),
            SizedBox(height: 20.h),
            _buildStatusChip(),
            SizedBox(height: 12.h),
            _buildFundingProgress(progress),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusChip() {
    Color color;
    String label;
    IconData icon;
    switch (project.status?.toLowerCase()) {
      case 'active':
        color = AppColors.success;
        label = 'Active';
        icon = Icons.play_circle_fill;
        break;
      case 'draft':
        color = AppColors.warning;
        label = 'Draft';
        icon = Icons.edit;
        break;
      case 'completed':
        color = AppColors.info;
        label = 'Completed';
        icon = Icons.check_circle;
        break;
      case 'cancelled':
        color = AppColors.error;
        label = 'Cancelled';
        icon = Icons.cancel;
        break;
      default:
        color = AppColors.textTertiary;
        label = project.status ?? "";
        icon = Icons.info;
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color, color.withOpacity(0.7)]),
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
              color: color.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 2)),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 14.sp),
          SizedBox(width: 6.w),
          Text(label,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    ).animate().fadeIn(duration: 700.ms).scale();
  }

  Widget _buildCategoryChip(ProjectCategoryEntity category) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.accent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.accent.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(_getCategoryIcon(), size: 14.sp, color: AppColors.accent),
          SizedBox(width: 6.w),
          Text(
            category.name,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: AppColors.accent,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 800.ms).scale();
  }

  Widget _buildFundingProgress(double progress) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16.r),
        // boxShadow: [
        //   BoxShadow(color: AppColors.shadow.withOpacity(0.1), blurRadius: 10, offset: const Offset(0, 4)),
        // ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Raised',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        color: AppColors.textSecondary,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 4.h),
                Text(
                    '${_formatCurrency(project.currentFunding?.toDouble() ?? 0)} ${project.currency}',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary)),
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text('Goal',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        color: AppColors.textSecondary,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 4.h),
                Text(
                    '${_formatCurrency(project.fundingGoal.toDouble())} ${project.currency}',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary)),
              ]),
            ],
          ),
          SizedBox(height: 12.h),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: AppColors.accent.withOpacity(0.2),
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
            minHeight: 6.h,
            borderRadius: BorderRadius.circular(3.r),
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${(progress * 100).toStringAsFixed(1)}% Funded',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      color: AppColors.textPrimary)),
              Text('${project.daysRemaining ?? 0} Days Left',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      color: AppColors.textPrimary)),
            ],
          ),
        ],
      ),
    ).animate().fadeIn(duration: 900.ms).slideY(begin: 0.3);
  }

  IconData _getCategoryIcon() {
    switch (project.category.slug.split('-').first.toLowerCase()) {
      case 'business':
        return Icons.business_center;
      case 'tech':
        return Icons.laptop;
      case 'health':
        return Icons.local_hospital;
      case 'education':
        return Icons.school;
      case 'agriculture':
        return Icons.local_florist;
      case 'environment':
        return Icons.nature;
      default:
        return Icons.category;
    }
  }

  String _formatCurrency(double amount) {
    if (amount >= 1000000) return '${(amount / 1000000).toStringAsFixed(1)}M';
    if (amount >= 1000) return '${(amount / 1000).toStringAsFixed(1)}K';
    return amount.toStringAsFixed(0);
  }
}
