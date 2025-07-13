import 'package:find_invest_mobile/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.termsAndConditions),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.termsConditionsTitle,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              AppLocalizations.of(context)!.lastUpdated('2024-01-15'),
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.textSecondary,
              ),
            ),
            SizedBox(height: 24.h),
            _buildSection(
              context,
              AppLocalizations.of(context)!.acceptance,
              AppLocalizations.of(context)!.acceptanceContent,
            ),
            _buildSection(
              context,
              AppLocalizations.of(context)!.serviceDescription,
              AppLocalizations.of(context)!.serviceDescriptionContent,
            ),
            _buildSection(
              context,
              AppLocalizations.of(context)!.userResponsibilities,
              AppLocalizations.of(context)!.userResponsibilitiesContent,
            ),
            _buildSection(
              context,
              AppLocalizations.of(context)!.prohibitedActivities,
              AppLocalizations.of(context)!.prohibitedActivitiesContent,
            ),
            _buildSection(
              context,
              AppLocalizations.of(context)!.intellectualProperty,
              AppLocalizations.of(context)!.intellectualPropertyContent,
            ),
            _buildSection(
              context,
              AppLocalizations.of(context)!.limitation,
              AppLocalizations.of(context)!.limitationContent,
            ),
            _buildSection(
              context,
              AppLocalizations.of(context)!.termination,
              AppLocalizations.of(context)!.terminationContent,
            ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          content,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.textSecondary,
            height: 1.6,
          ),
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
