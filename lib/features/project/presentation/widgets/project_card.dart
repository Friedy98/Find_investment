import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project_category/domain/entities/project_category_entity.dart';

class ProjectCard extends ConsumerWidget {
  final ProjectEntity project;

  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => context.push('/project/${project.id}'),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
          side: const BorderSide(color: AppColors.gray200),
        ),
        color: AppColors.cardBackground,
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              SizedBox(height: 12.h),
              _buildContent(),
              SizedBox(height: 12.h),
              _buildFooter(),
            ],
          ),
        ),
      ).animate().fadeIn(duration: 300.ms).slideY(begin: 0.3),
    );
  }

  Widget _buildHeader() {
    final categoryName = project.category is ProjectCategoryEntity
        ? (project.category as ProjectCategoryEntity).name
        : project.category is String
            ? project.category as String
            : 'Non spécifié';

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            project.title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (project.priority != null)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: _getPriorityColor(project.priority!),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              _getPriorityLabel(project.priority!),
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10.sp,
                color: Colors.white,
              ),
            ),
          ),
      ],
    ).animate(delay: 100.ms).fadeIn().slideX(begin: -0.3);
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (project.shortDescription != null)
          Text(
            project.shortDescription!,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.sp,
              color: AppColors.textSecondary,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ).animate(delay: 200.ms).fadeIn().slideX(begin: -0.3),
        SizedBox(height: 8.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: [
            _buildInfoChip(
              label: project.category is ProjectCategoryEntity
                  ? (project.category as ProjectCategoryEntity).name
                  : project.category is String
                      ? project.category as String
                      : 'Catégorie inconnue',
              icon: Icons.category,
            ),
            _buildInfoChip(
              label: project.sector,
              icon: Icons.business,
            ),
            if (project.subSector != null)
              _buildInfoChip(
                label: project.subSector!,
                icon: Icons.subdirectory_arrow_right,
              ),
            if (project.tags != null && project.tags!.isNotEmpty)
              _buildInfoChip(
                label: project.tags!.join(', '),
                icon: Icons.tag,
              ),
          ],
        ).animate(delay: 300.ms).fadeIn().slideX(begin: -0.3),
      ],
    );
  }

  Widget _buildFooter() {
    final fundingProgress = project.fundingProgress ?? 0;
    final currency = project.currency ?? 'EUR';
    final daysRemaining = project.daysRemaining ?? 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Financement',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimary,
              ),
            ),
            if (project.riskLevel != null)
              Text(
                _getRiskLevelLabel(project.riskLevel!),
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 10.sp,
                  color: _getRiskLevelColor(project.riskLevel!),
                ),
              ),
          ],
        ),
        SizedBox(height: 8.h),
        LinearProgressIndicator(
          value: fundingProgress / 100,
          backgroundColor: AppColors.textTertiary.withOpacity(0.2),
          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
          minHeight: 4.h,
          borderRadius: BorderRadius.circular(4.r),
        ).animate(delay: 400.ms).fadeIn(),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${(project.currentFunding ?? 0).toStringAsFixed(0)} $currency / ${project.fundingGoal.toStringAsFixed(0)} $currency',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.textSecondary,
              ),
            ),
            Text(
              daysRemaining > 0 ? '$daysRemaining jours restants' : 'Terminé',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: daysRemaining > 0
                    ? AppColors.textSecondary
                    : AppColors.error,
              ),
            ),
          ],
        ).animate(delay: 500.ms).fadeIn().slideX(begin: -0.3),
        if (project.expectedReturn != null &&
            project.expectedReturn!.percentage != null)
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Text(
              'Retour attendu : ${project.expectedReturn!.percentage}% ${project.expectedReturn!.period ?? ''}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.accent,
              ),
            ),
          ).animate(delay: 600.ms).fadeIn().slideX(begin: -0.3),
        if (project.location != null && project.location!.city != null)
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Text(
              'Lieu : ${project.location!.city}, ${project.location!.country}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.textSecondary,
              ),
            ),
          ).animate(delay: 700.ms).fadeIn().slideX(begin: -0.3),
      ],
    );
  }

  Widget _buildInfoChip({required String label, required IconData icon}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.accent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 12.sp,
            color: AppColors.accent,
          ),
          SizedBox(width: 4.w),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 10.sp,
              color: AppColors.textSecondary,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Color _getPriorityColor(String priority) {
    return switch (priority) {
      'urgent' => AppColors.error,
      'high' => Colors.orange,
      'medium' => AppColors.primary,
      _ => AppColors.textTertiary,
    };
  }

  String _getPriorityLabel(String priority) {
    return switch (priority) {
      'urgent' => 'Urgent',
      'high' => 'Élevé',
      'medium' => 'Moyen',
      'low' => 'Faible',
      _ => 'Non spécifié',
    };
  }

  Color _getRiskLevelColor(String riskLevel) {
    return switch (riskLevel) {
      'high' => AppColors.error,
      'medium' => Colors.orange,
      'low' => AppColors.success,
      _ => AppColors.textTertiary,
    };
  }

  String _getRiskLevelLabel(String riskLevel) {
    return switch (riskLevel) {
      'high' => 'Risque Élevé',
      'medium' => 'Risque Moyen',
      'low' => 'Risque Faible',
      _ => 'Risque Non Spécifié',
    };
  }
}
