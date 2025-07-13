import 'package:find_invest_mobile/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../config/router/app_routes.dart';
import '../../../core/theme/app_colors.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: IntroductionScreen(
        pages: _getPages(context),
        onDone: () => _onDone(context),
        onSkip: () => _onDone(context),
        showSkipButton: true,
        skip: Text(
          AppLocalizations.of(context)!.skip,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),
        next: Container(
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Icon(
            Icons.arrow_forward_ios,
            color: AppColors.white,
            size: 16.sp,
          ),
        ),
        done: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Text(
            AppLocalizations.of(context)!.go,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size(8.w, 8.w),
          activeSize: Size(24.w, 10.w),
          activeColor: AppColors.primary,
          color: AppColors.gray300.withOpacity(0.6),
          spacing: EdgeInsets.symmetric(horizontal: 4.w),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
        globalBackgroundColor: AppColors.white,
        animationDuration: 300,
        curve: Curves.easeInOut,
      ),
    );
  }

  List<PageViewModel> _getPages(BuildContext context) {
    return [
      PageViewModel(
        title: AppLocalizations.of(context)!.onboarding1Title,
        body: AppLocalizations.of(context)!.onboarding1Description,
        image: _buildImage(Icons.handshake_outlined, AppColors.primary),
        decoration: _getPageDecoration(),
      ),
      PageViewModel(
        title: AppLocalizations.of(context)!.onboarding2Title,
        body: AppLocalizations.of(context)!.onboarding2Description,
        image: _buildImage(Icons.trending_up, AppColors.success),
        decoration: _getPageDecoration(),
      ),
      PageViewModel(
        title: AppLocalizations.of(context)!.onboarding3Title,
        body: AppLocalizations.of(context)!.onboarding3Description,
        image: _buildImage(Icons.work_outline, AppColors.info),
        decoration: _getPageDecoration(),
      ),
      PageViewModel(
        title: AppLocalizations.of(context)!.onboarding4Title,
        body: AppLocalizations.of(context)!.onboarding4Description,
        image: _buildImage(Icons.security, AppColors.warning),
        decoration: _getPageDecoration(),
      ),
    ];
  }

  Widget _buildImage(IconData icon, Color color) {
    return Container(
      width: 200.w,
      height: 200.w,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(150.r),
      ),
      child: Icon(
        icon,
        size: 80.sp,
        color: color,
      ),
    );
  }

  PageDecoration _getPageDecoration() {
    return PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 16.sp,
        color: AppColors.textSecondary,
        height: 1.5,
      ),
      imagePadding: EdgeInsets.only(top: 60.h),
      contentMargin: EdgeInsets.symmetric(horizontal: 24.w),
      titlePadding: EdgeInsets.only(top: 40.h, bottom: 16.h),
      bodyPadding: EdgeInsets.symmetric(horizontal: 16.w),
    );
  }

  void _onDone(BuildContext context) {
    context.go(AppRoutes.login);
  }
}
