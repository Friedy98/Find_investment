import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';

class SelectionGridComponent extends StatelessWidget {
  final String projectId;

  const SelectionGridComponent({super.key, required this.projectId});

  @override
  Widget build(BuildContext context) {
    final options = [
      {
        'title': 'Informations de base',
        'icon': Icons.description,
        'route': '/project/$projectId/update/basic-info',
      },
      {
        'title': 'Financement',
        'icon': Icons.monetization_on,
        'route': '/project/$projectId/update/funding',
      },
      {
        'title': 'Localisation',
        'icon': Icons.location_on,
        'route': '/project/$projectId/update/location',
      },
      {
        'title': 'Équipe',
        'icon': Icons.group,
        'route': '/project/$projectId/update/team',
      },
      {
        'title': 'Paramètres',
        'icon': Icons.settings,
        'route': '/project/$projectId/update/settings',
      },
      {
        'title': 'Projections financières',
        'icon': Icons.bar_chart,
        'route': '/project/$projectId/update/financial-projections',
      },
      {
        'title': 'Impact',
        'icon': Icons.eco,
        'route': '/project/$projectId/update/impact',
      },
      {
        'title': 'Risques',
        'icon': Icons.warning,
        'route': '/project/$projectId/update/risks',
      },
      {
        'title': 'SEO',
        'icon': Icons.search,
        'route': '/project/$projectId/update/seo',
      },
      {
        'title': 'Médias',
        'icon': Icons.image,
        'route': '/project/$projectId/update/media',
      },
    ];

    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,
          childAspectRatio: 1.2,
        ),
        itemCount: options.length,
        itemBuilder: (context, index) {
          final option = options[index];
          return Card(
            color: AppColors.cardBackground,
            // elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
                side: BorderSide(color: AppColors.gray200.withOpacity(0.9))),
            child: InkWell(
              onTap: () => context.push(option['route'] as String),
              borderRadius: BorderRadius.circular(12.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    option['icon'] as IconData,
                    size: 32.sp,
                    color: AppColors.primary,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    option['title'] as String,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ).animate(delay: (100 * index).ms).fadeIn().scale();
        },
      ),
    );
  }
}
