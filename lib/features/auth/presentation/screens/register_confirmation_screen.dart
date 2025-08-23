import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
// import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
// import 'package:find_invest_mobile/features/auth/presentation/widgets/result_modal.dart';

class RegisterConfirmationScreen extends ConsumerWidget {
  const RegisterConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final authState = ref.watch(authProvider);
    // final user = authState.user;

    // print('RegisterConfirmationScreen build');

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   if (user != null && !authState.isLoading) {
    //     showDialog(
    //       context: context,
    //       builder: (context) => ResultModal(
    //         isSuccess: true,
    //         title: 'Registration Successful',
    //         message:
    //             'Welcome, ${user.firstName}! Your account has been created.',
    //         actionText: 'Continue to Login',
    //         onAction: () => context.go('/login'),
    //       ),
    //     );
    //   }
    // });

    return Scaffold(
      backgroundColor: AppColors.cardBackground,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(32.w),
            constraints: BoxConstraints(maxWidth: 400.w),
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(16.r),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black.withOpacity(0.08),
              //     blurRadius: 12.r,
              //     offset: Offset(0, 4.h),
              //   ),
              // ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [AppColors.primary, AppColors.primaryLight],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Icon(
                    Icons.check_circle,
                    size: 48.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 24.h),
                Text(
                  'Registration Complete',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8.h),
                Text(
                  'Your account has been created successfully.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    color: AppColors.textSecondary,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.h),
                CustomButton(
                  text: 'Continue to Login',
                  onPressed: () => context.go('/login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
