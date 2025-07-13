import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';
import '../../widgets/custom_button.dart';

class SuccessPage extends StatelessWidget {
  final String title;
  final String message;
  final String buttonText;
  final String targetRoute;
  final IconData? icon;

  const SuccessPage({
    super.key,
    required this.title,
    required this.message,
    required this.buttonText,
    required this.targetRoute,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Success Icon
                    Container(
                      width: 120.w,
                      height: 120.w,
                      decoration: BoxDecoration(
                        color: AppColors.success.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(60.r),
                      ),
                      child: Icon(
                        icon ?? Icons.check_circle_outline,
                        size: 60.sp,
                        color: AppColors.success,
                      ),
                    ),

                    SizedBox(height: 32.h),

                    // Title
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 16.h),

                    // Message
                    Text(
                      message,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.textSecondary,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              // Action Button
              CustomButton(
                text: buttonText,
                onPressed: () => context.pushReplacement(targetRoute),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
