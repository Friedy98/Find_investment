import 'package:find_invest_mobile/config/router/app_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/result_modal.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen>
    with SingleTickerProviderStateMixin {
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _acceptTerms = false;
  bool _acceptPrivacy = false;
  String? _selectedRole;
  int _currentStep = 0;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  final List<String> _roles = ['investor', 'projectOwner', 'jobSeeker', 'user'];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.easeInOutQuad),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _nextStep() {
    if (_currentStep == 0 && _formKey1.currentState!.validate()) {
      setState(() {
        _currentStep++;
        _animationController.reset();
        _animationController.forward();
      });
    } else if (_currentStep == 1 && _formKey2.currentState!.validate()) {
      if (!_acceptTerms || !_acceptPrivacy) {
        showDialog(
          context: context,
          builder: (context) => const ResultModal(
            isSuccess: false,
            title: 'Error',
            message: 'You must accept the Terms and Privacy Policy.',
          ),
        );
        return;
      }
      setState(() {
        _currentStep++;
        _animationController.reset();
        _animationController.forward();
      });
    }
  }

  void _previousStep() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
        _animationController.reset();
        _animationController.forward();
      });
    }
  }

  Future<void> _handleRegister() async {
    await ref.read(authProvider.notifier).register(
          firstName: _firstNameController.text.trim(),
          lastName: _lastNameController.text.trim(),
          email: _emailController.text.trim(),
          password: _passwordController.text,
          confirmPassword: _confirmPasswordController.text,
          phone: _phoneController.text.trim(),
          role: _selectedRole!,
          acceptTerms: _acceptTerms,
          acceptPrivacy: _acceptPrivacy,
        );

    final authState = ref.read(authProvider);
    if (authState.user != null && mounted) {
      context.go('/register-confirmation');
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authProvider, (previous, next) {
      if (next.error != null && previous?.error != next.error && mounted) {
        showDialog(
          context: context,
          builder: (context) => ResultModal(
            isSuccess: false,
            title: 'Registration Error',
            message: next.error!,
          ),
        );
      }
      if (next.user != null && previous?.user != next.user && mounted) {
        context.go('/register-confirmation');
      }
    });
    final authState = ref.watch(authProvider);

    return Scaffold(
      backgroundColor: AppColors.cardBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: _currentStep > 0
            ? IconButton(
                icon: Icon(Icons.arrow_back_ios,
                    color: AppColors.textPrimary, size: 20.sp),
                onPressed: _previousStep,
              )
            : IconButton(
                icon: Icon(Icons.arrow_back_ios,
                    color: AppColors.textPrimary, size: 20.sp),
                onPressed: () => context.go("/login"),
              ),
        title: Text(
          'Join Us',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: Container(
                padding: EdgeInsets.all(20.w),
                constraints: BoxConstraints(maxWidth: 420.w),
                decoration: BoxDecoration(
                  color: AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(24.r),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.cardBackground,
                      AppColors.cardBackground.withOpacity(0.95)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black.withOpacity(0.12),
                  //     blurRadius: 20.r,
                  //     offset: Offset(0, 8.h),
                  //     spreadRadius: 1,
                  //   ),
                  // ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Step Indicator
                    _buildStepIndicator(),
                    SizedBox(height: 20.h),
                    Text(
                      'Step ${_currentStep + 1} of 3',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        color: AppColors.textSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 24.h),
                    if (_currentStep == 0) ...[
                      Form(
                        key: _formKey1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _buildIconHeader(
                                Icons.person_add_alt_1, 'Your Details'),
                            SizedBox(height: 12.h),
                            Text(
                              'Let’s start with your personal information',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                                color: AppColors.textSecondary,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 24.h),
                            CustomTextField(
                              controller: _firstNameController,
                              label: 'First Name',
                              hintText: 'Enter your first name',
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              prefixIcon: Icons.person_outline,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your first name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 16.h),
                            CustomTextField(
                              controller: _lastNameController,
                              label: 'Last Name',
                              hintText: 'Enter your last name',
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              prefixIcon: Icons.person_outline,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your last name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 16.h),
                            CustomTextField(
                              controller: _emailController,
                              label: 'Email',
                              hintText: 'Enter your email',
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              prefixIcon: Icons.email_outlined,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 24.h),
                            CustomButton(
                              text: 'Next',
                              onPressed: _nextStep,
                              isLoading: authState.isLoading,
                            ),
                          ],
                        ),
                      ),
                    ],
                    if (_currentStep == 1) ...[
                      Form(
                        key: _formKey2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _buildIconHeader(Icons.lock, 'Secure Your Account'),
                            SizedBox(height: 12.h),
                            Text(
                              'Set up your password and preferences',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                                color: AppColors.textSecondary,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 24.h),
                            CustomTextField(
                              controller: _passwordController,
                              label: 'Password',
                              hintText: 'Enter your password',
                              obscureText: _obscurePassword,
                              textInputAction: TextInputAction.next,
                              prefixIcon: Icons.lock_outline,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscurePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: AppColors.textSecondary,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscurePassword = !_obscurePassword;
                                  });
                                },
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                if (value.length < 8) {
                                  return 'Password must be at least 8 characters';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 16.h),
                            CustomTextField(
                              controller: _confirmPasswordController,
                              label: 'Confirm Password',
                              hintText: 'Confirm your password',
                              obscureText: _obscureConfirmPassword,
                              textInputAction: TextInputAction.next,
                              prefixIcon: Icons.lock_outline,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureConfirmPassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: AppColors.textSecondary,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureConfirmPassword =
                                        !_obscureConfirmPassword;
                                  });
                                },
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please confirm your password';
                                }
                                if (value != _passwordController.text) {
                                  return 'Passwords do not match';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 16.h),
                            CustomTextField(
                              controller: _phoneController,
                              label: 'Phone Number',
                              hintText: 'Enter your phone number',
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.next,
                              prefixIcon: Icons.phone_outlined,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone number';
                                }
                                if (!RegExp(r'^\d{9,12}$').hasMatch(value)) {
                                  return 'Enter a valid phone number (9-12 digits)';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 16.h),
                            DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                labelText: 'Role',
                                labelStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14.sp,
                                  color: AppColors.textPrimary,
                                ),
                                filled: true,
                                fillColor: AppColors.gray50,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.r),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.r),
                                  borderSide: const BorderSide(
                                    color: AppColors.gray200,
                                    width: 1.5,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.r),
                                  borderSide: const BorderSide(
                                    color: AppColors.primary,
                                    width: 2,
                                  ),
                                ),
                              ),
                              value: _selectedRole,
                              items: _roles
                                  .map((role) => DropdownMenuItem<String>(
                                        value: role,
                                        child: Text(
                                          role[0].toUpperCase() +
                                              role.substring(1),
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 15.sp,
                                            color: AppColors.textPrimary,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  _selectedRole = value;
                                });
                              },
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select a role';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              children: [
                                Checkbox(
                                  value: _acceptTerms,
                                  onChanged: (value) {
                                    setState(() {
                                      _acceptTerms = value ?? false;
                                    });
                                  },
                                  activeColor: AppColors.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.r),
                                  ),
                                  side: const BorderSide(
                                      color: AppColors.gray300, width: 1.5),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _acceptTerms = !_acceptTerms;
                                      });
                                    },
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'I accept the ',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14.sp,
                                          color: AppColors.textPrimary,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Terms of Service',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14.sp,
                                              color: AppColors.primary,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                context.push(
                                                    AppRoutes.termsConditions);
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: _acceptPrivacy,
                                  onChanged: (value) {
                                    setState(() {
                                      _acceptPrivacy = value ?? false;
                                    });
                                  },
                                  activeColor: AppColors.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.r),
                                  ),
                                  side: const BorderSide(
                                      color: AppColors.gray300, width: 1.5),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _acceptPrivacy = !_acceptPrivacy;
                                      });
                                    },
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'I accept the ',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14.sp,
                                          color: AppColors.textPrimary,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Privacy Policy',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14.sp,
                                              color: AppColors.primary,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                context.push(
                                                    AppRoutes.privacyPolicy);
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 24.h),
                            CustomButton(
                              text: 'Next',
                              onPressed: _nextStep,
                              isLoading: authState.isLoading,
                            ),
                          ],
                        ),
                      ),
                    ],
                    if (_currentStep == 2) ...[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _buildIconHeader(
                              Icons.verified, 'Confirm Your Details'),
                          SizedBox(height: 12.h),
                          Text(
                            'Please review your information',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp,
                              color: AppColors.textSecondary,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 24.h),
                          _buildReviewItem(
                              'First Name', _firstNameController.text),
                          _buildReviewItem(
                              'Last Name', _lastNameController.text),
                          _buildReviewItem('Email', _emailController.text),
                          _buildReviewItem('Phone', _phoneController.text),
                          _buildReviewItem('Role', _selectedRole ?? ''),
                          SizedBox(height: 24.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () => setState(() {
                                    _currentStep = 0;
                                    _animationController.reset();
                                    _animationController.forward();
                                  }),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: AppColors.primary,
                                    side: const BorderSide(
                                        color: AppColors.primary, width: 1.5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.r),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 14.h),
                                    backgroundColor:
                                        AppColors.gray50.withOpacity(0.5),
                                  ),
                                  child: Text(
                                    'Edit Step 1',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16.w),
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () => setState(() {
                                    _currentStep = 1;
                                    _animationController.reset();
                                    _animationController.forward();
                                  }),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: AppColors.primary,
                                    side: const BorderSide(
                                        color: AppColors.primary, width: 1.5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.r),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 14.h),
                                    backgroundColor:
                                        AppColors.gray50.withOpacity(0.5),
                                  ),
                                  child: Text(
                                    'Edit Step 2',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.h),
                          CustomButton(
                            text: 'Confirm',
                            onPressed: _handleRegister,
                            isLoading: authState.isLoading,
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStepIndicator() {
    return Container(
      height: 8.h,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.gray200,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: FractionallySizedBox(
              widthFactor: (_currentStep + 1) / 3,
              alignment: _currentStep == 0
                  ? Alignment.centerLeft
                  : _currentStep == 1
                      ? Alignment.center
                      : Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppColors.primary, AppColors.primaryLight],
                  ),
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: List.generate(3, (index) {
          //     return Container(
          //       width: 24.w,
          //       height: 24.h,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: _currentStep >= index
          //             ? AppColors.primary
          //             : AppColors.gray300,
          //         border: Border.all(
          //           color: _currentStep >= index
          //               ? AppColors.primaryLight
          //               : AppColors.gray400,
          //           width: 2,
          //         ),
          //       ),
          //       child: Center(
          //         child: Icon(
          //           index == 0
          //               ? Icons.person
          //               : index == 1
          //                   ? Icons.lock
          //                   : Icons.check,
          //           size: 14.sp,
          //           color: Colors.white,
          //         ),
          //       ),
          //     );
          //   }),
          // ),
        ],
      ),
    );
  }

  Widget _buildIconHeader(IconData icon, String title) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(14.w),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [AppColors.primary, AppColors.primaryLight],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withOpacity(0.3),
                blurRadius: 12.r,
                offset: Offset(0, 4.h),
              ),
            ],
          ),
          child: Icon(
            icon,
            size: 32.sp,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 16.h),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 26.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
            letterSpacing: 0.5,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildReviewItem(String label, String value) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      margin: EdgeInsets.symmetric(vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.gray50.withOpacity(0.8),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.gray200.withOpacity(0.5), width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          Flexible(
            child: Text(
              value,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15.sp,
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
