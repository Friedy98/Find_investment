import 'dart:async';
import 'package:find_invest_mobile/config/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/result_modal.dart';

class VerifyOtpScreen extends ConsumerStatefulWidget {
  final String email;

  const VerifyOtpScreen({super.key, required this.email});

  @override
  ConsumerState<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends ConsumerState<VerifyOtpScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _otpController = TextEditingController();
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  int _secondsRemaining = 60;
  late Timer _timer;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.forward();
    _startTimer();
  }

  void _startTimer() {
    _secondsRemaining = 60;
    _canResend = false;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        setState(() {
          _canResend = true;
          timer.cancel();
        });
      }
    });
  }

  @override
  void dispose() {
    _otpController.dispose();
    _animationController.dispose();
    _timer.cancel();
    super.dispose();
  }

  Future<void> _handleVerifyOtp() async {
    if (!_formKey.currentState!.validate()) return;

    // Réinitialiser l'erreur avant de lancer la requête
    ref.read(authProvider.notifier).clearError();

    await ref
        .read(authProvider.notifier)
        .verifyOtp(widget.email, _otpController.text.trim(), "password_reset");

    if (mounted) {
      final authState = ref.read(authProvider);
      if (authState.error == null) {
        context.push(AppRoutes.resetPassword,
            extra: {'email': widget.email, 'otp': _otpController.text.trim()});
      }
    }

    // try {} catch (e) {
    //   if (mounted) {
    //     showDialog(
    //       context: context,
    //       builder: (context) => ResultModal(
    //         isSuccess: false,
    //         title: 'Error',
    //         message: e.toString(),
    //       ),
    //     );
    //   }
    // }
  }

  Future<void> _resendOtp() async {
    try {
      await ref.read(authProvider.notifier).requestOtp(widget.email, "email");
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => const ResultModal(
            isSuccess: true,
            title: 'Success',
            message: 'A new OTP has been sent to your email.',
          ),
        );
        _startTimer();
      }
    } catch (e) {
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => ResultModal(
            isSuccess: false,
            title: 'Error',
            message: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Surveiller uniquement isLoading pour minimiser les redessins
    final isLoading =
        ref.watch(authProvider.select((state) => state.isLoading));

    return Scaffold(
      backgroundColor: AppColors.cardBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
              color: AppColors.textPrimary, size: 20.sp),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Verify Code',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
            child: Container(
              padding: EdgeInsets.all(20.w),
              constraints: BoxConstraints(maxWidth: 420.w),
              decoration: const BoxDecoration(
                color: AppColors.cardBackground,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        Icons.vpn_key,
                        size: 32.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Enter Verification Code',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      'We sent a code to ${widget.email}',
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
                      controller: _otpController,
                      label: 'OTP Code',
                      hintText: 'Enter the 6-digit code',
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      prefixIcon: Icons.code,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the OTP code';
                        }
                        if (!RegExp(r'^\d{6}$').hasMatch(value)) {
                          return 'Enter a valid 6-digit OTP';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      _canResend
                          ? 'Resend code now'
                          : 'Resend code in $_secondsRemaining seconds',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        color: _canResend
                            ? AppColors.primary
                            : AppColors.textSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    if (_canResend)
                      TextButton(
                        onPressed: _resendOtp,
                        child: Text(
                          'Resend OTP',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    SizedBox(height: 24.h),
                    CustomButton(
                      text: 'Verify',
                      onPressed: _handleVerifyOtp,
                      isLoading: isLoading,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
