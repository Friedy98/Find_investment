import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';

class NavigationButtonsComponent extends StatelessWidget {
  final VoidCallback onUpdate;
  final bool isLoading;

  const NavigationButtonsComponent({
    super.key,
    required this.onUpdate,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () => context.pop(),
              text: 'Annuler',
              backgroundColor: AppColors.textTertiary.withOpacity(0.1),
              textColor: AppColors.textSecondary,
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: CustomButton(
              onPressed: isLoading ? null : onUpdate,
              text: 'Mettre à jour',
              backgroundColor: AppColors.primary,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
