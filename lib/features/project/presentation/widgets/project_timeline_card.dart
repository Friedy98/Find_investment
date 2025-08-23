import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/shared/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

// class ProjectTimelineCard extends StatelessWidget {
//   final ProjectEntity project;

//   const ProjectTimelineCard({
//     super.key,
//     required this.project,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12.r),
//       ),
//       child: Padding(
//         padding: EdgeInsets.all(16.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Timeline du projet'.clean(),
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 18.sp,
//                 fontWeight: FontWeight.bold,
//                 color: AppColors.textPrimary,
//               ),
//             ),
//             SizedBox(height: 16.h),
//             _buildTimelineItem(
//               context,
//               'Création du projet'.clean(),
//               _formatDate(project.createdAt?.toDateTime()),
//               Icons.add_circle_outline,
//               AppColors.primary,
//               isCompleted: project.createdAt != null,
//             ),
//             _buildTimelineItem(
//               context,
//               'Début du projet'.clean(),
//               _formatDate(project.timeline.startDate),
//               Icons.play_arrow,
//               AppColors.success,
//               isCompleted: project.timeline.startDate != null &&
//                   DateTime.now().isAfter(project.timeline.startDate!),
//             ),
//             if (project.timeline.endDate != null)
//               _buildTimelineItem(
//                 context,
//                 'Fin prévue'.clean(),
//                 _formatDate(project.timeline.endDate),
//                 Icons.flag,
//                 AppColors.warning,
//                 isCompleted: project.timeline.endDate != null &&
//                     DateTime.now().isAfter(project.timeline.endDate!),
//               ),
//             _buildTimelineItem(
//               context,
//               'Dernière mise à jour'.clean(),
//               _formatDate(project.updatedAt?.toDateTime()),
//               Icons.update,
//               AppColors.info,
//               isCompleted: project.updatedAt != null,
//             ),
//             if (project.status == "submitted")
//               _buildTimelineItem(
//                 context,
//                 'Projet soumis'.clean(),
//                 _formatDate(project.updatedAt?.toDateTime()),
//                 Icons.send,
//                 AppColors.success,
//                 isCompleted: project.updatedAt != null,
//               ),
//             SizedBox(height: 16.h),
//             _buildProgressSection(context),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTimelineItem(BuildContext context, String title, String? date,
//       IconData icon, Color color,
//       {bool isCompleted = false}) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 16.h),
//       child: Row(
//         children: [
//           Container(
//             width: 40.w,
//             height: 40.h,
//             decoration: BoxDecoration(
//               color:
//                   isCompleted ? color.withOpacity(0.2) : color.withOpacity(0.1),
//               shape: BoxShape.circle,
//               border: Border.all(
//                 color: color,
//                 width: isCompleted ? 2 : 1,
//               ),
//             ),
//             child: Icon(
//               icon,
//               color: color,
//               size: 20.sp,
//             ),
//           ),
//           SizedBox(width: 16.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Text(
//                         title,
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 14.sp,
//                           fontWeight: FontWeight.w600,
//                           color: AppColors.textPrimary,
//                         ),
//                       ),
//                     ),
//                     if (isCompleted)
//                       Icon(
//                         Icons.check_circle,
//                         size: 16.sp,
//                         color: AppColors.success,
//                       ),
//                   ],
//                 ),
//                 SizedBox(height: 2.h),
//                 Text(
//                   date ?? 'Non défini',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 12.sp,
//                     color: AppColors.textSecondary,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildProgressSection(BuildContext context) {
//     final now = DateTime.now();
//     final startDate =
//         project.timeline.startDate ?? project.createdAt?.toDateTime();
//     final endDate = project.timeline.endDate;

//     double progress = 0.0;
//     String progressText = 'En cours';

//     if (startDate != null && endDate != null) {
//       final totalDuration = endDate.difference(startDate).inDays;
//       final elapsedDuration = now.difference(startDate).inDays;

//       if (totalDuration > 0) {
//         progress = (elapsedDuration / totalDuration).clamp(0.0, 1.0);

//         if (now.isAfter(endDate)) {
//           progressText = 'Terminé';
//           progress = 1.0;
//         } else if (now.isBefore(startDate)) {
//           progressText = 'Pas encore commencé';
//           progress = 0.0;
//         } else {
//           final remainingDays = endDate.difference(now).inDays;
//           progressText = '$remainingDays jours restants';
//         }
//       }
//     } else {
//       progressText = startDate == null ? 'Non démarré' : 'Durée non définie';
//     }

//     return Container(
//       padding: EdgeInsets.all(12.w),
//       decoration: BoxDecoration(
//         color: AppColors.cardBackground,
//         borderRadius: BorderRadius.circular(8.r),
//         border: Border.all(color: AppColors.gray200, width: 1),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Progression'.clean(),
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.textPrimary,
//                 ),
//               ),
//               Text(
//                 '${(progress * 100).toInt()}%',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.bold,
//                   color: AppColors.primary,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 8.h),
//           LinearProgressIndicator(
//             value: progress,
//             backgroundColor: AppColors.gray200,
//             valueColor: AlwaysStoppedAnimation<Color>(
//               progress == 1.0 ? AppColors.success : AppColors.primary,
//             ),
//             minHeight: 6.h,
//           ),
//           SizedBox(height: 8.h),
//           Text(
//             progressText,
//             style: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 12.sp,
//               color: AppColors.textSecondary,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
// import 'package:intl/intl.dart';

// import '../../../core/theme/app_colors.dart';
// import '../../../features/project/domain/entities/project_entity.dart';

class ProjectTimelineCard extends StatelessWidget {
  final ProjectEntity project;

  const ProjectTimelineCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    final timelineItems = _generateTimelineItems();
    final progress = _calculateProgress();

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
              color: AppColors.primary.withOpacity(0.05),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
            ),
            child: Row(
              children: [
                Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    Icons.timeline,
                    color: AppColors.primary,
                    size: 18.sp,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    'Project Timeline',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: _getProgressColor(progress).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    '${progress.toStringAsFixed(0)}%',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: _getProgressColor(progress),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Progress section
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
                      _getProgressStatus(),
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
                    backgroundColor: AppColors.gray200,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        _getProgressColor(progress)),
                    minHeight: 8.h,
                  ),
                ),
                if (project.daysRemaining != null) ...[
                  SizedBox(height: 8.h),
                  Text(
                    '${project.daysRemaining} days remaining',
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

          // Timeline items
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: timelineItems.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                final isLast = index == timelineItems.length - 1;

                return _buildTimelineItem(
                  context,
                  item,
                  isLast,
                  index,
                );
              }).toList(),
            ),
          ),

          SizedBox(height: 16.h),
        ],
      ),
    );
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
                color: item.isCompleted ? AppColors.success : AppColors.gray200,
                shape: BoxShape.circle,
                border: Border.all(
                  color:
                      item.isCompleted ? AppColors.success : AppColors.gray300,
                  width: 2,
                ),
              ),
              child: item.isCompleted
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 14.sp,
                    )
                  : Container(),
            ),
            if (!isLast)
              Container(
                width: 2.w,
                height: 40.h,
                color: item.isCompleted ? AppColors.success : AppColors.gray200,
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
                    fontWeight: FontWeight.w600,
                    color: item.isCompleted
                        ? AppColors.textPrimary
                        : AppColors.textSecondary,
                  ),
                ),
                if (item.description != null) ...[
                  SizedBox(height: 4.h),
                  Text(
                    item.description!,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      color: AppColors.textSecondary,
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
                      color: AppColors.textTertiary,
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

  List<TimelineItem> _generateTimelineItems() {
    final items = <TimelineItem>[];
    final now = DateTime.now();

    // Project created
    items.add(TimelineItem(
      title: 'Project Created',
      description: 'Project was successfully created',
      date: (project.createdAt?.toDateTime()),
      isCompleted: true,
    ));

    // Project started
    if (project.timeline.startDate != null) {
      items.add(TimelineItem(
        title: 'Project Started',
        description: 'Development phase began',
        date: project.timeline.startDate,
        isCompleted: project.timeline.startDate!.isBefore(now),
      ));
    }

    // Milestones (if any)
    // You can add project milestones here if they exist in your entity

    // Project end date
    if (project.timeline.endDate != null) {
      items.add(TimelineItem(
        title: 'Expected Completion',
        description: 'Project scheduled to complete',
        date: project.timeline.endDate,
        isCompleted: project.timeline.endDate!.isBefore(now),
      ));
    }

    // Last updated
    items.add(TimelineItem(
      title: 'Last Updated',
      description: 'Most recent project update',
      date: project.updatedAt?.toDateTime(),
      isCompleted: true,
    ));

    // Project submitted
    if (project.status == 'submitted') {
      items.add(TimelineItem(
        title: 'Project Submitted',
        description: 'Submitted for review and approval',
        date: project.updatedAt?.toDateTime(),
        isCompleted: true,
      ));
    }

    return items;
  }

  double _calculateProgress() {
    final now = DateTime.now();

    if (project.timeline.startDate == null ||
        project.timeline.endDate == null) {
      return project.status == 'completed' ? 100.0 : 0.0;
    }

    if (now.isBefore(project.timeline.startDate!)) {
      return 0.0;
    }

    if (now.isAfter(project.timeline.endDate!)) {
      return 100.0;
    }

    final totalDuration = project.timeline.endDate!
        .difference(project.timeline.startDate!)
        .inDays;
    final elapsedDuration = now.difference(project.timeline.startDate!).inDays;

    return (elapsedDuration / totalDuration * 100).clamp(0.0, 100.0);
  }

  String _getProgressStatus() {
    final progress = _calculateProgress();
    final now = DateTime.now();

    if (project.timeline.endDate == null) {
      return 'Not Started';
    }

    if (now.isBefore(project.timeline.endDate!)) {
      return 'Not Started';
    }

    if (progress >= 100 || project.status == 'completed') {
      return 'Completed';
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

String? _formatDate(DateTime? date) {
  if (date == null) return 'Non défini';
  return DateFormat('dd MMM yyyy', 'fr_FR').format(date);
}
