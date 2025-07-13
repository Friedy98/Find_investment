import 'package:find_invest_mobile/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.privacyPolicy),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.privacyPolicyTitle,
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
              AppLocalizations.of(context)!.dataCollection,
              AppLocalizations.of(context)!.dataCollectionContent,
            ),
            _buildSection(
              context,
              AppLocalizations.of(context)!.dataUsage,
              AppLocalizations.of(context)!.dataUsageContent,
            ),
            _buildSection(
              context,
              AppLocalizations.of(context)!.dataSharing,
              AppLocalizations.of(context)!.dataSharingContent,
            ),
            _buildSection(
              context,
              AppLocalizations.of(context)!.dataSecurity,
              AppLocalizations.of(context)!.dataSecurityContent,
            ),
            _buildSection(
              context,
              AppLocalizations.of(context)!.userRights,
              AppLocalizations.of(context)!.userRightsContent,
            ),
            _buildSection(
              context,
              AppLocalizations.of(context)!.cookiesPolicy,
              AppLocalizations.of(context)!.cookiesPolicyContent,
            ),
            _buildSection(
              context,
              AppLocalizations.of(context)!.contactUs,
              AppLocalizations.of(context)!.contactUsContent,
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
