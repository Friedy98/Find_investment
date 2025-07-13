import 'package:find_invest_mobile/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../config/router/app_routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/progress_indicator_dots.dart';

class ResetPasswordPage extends ConsumerStatefulWidget {
  final String email;
  final String otp;

  const ResetPasswordPage({
    super.key,
    required this.email,
    required this.otp,
  });

  @override
  ConsumerState<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends ConsumerState<ResetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(AppLocalizations.of(context)!.newPassword),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            children: [
              // Progress Indicator
              const ProgressIndicatorDots(currentStep: 2, totalSteps: 3),

              SizedBox(height: 40.h),

              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Header
                        _buildHeader(),

                        SizedBox(height: 40.h),

                        // Password Form
                        _buildPasswordForm(),

                        SizedBox(height: 32.h),

                        // Reset Button
                        CustomButton(
                          text: AppLocalizations.of(context)!.resetPassword,
                          onPressed: _isLoading ? null : _handleResetPassword,
                          isLoading: _isLoading,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          width: 80.w,
          height: 80.w,
          decoration: BoxDecoration(
            color: AppColors.success.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Icon(
            Icons.lock_outline,
            size: 40.sp,
            color: AppColors.success,
          ),
        ),
        SizedBox(height: 24.h),
        Text(
          AppLocalizations.of(context)!.createNewPassword,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          AppLocalizations.of(context)!.createNewPasswordSubtitle,
          style: TextStyle(
            fontSize: 16.sp,
            color: AppColors.textSecondary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildPasswordForm() {
    return Column(
      children: [
        CustomTextField(
          controller: _passwordController,
          label: AppLocalizations.of(context)!.newPassword,
          hintText: AppLocalizations.of(context)!.enterNewPassword,
          obscureText: !_isPasswordVisible,
          prefixIcon: Icons.lock_outline,
          suffixIcon: IconButton(
            icon: Icon(
              _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
          ),
          validator: _validatePassword,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          controller: _confirmPasswordController,
          label: AppLocalizations.of(context)!.confirmNewPassword,
          hintText: AppLocalizations.of(context)!.enterConfirmNewPassword,
          obscureText: !_isConfirmPasswordVisible,
          prefixIcon: Icons.lock_outline,
          suffixIcon: IconButton(
            icon: Icon(
              _isConfirmPasswordVisible
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
              });
            },
          ),
          validator: _validateConfirmPassword,
        ),
        SizedBox(height: 16.h),
        _buildPasswordRequirements(),
      ],
    );
  }

  Widget _buildPasswordRequirements() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.gray50,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.passwordRequirements,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 8.h),
          _buildRequirement(
              AppLocalizations.of(context)!.requirement8Characters,
              _passwordController.text.length >= 8),
          _buildRequirement(AppLocalizations.of(context)!.requirementUppercase,
              RegExp(r'[A-Z]').hasMatch(_passwordController.text)),
          _buildRequirement(AppLocalizations.of(context)!.requirementLowercase,
              RegExp(r'[a-z]').hasMatch(_passwordController.text)),
          _buildRequirement(AppLocalizations.of(context)!.requirementNumber,
              RegExp(r'\d').hasMatch(_passwordController.text)),
        ],
      ),
    );
  }

  Widget _buildRequirement(String text, bool isValid) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        children: [
          Icon(
            isValid ? Icons.check_circle : Icons.radio_button_unchecked,
            size: 16.sp,
            color: isValid ? AppColors.success : AppColors.gray400,
          ),
          SizedBox(width: 8.w),
          Text(
            text,
            style: TextStyle(
              fontSize: 12.sp,
              color: isValid ? AppColors.success : AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.passwordRequired;
    }
    if (value.length < 8) {
      return AppLocalizations.of(context)!.passwordTooShort;
    }
    if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)').hasMatch(value)) {
      return AppLocalizations.of(context)!.passwordTooWeak;
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.confirmPasswordRequired;
    }
    if (value != _passwordController.text) {
      return AppLocalizations.of(context)!.passwordsDoNotMatch;
    }
    return null;
  }

  void _handleResetPassword() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);

      try {
        // TODO: Implement reset password logic
        await Future.delayed(const Duration(seconds: 2));

        if (mounted) {
          context.pushReplacement('${AppRoutes.successPage}?'
              'title=${Uri.encodeComponent(AppLocalizations.of(context)!.passwordResetSuccess)}&'
              'message=${Uri.encodeComponent(AppLocalizations.of(context)!.passwordResetSuccessMessage)}&'
              'buttonText=${Uri.encodeComponent(AppLocalizations.of(context)!.goToLogin)}&'
              'route=${Uri.encodeComponent(AppRoutes.login)}');
        }
      } catch (e) {
        if (!mounted) {
          return;
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(AppLocalizations.of(context)!.resetPasswordError)),
        );
      } finally {
        if (mounted) {
          setState(() => _isLoading = false);
        }
      }
    }
  }
}
