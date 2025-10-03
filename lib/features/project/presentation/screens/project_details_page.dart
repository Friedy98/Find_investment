import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/widgets/details_tab.dart';
import 'package:find_invest_mobile/features/project/presentation/widgets/documents_tab.dart';
import 'package:find_invest_mobile/features/project/presentation/widgets/overview_tab.dart';
import 'package:find_invest_mobile/features/project/presentation/widgets/timeline_tab.dart';
// import 'package:find_invest_mobile/features/project/presentation/widgets/timeline_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:go_router/go_router.dart';

class ProjectDetailsPage extends ConsumerStatefulWidget {
  final String projectId;

  const ProjectDetailsPage({
    super.key,
    required this.projectId,
  });

  @override
  ConsumerState<ProjectDetailsPage> createState() => _ProjectDetailsPageState();
}

class _ProjectDetailsPageState extends ConsumerState<ProjectDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(projectProvider.notifier).getProject(widget.projectId);
      // ref.read(projectProvider.notifier).getProjectInvestors(widget.projectId);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);
    final authState = ref.watch(authProvider);
    final project = projectState.selectedProject;

    if (projectState.isLoading || project == null) {
      return const Scaffold(
        backgroundColor: AppColors.background,
        body: LoadingOverlay(
          isLoading: true,
          child: Center(child: CircularProgressIndicator()),
        ),
      );
    }

    if (projectState.errorMessage != null) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.cardBackground,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: AppColors.textPrimary, size: 24.sp),
            onPressed: () => context.pop(),
          ),
        ),
        body: _buildErrorState(projectState.errorMessage!),
      );
    }

    final isOwner = authState.user?.id ==
        (project.owner is String
            ? project.owner
            : (project.owner as UserEntity).id);

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
          project.title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          )
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share_outlined,
                color: AppColors.textPrimary, size: 20.sp),
            onPressed: () => _shareProject(project),
          ),
          if (isOwner)
            PopupMenuButton<String>(
              icon: Icon(Icons.more_vert,
                  color: AppColors.textPrimary, size: 20.sp),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r)),
              onSelected: (value) => _handleMenuAction(value, project),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 'edit',
                  child: Row(
                    children: [
                      Icon(Icons.edit_outlined, size: 18.sp),
                      SizedBox(width: 12.w),
                      const Text('Edit Project'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'submit',
                  child: Row(
                    children: [
                      Icon(Icons.send_outlined, size: 18.sp),
                      SizedBox(width: 12.w),
                      const Text('Submit for Review'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'delete',
                  child: Row(
                    children: [
                      Icon(Icons.delete_outline,
                          color: AppColors.error, size: 18.sp),
                      SizedBox(width: 12.w),
                      const Text('Delete Project',
                          style: TextStyle(color: AppColors.error)),
                    ],
                  ),
                ),
              ],
            ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.h),
          child: Container(
            color: AppColors.cardBackground,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: AppColors.primary,
              unselectedLabelColor: AppColors.textSecondary,
              indicatorColor: AppColors.primary,
              indicatorWeight: 3.h,
              labelStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              tabs: const [
                Tab(text: 'Overview'),
                Tab(text: 'Details'),
                Tab(text: 'Timeline'),
                Tab(text: 'Team'),
                Tab(text: 'Documents'),
                Tab(text: 'Updates'),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: OverviewTab(project: project, isOwner: isOwner),
          ),
          SingleChildScrollView(
            child: DetailsTab(project: project),
          ),
          SingleChildScrollView(
            child: TimelineTab(project: project, isOwner: isOwner),
          ),
          const SingleChildScrollView(
            child: Center(child: Text("project: project, isOwner: isOwner")),
          ),
          SingleChildScrollView(
            child: DocumentsTab(project: project, isOwner: isOwner),
          ),
          const SingleChildScrollView(
            child: Center(child: Text("project: project, isOwner: isOwner")),
          ),

          // SingleChildScrollView(
          //   child: TeamTab(project: project, isOwner: isOwner),
          // ),
          // SingleChildScrollView(
          //   child: DocumentsTab(projectId: widget.projectId),
          // ),
          // SingleChildScrollView(
          //   child: UpdatesTab(projectId: widget.projectId),
          // ),
        ],
      ),
      floatingActionButton: _buildFloatingActionButton(project, isOwner),
    );
  }

  Widget _buildFloatingActionButton(ProjectEntity project, bool isOwner) {
    if (!isOwner && project.status == 'active') {
      return FloatingActionButton.extended(
        onPressed: () => _showInvestDialog(project),
        backgroundColor: AppColors.primary,
        elevation: 4,
        icon: Icon(Icons.attach_money, color: Colors.white, size: 20.sp),
        label: Text(
          'Invest',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ).animate().scale(delay: 800.ms);
    }
    return const SizedBox.shrink();
  }

  void _handleMenuAction(String action, ProjectEntity project) {
    switch (action) {
      case 'edit':
        context.push('/project/${project.id}/update');
        break;
      case 'submit':
        _submitProject(project.id);
        break;
      case 'delete':
        _showDeleteConfirmation(project);
        break;
    }
  }

  void _submitProject(String projectId) async {
    try {
      await ref.read(projectProvider.notifier).submitForReview(projectId);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Project submitted for review'),
            backgroundColor: AppColors.success,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error submitting project: $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  void _showDeleteConfirmation(ProjectEntity project) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'Delete Project',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        content: Text(
          'Are you sure you want to delete "${project.title}"? This action cannot be undone.',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            color: AppColors.textPrimary,
          ),
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
              _deleteProject(project.id);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              'Delete',
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

  void _deleteProject(String projectId) async {
    try {
      await ref.read(projectProvider.notifier).deleteProject(projectId);
      if (mounted) {
        context.pop();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Project deleted successfully'),
            backgroundColor: AppColors.success,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error deleting project: $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  void _showInvestDialog(ProjectEntity project) {
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

  void _shareProject(ProjectEntity project) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Share functionality coming soon')),
    );
  }

  Widget _buildErrorState(String errorMessage) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                color: AppColors.error.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.error_outline,
                size: 60.sp,
                color: AppColors.error,
              ),
            ).animate().scale(delay: 200.ms),
            SizedBox(height: 24.h),
            Text(
              'Error',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ).animate(delay: 300.ms).fadeIn(),
            SizedBox(height: 8.h),
            Text(
              errorMessage,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ).animate(delay: 400.ms).fadeIn(),
            SizedBox(height: 24.h),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(projectProvider.notifier).getProject(widget.projectId);
                // ref
                //     .read(projectProvider.notifier)
                //     .getProjectInvestors(widget.projectId);
              },
              icon: Icon(Icons.refresh, size: 20.sp),
              label: Text(
                'Retry',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                elevation: 2,
              ),
            ).animate(delay: 500.ms).fadeIn().slideY(begin: 0.3),
          ],
        ),
      ),
    );
  }
}
