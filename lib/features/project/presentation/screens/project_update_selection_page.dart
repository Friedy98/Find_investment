import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:go_router/go_router.dart';

class ProjectUpdateSelectionPage extends ConsumerStatefulWidget {
  final String projectId;

  const ProjectUpdateSelectionPage({super.key, required this.projectId});

  @override
  ConsumerState<ProjectUpdateSelectionPage> createState() =>
      _ProjectUpdateSelectionPageState();
}

class _ProjectUpdateSelectionPageState
    extends ConsumerState<ProjectUpdateSelectionPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(projectProvider.notifier).getProject(widget.projectId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);
    final project = projectState.selectedProject;

    if (project == null) {
      return const Scaffold(
        backgroundColor: AppColors.background,
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.cardBackground,
        elevation: 0,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: AppColors.textPrimary, size: 24.sp),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Update Project: ${project.title}',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionCard(
              title: 'General Information',
              icon: Icons.edit,
              description: 'Update title, description, category, sector, etc.',
              onTap: () =>
                  context.push('/project/${widget.projectId}/update/general'),
            ),
            SizedBox(height: 12.h),
            _buildSectionCard(
              title: 'Funding Details',
              icon: Icons.monetization_on,
              description:
                  'Update funding goal, type, min/max investment, expected return.',
              onTap: () =>
                  context.push('/project/${widget.projectId}/update/funding'),
            ),
            SizedBox(height: 12.h),
            _buildSectionCard(
              title: 'Location',
              icon: Icons.location_on,
              description:
                  'Update country, city, region, address, coordinates.',
              onTap: () =>
                  context.push('/project/${widget.projectId}/update/location'),
            ),
            SizedBox(height: 12.h),
            _buildSectionCard(
              title: 'Timeline',
              icon: Icons.calendar_today,
              description:
                  'Update start date, end date, funding deadline, duration.',
              onTap: () =>
                  context.push('/project/${widget.projectId}/update/timeline'),
            ),
            SizedBox(height: 12.h),
            _buildSectionCard(
              title: 'Financial Projections',
              icon: Icons.bar_chart,
              description:
                  'Update revenue, expenses, profit, break-even point.',
              onTap: () =>
                  context.push('/project/${widget.projectId}/update/financial'),
            ),
            SizedBox(height: 12.h),
            _buildSectionCard(
              title: 'Impact Data',
              icon: Icons.trending_up,
              description: 'Update social, environmental, economic impact.',
              onTap: () =>
                  context.push('/project/${widget.projectId}/update/impact'),
            ),
            SizedBox(height: 12.h),
            _buildSectionCard(
              title: 'Risks',
              icon: Icons.warning_amber,
              description: 'Update project risks.',
              onTap: () =>
                  context.push('/project/${widget.projectId}/update/risks'),
            ),
            SizedBox(height: 12.h),
            _buildSectionCard(
              title: 'SEO',
              icon: Icons.search,
              description: 'Update meta title, description, keywords.',
              onTap: () =>
                  context.push('/project/${widget.projectId}/update/seo'),
            ),
            SizedBox(height: 12.h),
            _buildSectionCard(
              title: 'Settings',
              icon: Icons.settings,
              description: 'Update project settings.',
              onTap: () =>
                  context.push('/project/${widget.projectId}/update/settings'),
            ),
            SizedBox(height: 12.h),
            _buildSectionCard(
              title: 'Media',
              icon: Icons.image,
              description: 'Upload images, videos, set cover image, logo.',
              onTap: () =>
                  context.push('/project/${widget.projectId}/update/media'),
            ),
            SizedBox(height: 12.h),
            _buildSectionCard(
              title: 'Team',
              icon: Icons.group,
              description: 'Add, update, or remove team members.',
              onTap: () =>
                  context.push('/project/${widget.projectId}/update/team'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard({
    required String title,
    required IconData icon,
    required String description,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
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
        child: Row(
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(
                icon,
                color: AppColors.primary,
                size: 24.sp,
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    description,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16.sp,
              color: AppColors.textTertiary,
            ),
          ],
        ),
      ),
    ).animate().fadeIn().slideX(begin: -0.3);
  }
}
