// import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
// import 'package:find_invest_mobile/features/project/presentation/widgets/overview_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabContent extends StatelessWidget {
  final ProjectEntity project;
  final bool canEdit;

  const TabContent({super.key, required this.project, required this.canEdit});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // OverviewTab(project: project),
          SizedBox(height: 20.h),
          // DetailsTab(project: project),
          SizedBox(height: 20.h),
          // TimelineTab(project: project),
          SizedBox(height: 20.h),
          // TeamTab(project: project, canEdit: canEdit),
          SizedBox(height: 20.h),
          // DocumentsTab(project: project),
          SizedBox(height: 20.h),
          // UpdatesTab(project: project),
        ],
      ),
    );
  }
}
