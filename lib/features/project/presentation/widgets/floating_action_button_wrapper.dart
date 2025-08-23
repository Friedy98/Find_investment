import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloatingActionButtonWrapper extends StatelessWidget {
  final ProjectEntity project;
  final bool canEdit;
  final VoidCallback? onInvest;

  const FloatingActionButtonWrapper({
    super.key,
    required this.project,
    required this.canEdit,
    this.onInvest,
  });

  @override
  Widget build(BuildContext context) {
    if (!canEdit && project.status == 'active') {
      return FloatingActionButton.extended(
        onPressed: onInvest,
        backgroundColor: AppColors.primary,
        elevation: 4,
        icon: Icon(Icons.attach_money, color: Colors.white, size: 20.sp),
        label: const Text(
          'Invest',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ).animate().scale(delay: 800.ms);
    }
    return const SizedBox.shrink();
  }
}
