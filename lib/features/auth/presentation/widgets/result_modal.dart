import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';

class ResultModal extends StatelessWidget {
  final bool isSuccess;
  final String title;
  final String message;
  final String? code;
  final Map<String, dynamic>? details;
  final VoidCallback? onClose;
  final VoidCallback? onAction;
  final String actionText;

  const ResultModal({
    super.key,
    required this.isSuccess,
    required this.title,
    required this.message,
    this.code,
    this.details,
    this.onClose,
    this.onAction,
    this.actionText = 'OK',
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.cardBackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      contentPadding: EdgeInsets.all(24.w),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSuccess
                  ? AppColors.success.withOpacity(0.1)
                  : AppColors.error.withOpacity(0.1),
            ),
            child: Icon(
              isSuccess ? Icons.check_circle_outline : Icons.error_outline,
              size: 48.sp,
              color: isSuccess ? AppColors.success : AppColors.error,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: isSuccess ? AppColors.success : AppColors.error,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            message,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sp,
              color: AppColors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          if (code != null) ...[
            SizedBox(height: 8.h),
            Text(
              'Code: $code',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
          if (details != null && details!.isNotEmpty) ...[
            SizedBox(height: 8.h),
            Text(
              'Details: ${details.toString()}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        TextButton(
          onPressed: onAction ?? () => Navigator.of(context).pop(),
          child: Text(
            actionText,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sp,
              color: AppColors.primaryLight,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        if (onClose != null)
          TextButton(
            onPressed: onClose,
            child: Text(
              'Close',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.sp,
                color: AppColors.textSecondary,
              ),
            ),
          ),
      ],
    );
  }
}
