import 'package:find_invest_mobile/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/app_routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40.h),

                // Logo and Title
                _buildHeader(),

                SizedBox(height: 48.h),

                // Login Form
                _buildLoginForm(),

                SizedBox(height: 24.h),

                // Login Button
                CustomButton(
                  text: AppLocalizations.of(context)!.login,
                  onPressed: _isLoading ? null : _handleLogin,
                  isLoading: _isLoading,
                ),

                SizedBox(height: 16.h),

                // Forgot Password
                TextButton(
                  onPressed: () => context.push(AppRoutes.forgotPassword),
                  child: Text(AppLocalizations.of(context)!.forgotPassword),
                ),

                SizedBox(height: 32.h),

                // Divider
                _buildDivider(),

                SizedBox(height: 32.h),

                // Social Login
                _buildSocialLogin(),

                SizedBox(height: 32.h),

                // Register Link
                _buildRegisterLink(),
              ],
            ),
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
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Icon(
            Icons.handshake_outlined,
            size: 40.sp,
            color: AppColors.white,
          ),
        ),
        SizedBox(height: 24.h),
        Text(
          AppLocalizations.of(context)!.welcomeBack,
          style: TextStyle(
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          AppLocalizations.of(context)!.loginSubtitle,
          style: TextStyle(
            fontSize: 16.sp,
            color: AppColors.textSecondary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildLoginForm() {
    return Column(
      children: [
        CustomTextField(
          controller: _emailController,
          label: AppLocalizations.of(context)!.email,
          hintText: AppLocalizations.of(context)!.enterEmail,
          keyboardType: TextInputType.emailAddress,
          prefixIcon: Icons.email_outlined,
          validator: _validateEmail,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          controller: _passwordController,
          label: AppLocalizations.of(context)!.password,
          hintText: AppLocalizations.of(context)!.enterPassword,
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
      ],
    );
  }

  Widget _buildDivider() {
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.gray300)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            AppLocalizations.of(context)!.orContinueWith,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textSecondary,
            ),
          ),
        ),
        const Expanded(child: Divider(color: AppColors.gray300)),
      ],
    );
  }

  Widget _buildSocialLogin() {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: _handleGoogleLogin,
            icon: Icon(Icons.g_mobiledata, size: 24.sp),
            label: const Text('Google'),
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 12.h),
            ),
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: OutlinedButton.icon(
            onPressed: _handleFacebookLogin,
            icon: Icon(Icons.facebook, size: 24.sp),
            label: const Text('Facebook'),
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 12.h),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRegisterLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.dontHaveAccount,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.textSecondary,
          ),
        ),
        TextButton(
          onPressed: () => context.push(AppRoutes.register),
          child: Text(
            AppLocalizations.of(context)!.signUp,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.emailRequired;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return AppLocalizations.of(context)!.invalidEmail;
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.passwordRequired;
    }
    if (value.length < 8) {
      return AppLocalizations.of(context)!.passwordTooShort;
    }
    return null;
  }

  void _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);

      try {
        // TODO: Implement login logic
        await Future.delayed(const Duration(seconds: 2));

        if (mounted) {
          context.go(AppRoutes.home);
        }
      } catch (e) {
        // TODO: Handle login error
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.loginError)),
        );
      } finally {
        if (mounted) {
          setState(() => _isLoading = false);
        }
      }
    }
  }

  void _handleGoogleLogin() {
    // TODO: Implement Google login
  }

  void _handleFacebookLogin() {
    // TODO: Implement Facebook login
  }
}
