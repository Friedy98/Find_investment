import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project-milestone/presentation/providers/project_milestone_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class MilestoneManagementPage extends ConsumerStatefulWidget {
  final String projectId;

  const MilestoneManagementPage({super.key, required this.projectId});

  @override
  ConsumerState<MilestoneManagementPage> createState() =>
      _MilestoneManagementPageState();
}

class _MilestoneManagementPageState
    extends ConsumerState<MilestoneManagementPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(projectMilestoneProvider.notifier)
          .fetchMilestones(projectId: widget.projectId);
      ref
          .read(projectMilestoneProvider.notifier)
          .fetchProgressStats(widget.projectId);
      ref
          .read(projectMilestoneProvider.notifier)
          .fetchStatusStats(widget.projectId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final milestoneState = ref.watch(projectMilestoneProvider);

    // if (milestoneState.errorMessage != null) {
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(
    //         content: Text(milestoneState.errorMessage!),
    //         backgroundColor: AppColors.error,
    //       ),
    //     );
    //   });
    // }

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
          'Milestone Management',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
      ),
      body: LoadingOverlay(
        isLoading: milestoneState.isLoading,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProgressStats(milestoneState.progressStats),
              SizedBox(height: 24.h),
              _buildStatusStats(milestoneState.statusStats),
              SizedBox(height: 24.h),
              _buildMilestonesList(milestoneState.milestones),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            context.push('/project/${widget.projectId}/milestones/create'),
        backgroundColor: AppColors.primary,
        // elevation: 4,
        icon: Icon(Icons.add, color: Colors.white, size: 20.sp),
        label: const Text(
          'Add Milestone',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ).animate().scale(delay: 800.ms),
    );
  }

  Widget _buildProgressStats(ProgressStatsEntity? progressStats) {
    return _buildModernCard(
      title: 'Progress Stats',
      icon: Icons.bar_chart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatItem('Average Progress',
                  '${progressStats?.averageProgress.toStringAsFixed(1) ?? '0.0'}%'),
              _buildStatItem(
                  'Total Milestones', '${progressStats?.totalMilestones ?? 0}'),
            ],
          ),
          SizedBox(height: 16.h),
          LinearProgressIndicator(
            value: (progressStats?.averageProgress ?? 0) / 100,
            backgroundColor: AppColors.textTertiary.withOpacity(0.2),
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
            minHeight: 6.h,
            borderRadius: BorderRadius.circular(4.r),
          ),
        ],
      ),
    ).animate().fadeIn().slideY(begin: 0.3);
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            color: AppColors.textSecondary,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildStatusStats(List<StatusStatsEntity>? statusStats) {
    if (statusStats == null || statusStats.isEmpty) {
      return const SizedBox.shrink();
    }
    return _buildModernCard(
      title: 'Status Stats',
      icon: Icons.bar_chart,
      child: Column(
        children: statusStats.map((stat) {
          return Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  stat.status.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
                Text(
                  '${stat.count}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3);
  }

  Widget _buildMilestonesList(List<ProjectMilestoneEntity> milestones) {
    return _buildModernCard(
      title: 'Milestones',
      icon: Icons.flag,
      action: ElevatedButton.icon(
        onPressed: () =>
            context.push('/project/${widget.projectId}/milestones/create'),
        icon: Icon(Icons.add, size: 16.sp),
        label: Text(
          'New Milestone',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          elevation: 0,
        ),
      ),
      child: milestones.isEmpty
          ? _buildEmptyState('No milestones available')
          : Column(
              children: milestones.asMap().entries.map((entry) {
                final index = entry.key;
                final milestone = entry.value;
                return Container(
                  margin: EdgeInsets.only(bottom: 12.h),
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: _getStatusColor(milestone.status).withOpacity(0.3),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              milestone.title,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ),
                          PopupMenuButton<String>(
                            icon: Icon(Icons.more_vert, size: 20.sp),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            onSelected: (value) =>
                                _handleMilestoneAction(value, milestone),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: 'edit',
                                child: Row(
                                  children: [
                                    Icon(Icons.edit_outlined, size: 18.sp),
                                    SizedBox(width: 12.w),
                                    const Text('Edit'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 'update_progress',
                                child: Row(
                                  children: [
                                    Icon(Icons.update, size: 18.sp),
                                    SizedBox(width: 12.w),
                                    const Text('Update Progress'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 'update_status',
                                child: Row(
                                  children: [
                                    Icon(Icons.change_circle_outlined,
                                        size: 18.sp),
                                    SizedBox(width: 12.w),
                                    const Text('Update Status'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 'add_deliverable',
                                child: Row(
                                  children: [
                                    Icon(Icons.add_box_outlined, size: 18.sp),
                                    SizedBox(width: 12.w),
                                    const Text('Add Deliverable'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 'cancel',
                                child: Row(
                                  children: [
                                    Icon(Icons.cancel_outlined,
                                        color: AppColors.error, size: 18.sp),
                                    SizedBox(width: 12.w),
                                    const Text('Cancel',
                                        style:
                                            TextStyle(color: AppColors.error)),
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
                                    const Text('Delete',
                                        style:
                                            TextStyle(color: AppColors.error)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        milestone.description ?? 'No description available',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          color: AppColors.textSecondary,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          _buildMiniChip(
                              'Due: ${DateFormat('dd/MM/yyyy').format(milestone.dueDate)}',
                              AppColors.textSecondary),
                          SizedBox(width: 8.w),
                          _buildMiniChip(milestone.status.toUpperCase(),
                              _getStatusColor(milestone.status)),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      LinearProgressIndicator(
                        value: milestone.progress / 100,
                        backgroundColor:
                            AppColors.textTertiary.withOpacity(0.2),
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.primary),
                        minHeight: 4.h,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '${milestone.progress}% Complete',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.sp,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      if (milestone.deliverables.isNotEmpty) ...[
                        SizedBox(height: 12.h),
                        Text(
                          'Deliverables',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Column(
                          children: milestone.deliverables
                              .asMap()
                              .entries
                              .map((entry) {
                            final deliverable = entry.value;
                            return Container(
                              margin: EdgeInsets.only(bottom: 8.h),
                              padding: EdgeInsets.all(12.w),
                              decoration: BoxDecoration(
                                color: AppColors.cardBackground,
                                borderRadius: BorderRadius.circular(12.r),
                                border: Border.all(
                                  color: AppColors.primary.withOpacity(0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.check_circle_outline,
                                      size: 20.sp, color: AppColors.success),
                                  SizedBox(width: 12.w),
                                  Expanded(
                                    child: Text(
                                      deliverable.name,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sp,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.delete_outline,
                                        size: 20.sp, color: AppColors.error),
                                    onPressed: () => _removeDeliverable(
                                        milestone.id, deliverable.name),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ],
                  ),
                )
                    .animate(delay: Duration(milliseconds: index * 100))
                    .fadeIn()
                    .slideX(begin: 0.3);
              }).toList(),
            ),
    );
  }

  Widget _buildEmptyState(String message) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.info_outline,
                size: 60.sp,
                color: AppColors.primary,
              ),
            ).animate().scale(delay: 200.ms, duration: 500.ms),
            SizedBox(height: 24.h),
            Text(
              message,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ).animate(delay: 300.ms).fadeIn(),
            SizedBox(height: 8.h),
            Text(
              'Create a new milestone to get started.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ).animate(delay: 400.ms).fadeIn(),
          ],
        ),
      ),
    );
  }

  Widget _buildMiniChip(String text, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12.sp,
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'completed':
        return AppColors.success;
      case 'in_progress':
        return AppColors.warning;
      case 'pending':
        return AppColors.info;
      case 'cancelled':
        return AppColors.error;
      default:
        return AppColors.textTertiary;
    }
  }

  Widget _buildModernCard({
    required String title,
    required IconData icon,
    required Widget child,
    Widget? action,
  }) {
    return Container(
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
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.primary,
                  AppColors.primaryLight,
                ],
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
            ),
            child: Row(
              children: [
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                if (action != null) action,
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.w),
            child: child,
          ),
        ],
      ),
    );
  }

  void _handleMilestoneAction(String value, ProjectMilestoneEntity milestone) {
    switch (value) {
      case 'edit':
        context.push(
            '/project/${widget.projectId}/milestones/${milestone.id}/edit');
        break;
      case 'update_progress':
        _showUpdateProgressDialog(milestone.id, milestone.progress);
        break;
      case 'update_status':
        _showUpdateStatusDialog(milestone.id, milestone.status);
        break;
      case 'add_deliverable':
        context.push(
            '/project/${widget.projectId}/milestones/${milestone.id}/deliverables/add');
        break;
      case 'cancel':
        _showCancelConfirmation(milestone);
        break;
      case 'delete':
        _showDeleteConfirmation(milestone);
        break;
    }
  }

  void _showUpdateProgressDialog(String milestoneId, int currentProgress) {
    final controller = TextEditingController(text: currentProgress.toString());
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'Update Progress',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        content: TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Progress (0-100)',
            labelStyle: const TextStyle(
              fontFamily: 'Poppins',
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
          validator: (value) {
            final progress = int.tryParse(value ?? '');
            if (progress == null || progress < 0 || progress > 100) {
              return 'Enter a value between 0 and 100';
            }
            return null;
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: AppColors.textSecondary,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final progress = int.tryParse(controller.text) ?? 0;
              if (progress >= 0 && progress <= 100) {
                ref
                    .read(projectMilestoneProvider.notifier)
                    .updateProgress(milestoneId, progress);
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content:
                        Text('Please enter a valid progress value (0-100)'),
                    backgroundColor: AppColors.error,
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: const Text(
              'Update',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showUpdateStatusDialog(String milestoneId, String currentStatus) {
    String selectedStatus = currentStatus;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'Update Status',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        content: DropdownButtonFormField<String>(
          value: selectedStatus,
          decoration: InputDecoration(
            labelText: 'Status',
            labelStyle: const TextStyle(
              fontFamily: 'Poppins',
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
          items: const [
            DropdownMenuItem(value: 'pending', child: Text('Pending')),
            DropdownMenuItem(value: 'in_progress', child: Text('In Progress')),
            DropdownMenuItem(value: 'completed', child: Text('Completed')),
            DropdownMenuItem(value: 'cancelled', child: Text('Cancelled')),
          ],
          onChanged: (value) {
            selectedStatus = value!;
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: AppColors.textSecondary,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ref
                  .read(projectMilestoneProvider.notifier)
                  .updateStatus(milestoneId, selectedStatus);
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: const Text(
              'Update',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCancelConfirmation(ProjectMilestoneEntity milestone) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'Cancel Milestone',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        content: Text(
          'Are you sure you want to cancel "${milestone.title}"?',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            color: AppColors.textPrimary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: AppColors.textSecondary,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ref
                  .read(projectMilestoneProvider.notifier)
                  .cancelMilestone(milestone.id);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: const Text(
              'Confirm Cancel',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteConfirmation(ProjectMilestoneEntity milestone) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'Delete Milestone',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        content: Text(
          'Are you sure you want to delete "${milestone.title}"? This action cannot be undone.',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            color: AppColors.textPrimary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: AppColors.textSecondary,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ref
                  .read(projectMilestoneProvider.notifier)
                  .deleteMilestone(milestone.id);
              ref
                  .read(projectMilestoneProvider.notifier)
                  .fetchProgressStats(widget.projectId);
              ref
                  .read(projectMilestoneProvider.notifier)
                  .fetchStatusStats(widget.projectId);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: const Text(
              'Delete',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _removeDeliverable(String milestoneId, String deliverableId) {
    ref
        .read(projectMilestoneProvider.notifier)
        .removeDeliverable(milestoneId, deliverableId);
  }
}
