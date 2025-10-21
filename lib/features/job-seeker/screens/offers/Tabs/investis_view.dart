import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/features/project/presentation/widgets/modern_card.dart';

class ProjectsInvested extends ConsumerWidget {
  final ProjectEntity project;
  final bool isOwner;

  const ProjectsInvested({super.key, required this.project, required this.isOwner});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectState = ref.watch(projectProvider);
    final investorsCount = projectState.projectInvestors?.length ?? 0;

    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with cover image
          Container(
            width: double.infinity,
            // padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.background,
                  AppColors.cardBackground,
                ],
              ),
              borderRadius: BorderRadius.circular(16.r),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black.withOpacity(0.1),
              //     blurRadius: 10,
              //     offset: const Offset(0, 4),
              //   ),
              // ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildStatusChip(project.status ?? 'unknown'),
                    if (project.featured ?? false) _buildFeaturedChip()
                  ],
                ),

                SizedBox(height: 12.h),
                // _buildCategoryChip(project.category),
                // SizedBox(height: 16.h),

                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: project.coverImage != null
                      ? CachedNetworkImage(
                    imageUrl: project.coverImage!,
                    fit: BoxFit.cover,
                    height: 160.h,
                    width: double.infinity,
                    placeholder: (context, url) => Container(
                      color: AppColors.accent.withOpacity(0.2),
                      child: const Center(
                          child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, error, stackTrace) =>
                        _buildDefaultBackground(project),
                  )
                      : _buildDefaultBackground(project),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Text(
                    project.title,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                )
              ],
            ),
          ).animate().fadeIn().slideY(begin: 0.3),

          SizedBox(height: 24.h),

          // Funding Progress
          Container(
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Funding Progress',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Raised',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          '${_formatCurrency(project.currentFunding ?? 0)} ${project.currency ?? 'USD'}',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Goal',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          '${_formatCurrency(project.fundingGoal)} ${project.currency ?? 'USD'}',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                LinearProgressIndicator(
                  value: project.fundingGoal > 0
                      ? (project.currentFunding ?? 0) / project.fundingGoal
                      : 0.0,
                  backgroundColor: AppColors.textTertiary.withOpacity(0.2),
                  valueColor:
                  const AlwaysStoppedAnimation<Color>(AppColors.primary),
                  minHeight: 6.h,
                ),
              ],
            ),
          ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),

          SizedBox(height: 24.h),

          // Stats Cards
          Row(
            children: [
              Expanded(
                child: _buildStatCard(
                  'Funded',
                  '${((project.currentFunding ?? 0) / project.fundingGoal * 100).toInt()}%',
                  Icons.trending_up,
                  AppColors.primary,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: _buildStatCard(
                  'Investors',
                  '$investorsCount',
                  Icons.group,
                  AppColors.success,
                ),
              ),
            ],
          ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.3),

          SizedBox(height: 16.h),

          Row(
            children: [
              Expanded(
                child: _buildStatCard(
                  'Days Left',
                  '${project.daysRemaining ?? 0}',
                  Icons.timer,
                  AppColors.warning,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: _buildStatCard(
                  'Min Investment',
                  '${_formatCurrency(project.minimumInvestment ?? 0)} ${project.currency ?? 'USD'}',
                  Icons.account_balance_wallet,
                  AppColors.info,
                ),
              ),
            ],
          ).animate(delay: 300.ms).fadeIn().slideY(begin: 0.3),

          SizedBox(height: 24.h),

          // Description
          ModernCard(
            title: 'Description',
            icon: Icons.description,
            child: Text(
              project.description,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textPrimary,
                height: 1.6,
              ),
            ),
          ).animate(delay: 400.ms).fadeIn().slideY(begin: 0.3),

          SizedBox(height: 24.h),

          // Key Information
          ModernCard(
            title: 'Key Information',
            icon: Icons.info_outline,
            child: Column(
              children: [
                _buildInfoRow(
                  Icons.category,
                  'Category',
                  project.category is Map
                      ? project.category['name'] ?? 'Not specified'
                      : 'Not specified',
                ),
                _buildInfoRow(
                  Icons.location_on,
                  'Location',
                  '${project.location?.city ?? ''}, ${project.location?.region ?? ''}, ${project.location?.country ?? 'Not specified'}',
                ),
                _buildInfoRow(
                  Icons.schedule,
                  'Duration',
                  '${project.durationMonths ?? 0} months',
                ),
                _buildInfoRow(
                  Icons.security,
                  'Risk Level',
                  project.riskLevel?.toUpperCase() ?? 'N/A',
                ),
                if (project.daysRemaining != null)
                  _buildInfoRow(
                    Icons.timer,
                    'Days Remaining',
                    '${project.daysRemaining} days',
                  ),
              ],
            ),
          ).animate(delay: 500.ms).fadeIn().slideY(begin: 0.3),

          SizedBox(height: 24.h),

          // Tags
          if (project.tags?.isNotEmpty ?? false)
            ModernCard(
              title: 'Tags',
              icon: Icons.local_offer,
              child: Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: project.tags!
                    .map((tag) => Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 12.w, vertical: 6.h),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(
                      color: AppColors.primary.withOpacity(0.3),
                    ),
                  ),
                  child: Text(
                    tag,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
                ))
                    .toList(),
              ),
            ).animate(delay: 600.ms).fadeIn().slideY(begin: 0.3),

          if (!isOwner)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: ElevatedButton(
                onPressed: () => _showInvestDialog(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  minimumSize: Size(double.infinity, 56.h),
                ),
                child: Text(
                  'Invest Now',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ).animate(delay: 700.ms).fadeIn().scale(),
            ),

          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget _buildDefaultBackground(ProjectEntity project) {
    final categoryColor = (project.category is Map &&
        project.category['color'] != null)
        ? Color(int.parse(project.category['color'].replaceFirst('#', '0xFF')))
        : AppColors.primary;
    return Container(
      height: 160.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            categoryColor,
            categoryColor.withOpacity(0.6),
          ],
        ),
      ),
      child: Center(
        child: Icon(
          _getCategoryIcon(project.category is Map
              ? project.category['icon'] ?? 'folder'
              : 'folder'),
          size: 60.sp,
          color: Colors.white.withOpacity(0.3),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36.w,
            height: 36.h,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              icon,
              size: 20.sp,
              color: AppColors.primary,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  value,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn().slideX(begin: 0.2);
  }

  Widget _buildStatusChip(String status) {
    Color color;
    String label;
    IconData icon;

    switch (status.toLowerCase()) {
      case 'active':
        color = AppColors.success;
        label = 'Active';
        icon = Icons.play_circle_outline;
        break;
      case 'draft':
        color = AppColors.warning;
        label = 'Draft';
        icon = Icons.edit_outlined;
        break;
      case 'completed':
        color = AppColors.info;
        label = 'Completed';
        icon = Icons.check_circle_outline;
        break;
      case 'cancelled':
        color = AppColors.error;
        label = 'Cancelled';
        icon = Icons.cancel_outlined;
        break;
      default:
        color = AppColors.textTertiary;
        label = status;
        icon = Icons.info_outline;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: color.withOpacity(0.5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 16.sp),
          SizedBox(width: 4.w),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    ).animate().scale(delay: 100.ms);
  }

  Widget _buildFeaturedChip() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.amber, Colors.orange],
        ),
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.amber.withOpacity(0.3),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, size: 16.sp, color: Colors.white),
          SizedBox(width: 4.w),
          Text(
            'Featured',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ).animate().scale(delay: 150.ms);
  }

  Widget _buildCategoryChip(dynamic category) {
    final categoryName =
    category is Map ? category['name'] ?? 'Unknown' : 'Unknown';
    final categoryIcon =
    category is Map ? category['icon'] ?? 'folder' : 'folder';
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.primary.withOpacity(0.5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _getCategoryIcon(categoryIcon),
            size: 16.sp,
            color: AppColors.primary,
          ),
          SizedBox(width: 4.w),
          Text(
            categoryName,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    ).animate().scale(delay: 200.ms);
  }

  Widget _buildStatCard(
      String title, String value, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border(
          left: BorderSide(color: color, width: 4.w),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(
              icon,
              color: color,
              size: 20.sp,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.sp,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  IconData _getCategoryIcon(String iconName) {
    switch (iconName.toLowerCase()) {
      case 'business':
        return Icons.business;
      case 'tech':
        return Icons.computer;
      case 'health':
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

  String _formatCurrency(num amount) {
    if (amount >= 1000000) {
      return '${(amount / 1000000).toStringAsFixed(1)}M';
    } else if (amount >= 1000) {
      return '${(amount / 1000).toStringAsFixed(1)}K';
    }
    return amount.toStringAsFixed(0);
  }

  void _showInvestDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'Invest in ${project.title}',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Minimum investment: ${project.minimumInvestment?.toStringAsFixed(0) ?? 'N/A'} ${project.currency ?? 'USD'}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 16.h),
            TextFormField(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textPrimary,
              ),
              decoration: InputDecoration(
                labelText: 'Investment Amount',
                labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: AppColors.textSecondary,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: const BorderSide(color: AppColors.primary),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Investment processing...'),
                  backgroundColor: AppColors.success,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              'Invest',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
