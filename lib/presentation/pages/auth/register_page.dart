import 'package:find_invest_mobile/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/app_routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _isLoading = false;
  bool _acceptTerms = false;
  String _selectedRole = 'investor'; // investor, project_owner, job_seeker

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.createAccount),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Header
                _buildHeader(),

                SizedBox(height: 32.h),

                // Role Selection
                _buildRoleSelection(),

                SizedBox(height: 24.h),

                // Registration Form
                _buildRegistrationForm(),

                SizedBox(height: 16.h),

                // Terms and Conditions
                _buildTermsCheckbox(),

                SizedBox(height: 24.h),

                // Register Button
                CustomButton(
                  text: AppLocalizations.of(context)!.createAccount,
                  onPressed: _isLoading ? null : _handleRegister,
                  isLoading: _isLoading,
                ),

                SizedBox(height: 32.h),

                // Login Link
                _buildLoginLink(),
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
        Text(
          AppLocalizations.of(context)!.joinCommunity,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8.h),
        Text(
          AppLocalizations.of(context)!.registerSubtitle,
          style: TextStyle(
            fontSize: 16.sp,
            color: AppColors.textSecondary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildRoleSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.selectRole,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: _buildRoleCard(
                'investor',
                AppLocalizations.of(context)!.investor,
                Icons.trending_up,
                AppColors.primary,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _buildRoleCard(
                'project_owner',
                AppLocalizations.of(context)!.projectOwner,
                Icons.business_center,
                AppColors.success,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _buildRoleCard(
                'job_seeker',
                AppLocalizations.of(context)!.jobSeeker,
                Icons.work_outline,
                AppColors.info,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRoleCard(String role, String title, IconData icon, Color color) {
    final isSelected = _selectedRole == role;

    return GestureDetector(
      onTap: () => setState(() => _selectedRole = role),
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: isSelected ? color.withOpacity(0.1) : AppColors.gray50,
          border: Border.all(
            color: isSelected ? color : AppColors.gray300,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 24.sp,
              color: isSelected ? color : AppColors.gray500,
            ),
            SizedBox(height: 8.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: isSelected ? color : AppColors.gray600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRegistrationForm() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                controller: _firstNameController,
                label: AppLocalizations.of(context)!.firstName,
                hintText: AppLocalizations.of(context)!.enterFirstName,
                prefixIcon: Icons.person_outline,
                validator: _validateName,
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: CustomTextField(
                controller: _lastNameController,
                label: AppLocalizations.of(context)!.lastName,
                hintText: AppLocalizations.of(context)!.enterLastName,
                prefixIcon: Icons.person_outline,
                validator: _validateName,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
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
        SizedBox(height: 16.h),
        CustomTextField(
          controller: _confirmPasswordController,
          label: AppLocalizations.of(context)!.confirmPassword,
          hintText: AppLocalizations.of(context)!.enterConfirmPassword,
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
      ],
    );
  }

  Widget _buildTermsCheckbox() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: _acceptTerms,
          onChanged: (value) => setState(() => _acceptTerms = value ?? false),
          activeColor: AppColors.primary,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() => _acceptTerms = !_acceptTerms),
            child: Text.rich(
              TextSpan(
                text: AppLocalizations.of(context)!.iAgreeToThe,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.textSecondary,
                ),
                children: [
                  TextSpan(
                    text: AppLocalizations.of(context)!.termsAndConditions,
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(text: ' ${AppLocalizations.of(context)!.and} '),
                  TextSpan(
                    text: AppLocalizations.of(context)!.privacyPolicy,
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.alreadyHaveAccount,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.textSecondary,
          ),
        ),
        TextButton(
          onPressed: () => context.pop(),
          child: Text(
            AppLocalizations.of(context)!.login,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.fieldRequired;
    }
    if (value.length < 2) {
      return AppLocalizations.of(context)!.nameTooShort;
    }
    return null;
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

  void _handleRegister() async {
    if (_formKey.currentState!.validate()) {
      if (!_acceptTerms) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(AppLocalizations.of(context)!.acceptTermsRequired)),
        );
        return;
      }

      setState(() => _isLoading = true);

      try {
        // TODO: Implement registration logic
        await Future.delayed(const Duration(seconds: 2));

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content:
                    Text(AppLocalizations.of(context)!.accountCreatedSuccess)),
          );
          context.go(AppRoutes.login);
        }
      } catch (e) {
        if (!mounted) {
          return;
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(AppLocalizations.of(context)!.registrationError)),
        );
        // TODO: Handle registration error
      } finally {
        if (mounted) {
          setState(() => _isLoading = false);
        }
      }
    }
  }
}
