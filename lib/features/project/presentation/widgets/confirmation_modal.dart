import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';

class ConfirmationModal extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onConfirm;

  const ConfirmationModal({
    super.key,
    required this.title,
    required this.message,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.cardBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
      ),
      content: Text(
        message,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14.sp,
          color: AppColors.textSecondary,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            'Annuler',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              color: AppColors.textSecondary,
            ),
          ),
        ),
        CustomButton(
          text: 'Confirmer',
          onPressed: () {
            onConfirm();
            Navigator.of(context).pop();
          },
          width: 120.w,
          height: 40.h,
        ),
      ],
    );
  }
}
