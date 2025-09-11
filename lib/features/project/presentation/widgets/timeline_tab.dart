import 'package:find_invest_mobile/features/project-milestone/presentation/providers/project_milestone_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/widgets/project_timeline_card.dart';
import 'package:go_router/go_router.dart';

class TimelineTab extends ConsumerStatefulWidget {
  final ProjectEntity project;
  final bool isOwner;

  const TimelineTab({super.key, required this.project, required this.isOwner});

  @override
  ConsumerState<TimelineTab> createState() => _TimelineTabState();
}

class _TimelineTabState extends ConsumerState<TimelineTab> {
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
    final hasContent = (widget.project.risks?.isNotEmpty ?? false) ||
        milestoneState.milestones.isNotEmpty ||
        widget.project.createdAt != null ||
        widget.project.startDate != null ||
        widget.project.endDate != null;

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

    if (!hasContent) {
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
                  color: AppColors.primary.withOpacity(0.05),
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.primary.withOpacity(0.2)),
                ),
                child: Icon(
                  Icons.info_outline,
                  size: 60.sp,
                  color: AppColors.primary,
                ),
              ).animate().scale(delay: 200.ms, duration: 500.ms),
              SizedBox(height: 24.h),
              Text(
                'No Timeline or Risks Available',
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
                widget.isOwner
                    ? 'Add milestones or risks to track project progress.'
                    : 'No timeline or risk information available.',
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

    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader(
            'Project Timeline',
            action: widget.isOwner
                ? IconButton(
                    onPressed: () => context
                        .push('/project/${widget.project.id}/milestones'),
                    icon: Icon(Icons.manage_accounts, size: 25.sp),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: AppColors.primary,
                      padding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 16.w),
                      shape: const CircleBorder(),
                      elevation: 0,
                    ),
                  )
                : null,
          ),
          SizedBox(height: 16.h),
          ProjectTimelineCard(project: widget.project)
              .animate()
              .fadeIn()
              .slideY(begin: 0.3),
          SizedBox(height: 32.h),
          _buildSectionHeader('Identified Risks'),
          SizedBox(height: 16.h),
          if (widget.project.risks?.isNotEmpty ?? false)
            SizedBox(
              width: double.infinity,
              child: DataTable(
                showCheckboxColumn: false, // 🚀 supprime la colonne checkbox
                columnSpacing: 16.w,
                dataRowMaxHeight: 60.h,
                headingRowHeight: 48.h,
                decoration: BoxDecoration(
                  color: AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.03),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                columns: const [
                  DataColumn(
                    label: Text(
                      'Type',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Probability',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Impact',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Action',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
                rows: widget.project.risks!.map((risk) {
                  return DataRow(
                    cells: [
                      DataCell(
                          Text(risk.type, style: TextStyle(fontSize: 12.sp))),
                      DataCell(
                        _buildStyledChip(
                            risk.probability, _getRiskColor(risk.probability)),
                      ),
                      DataCell(
                        _buildStyledChip(
                            risk.impact, _getRiskColor(risk.impact)),
                        // Text(
                        //   risk.impact,
                        //   style: TextStyle(
                        //     color: _getRiskColor(risk.impact),
                        //   ),
                        // ),
                      ),
                      DataCell(
                        IconButton(
                          icon: const Icon(Icons.remove_red_eye,
                              color: AppColors.gray400),
                          onPressed: () {
                            _showRiskDetails(context, risk);
                            // print("Voir détails d’Alice");
                          },
                        ),
                      ),
                    ],
                    onSelectChanged: (selected) {
                      if (selected ?? false) {
                        _showRiskDetails(context, risk);
                      }
                    },
                  );
                }).toList(),
              ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),
            )
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, {Widget? action}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ).animate().fadeIn().slideY(begin: -0.3),
        if (action != null) action
      ],
    );
  }

  Widget _buildStyledChip(String value, Color color) {
    return Chip(
      labelPadding: const EdgeInsets.symmetric(horizontal: 0),
      label: Text(
        value,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: color,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      backgroundColor: color.withOpacity(0.1),
      shape: StadiumBorder(
        side: BorderSide(color: color.withOpacity(0.3)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
    );
  }

  void _showRiskDetails(BuildContext context, Risk risk) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.2,
        maxChildSize: 0.7,
        expand: false,
        builder: (context, scrollController) => SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.all(24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: AppColors.gray300,
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  risk.type,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Description:',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  risk.description,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Mitigation:',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  risk.mitigation,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    text: 'Close',
                    onPressed: () => Navigator.pop(context),
                    backgroundColor: AppColors.primary,
                    textColor: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getRiskColor(String value) {
    switch (value.toLowerCase()) {
      case 'low':
        return AppColors.success;
      case 'medium':
        return AppColors.warning;
      case 'high':
        return AppColors.error;
      default:
        return AppColors.textTertiary;
    }
  }
}
