import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isOutlined;
  final Color? backgroundColor;
  final Color? textColor;
  final IconData? icon;
  final double? width;
  final double? height;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.isOutlined = false,
    this.backgroundColor,
    this.textColor,
    this.icon,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    if (isOutlined) {
      return SizedBox(
        width: width,
        height: height ?? 48.h,
        child: OutlinedButton.icon(
          onPressed: isLoading ? null : onPressed,
          icon: _buildIcon(),
          label: _buildLabel(),
          style: OutlinedButton.styleFrom(
            foregroundColor: textColor ?? AppColors.primary,
            side: BorderSide(
              color: backgroundColor ?? AppColors.primary,
            ),
          ),
        ),
      );
    }

    return SizedBox(
      width: width,
      height: height ?? 48.h,
      child: ElevatedButton.icon(
        onPressed: isLoading ? null : onPressed,
        icon: _buildIcon(),
        label: _buildLabel(),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primary,
          foregroundColor: textColor ?? AppColors.white,
          disabledBackgroundColor: AppColors.gray300,
        ),
      ),
    );
  }

  Widget _buildIcon() {
    if (isLoading) {
      return SizedBox(
        width: 16.w,
        height: 16.w,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(
            textColor ?? AppColors.white,
          ),
        ),
      );
    }

    if (icon != null) {
      return Icon(icon, size: 18.sp);
    }

    return const SizedBox.shrink();
  }

  Widget _buildLabel() {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
