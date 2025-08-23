import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/widgets/modern_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OverviewTab extends StatelessWidget {
  final ProjectEntity project;

  const OverviewTab({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ModernCard(
          title: 'Description',
          icon: Icons.description,
          child: Text(
            project.description ?? 'No description available',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              color: AppColors.textPrimary,
              height: 1.6,
            ),
          ),
        ).animate().fadeIn().slideY(begin: 0.3),
        SizedBox(height: 20.h),
        ModernCard(
          title: 'Key Information',
          icon: Icons.info_outline,
          child: Column(
            children: [
              _buildInfoRow(Icons.category, 'Category', project.category.name),
              _buildInfoRow(Icons.location_on, 'Location',
                  '${project.location?.city ?? ''}, ${project.location?.country ?? 'Not specified'}'),
              _buildInfoRow(Icons.schedule, 'Duration',
                  '${project.durationMonths ?? 0} months'),
              _buildInfoRow(Icons.security, 'Risk Level',
                  project.riskLevel?.toUpperCase() ?? 'N/A'),
              if (project.daysRemaining != null)
                _buildInfoRow(Icons.timer, 'Days Remaining',
                    '${project.daysRemaining} days'),
            ],
          ),
        ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),
        if (project.tags != null && project.tags!.isNotEmpty)
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
                          gradient: LinearGradient(
                            colors: [
                              AppColors.primary.withOpacity(0.1),
                              AppColors.primary.withOpacity(0.05),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            color: AppColors.primary.withOpacity(0.2),
                          ),
                        ),
                        child: Text(
                          tag,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: AppColors.primary,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.3),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          Icon(icon, size: 18.sp, color: AppColors.primary),
          SizedBox(width: 12.w),
          SizedBox(
            width: 100.w,
            child: Text(
              label,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
