import 'package:find_invest_mobile/features/project-milestone/domain/entities/project_milestone_entity.dart';
import 'package:find_invest_mobile/features/project-milestone/presentation/providers/project_milestone_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:intl/intl.dart';

class ProjectTimelineCard extends ConsumerStatefulWidget {
  final ProjectEntity project;

  const ProjectTimelineCard({
    super.key,
    required this.project,
  });

  @override
  ConsumerState<ProjectTimelineCard> createState() =>
      _ProjectTimelineCardState();
}

class _ProjectTimelineCardState extends ConsumerState<ProjectTimelineCard> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(projectMilestoneProvider.notifier)
          .fetchMilestones(projectId: widget.project.id);
      ref
          .read(projectMilestoneProvider.notifier)
          .fetchProgressStats(widget.project.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final milestoneState = ref.watch(projectMilestoneProvider);
    final timelineItems = _generateTimelineItems(milestoneState.milestones);
    final progress = _calculateProgress(milestoneState.progressStats);

    if (milestoneState.errorMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(milestoneState.errorMessage!),
            backgroundColor: AppColors.error,
          ),
        );
      });
    }

    if (timelineItems.isEmpty) {
      return _buildEmptyState();
    }

    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Overall Progress',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    Text(
                      _getProgressStatus(milestoneState.milestones),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: _getProgressColor(progress),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.r),
                  child: LinearProgressIndicator(
                    value: progress / 100,
                    backgroundColor: AppColors.gray200.withOpacity(0.5),
                    valueColor: AlwaysStoppedAnimation<Color>(
                        _getProgressColor(progress)),
                    minHeight: 8.h,
                  ),
                ),
                if (widget.project.daysRemaining != null) ...[
                  SizedBox(height: 8.h),
                  Text(
                    '${widget.project.daysRemaining} days remaining',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: timelineItems.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                final isLast = index == timelineItems.length - 1;

                return _buildTimelineItem(context, item, isLast, index);
              }).toList(),
            ),
          ),
          SizedBox(height: 16.h),
        ],
      ),
    ).animate().fadeIn().slideY(begin: 0.3);
  }

  Widget _buildTimelineItem(
    BuildContext context,
    TimelineItem item,
    bool isLast,
    int index,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                color: item.isCompleted
                    ? AppColors.success.withOpacity(0.1)
                    : AppColors.gray200.withOpacity(0.1),
                shape: BoxShape.circle,
                border: Border.all(
                  color:
                      item.isCompleted ? AppColors.success : AppColors.gray300,
                  width: 1.5,
                ),
              ),
              child: item.isCompleted
                  ? Icon(
                      Icons.check,
                      color: AppColors.success,
                      size: 14.sp,
                    )
                  : Icon(
                      Icons.radio_button_unchecked,
                      color: AppColors.gray300,
                      size: 14.sp,
                    ),
            ),
            if (!isLast)
              Container(
                width: 1.5.w,
                height: 48.h,
                color: item.isCompleted
                    ? AppColors.success.withOpacity(0.3)
                    : AppColors.gray200.withOpacity(0.3),
              ),
          ],
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(bottom: isLast ? 0 : 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: item.isCompleted
                        ? AppColors.textPrimary
                        : AppColors.textSecondary.withOpacity(0.7),
                  ),
                ),
                if (item.description != null) ...[
                  SizedBox(height: 4.h),
                  Text(
                    item.description!,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      color: AppColors.textSecondary.withOpacity(0.8),
                    ),
                  ),
                ],
                if (item.date != null) ...[
                  SizedBox(height: 4.h),
                  Text(
                    DateFormat('dd MMM yyyy', 'fr_FR').format(item.date!),
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 11.sp,
                      color: AppColors.textTertiary.withOpacity(0.7),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    )
        .animate(delay: Duration(milliseconds: index * 100))
        .fadeIn()
        .slideX(begin: 0.3);
  }

  Widget _buildEmptyState() {
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
              'No Timeline Available',
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
              'Add milestones to track project progress.',
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

  List<TimelineItem> _generateTimelineItems(
      List<ProjectMilestoneEntity> milestones) {
    final items = <TimelineItem>[];
    final now = DateTime.now();

    // Project created
    if (widget.project.createdAt != null) {
      items.add(TimelineItem(
        title: 'Project Created',
        description: 'Project was successfully created',
        date: widget.project.createdAt,
        isCompleted: true,
      ));
    }

    // Project started
    if (widget.project.startDate != null) {
      items.add(TimelineItem(
        title: 'Project Started',
        description: 'Development phase began',
        date: widget.project.startDate,
        isCompleted: widget.project.startDate!.isBefore(now),
      ));
    }

    // Milestones
    if (milestones.isNotEmpty) {
      final sortedMilestones = milestones
        ..sort((a, b) => a.dueDate.compareTo(b.dueDate));
      for (final milestone in sortedMilestones) {
        items.add(TimelineItem(
          title: milestone.title,
          description: milestone.description ?? 'No description available',
          date: milestone.dueDate,
          isCompleted: milestone.status.toLowerCase() == 'completed' ||
              milestone.progress == 100,
        ));
      }
    }

    // Project end date
    if (widget.project.endDate != null) {
      items.add(TimelineItem(
        title: 'Expected Completion',
        description: 'Project scheduled to complete',
        date: widget.project.endDate,
        isCompleted: widget.project.status == 'completed' ||
            (widget.project.endDate!.isBefore(now) &&
                milestones.every((m) => m.status.toLowerCase() == 'completed')),
      ));
    }

    // Last updated
    if (widget.project.updatedAt != null) {
      items.add(TimelineItem(
        title: 'Last Updated',
        description: 'Most recent project update',
        date: widget.project.updatedAt,
        isCompleted: true,
      ));
    }

    // Project submitted
    if (widget.project.status == 'submitted') {
      items.add(TimelineItem(
        title: 'Project Submitted',
        description: 'Submitted for review and approval',
        date: widget.project.updatedAt,
        isCompleted: true,
      ));
    }

    return items;
  }

  double _calculateProgress(ProgressStatsEntity? progressStats) {
    final now = DateTime.now();

    if (progressStats != null && progressStats.totalMilestones > 0) {
      return progressStats.averageProgress.clamp(0.0, 100.0);
    }

    if (widget.project.startDate == null || widget.project.endDate == null) {
      return widget.project.status == 'completed' ? 100.0 : 0.0;
    }

    if (now.isBefore(widget.project.startDate!)) {
      return 0.0;
    }

    if (now.isAfter(widget.project.endDate!)) {
      return 100.0;
    }

    final totalDuration =
        widget.project.endDate!.difference(widget.project.startDate!).inDays;
    final elapsedDuration = now.difference(widget.project.startDate!).inDays;

    return (elapsedDuration / totalDuration * 100).clamp(0.0, 100.0);
  }

  String _getProgressStatus(List<ProjectMilestoneEntity> milestones) {
    final now = DateTime.now();

    if (widget.project.startDate == null) {
      return 'Not Started';
    }

    if (widget.project.status == 'completed' ||
        (milestones.isNotEmpty &&
            milestones.every((m) => m.status.toLowerCase() == 'completed'))) {
      return 'Completed';
    }

    if (now.isBefore(widget.project.startDate!)) {
      return 'Not Started';
    }

    return 'In Progress';
  }

  Color _getProgressColor(double progress) {
    if (progress >= 100) {
      return AppColors.success;
    } else if (progress >= 50) {
      return AppColors.primary;
    } else if (progress >= 25) {
      return AppColors.warning;
    } else {
      return AppColors.error;
    }
  }
}

class TimelineItem {
  final String title;
  final String? description;
  final DateTime? date;
  final bool isCompleted;

  TimelineItem({
    required this.title,
    this.description,
    this.date,
    required this.isCompleted,
  });
}
