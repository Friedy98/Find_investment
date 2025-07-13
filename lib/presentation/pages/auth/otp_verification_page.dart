import 'package:find_invest_mobile/generated/app_localizations.dart';
import 'package:find_invest_mobile/presentation/widgets/otp_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../config/router/app_routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/progress_indicator_dots.dart';

class OtpVerificationPage extends ConsumerStatefulWidget {
  final String email;

  const OtpVerificationPage({
    super.key,
    required this.email,
  });

  @override
  ConsumerState<OtpVerificationPage> createState() =>
      _OtpVerificationPageState();
}

class _OtpVerificationPageState extends ConsumerState<OtpVerificationPage> {
  final List<TextEditingController> _controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );
  final List<FocusNode> _focusNodes = List.generate(
    6,
    (index) => FocusNode(),
  );

  bool _isLoading = false;
  int _resendTimer = 60;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    _startResendTimer();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _startResendTimer() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted && _resendTimer > 0) {
        setState(() => _resendTimer--);
        _startResendTimer();
      } else if (mounted) {
        setState(() => _canResend = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(AppLocalizations.of(context)!.verifyCode),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            children: [
              // Progress Indicator
              const ProgressIndicatorDots(currentStep: 1, totalSteps: 3),

              SizedBox(height: 40.h),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Header
                      _buildHeader(),

                      SizedBox(height: 40.h),

                      // OTP Input
                      _buildOtpInput(),

                      SizedBox(height: 32.h),

                      // Verify Button
                      CustomButton(
                        text: AppLocalizations.of(context)!.verifyCode,
                        onPressed: _isLoading ? null : _handleVerifyCode,
                        isLoading: _isLoading,
                      ),

                      SizedBox(height: 24.h),

                      // Resend Code
                      _buildResendSection(),
                    ],
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
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Icon(
            Icons.message_outlined,
            size: 40.sp,
            color: AppColors.primary,
          ),
        ),
        SizedBox(height: 24.h),
        Text(
          AppLocalizations.of(context)!.verifyYourEmail,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        Text.rich(
          TextSpan(
            text: AppLocalizations.of(context)!.otpSentTo,
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.textSecondary,
            ),
            children: [
              TextSpan(
                text: widget.email,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildOtpInput() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(6, (index) {
        return OtpInputField(
          controller: _controllers[index],
          focusNode: _focusNodes[index],
          onChanged: (value) => _onOtpChanged(index, value),
        );
      }),
    );
  }

  Widget _buildResendSection() {
    return Column(
      children: [
        Text(
          AppLocalizations.of(context)!.didntReceiveCode,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.textSecondary,
          ),
        ),
        SizedBox(height: 8.h),
        if (_canResend)
          TextButton(
            onPressed: _handleResendCode,
            child: Text(AppLocalizations.of(context)!.resendCode),
          )
        else
          Text(
            '${AppLocalizations.of(context)!.resendIn} $_resendTimer${AppLocalizations.of(context)!.seconds}',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textSecondary,
            ),
          ),
      ],
    );
  }

  void _onOtpChanged(int index, String value) {
    if (value.isNotEmpty && index < 5) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }

    // Auto verify when all fields are filled
    if (_controllers.every((controller) => controller.text.isNotEmpty)) {
      _handleVerifyCode();
    }
  }

  void _handleVerifyCode() async {
    final otp = _controllers.map((c) => c.text).join();

    if (otp.length != 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.enterCompleteOtp)),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      // TODO: Implement OTP verification logic
      await Future.delayed(const Duration(seconds: 2));

      if (mounted) {
        context
            .push('${AppRoutes.resetPassword}?email=${widget.email}&otp=$otp');
      }
    } catch (e) {
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.invalidOtp)),
      );
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  void _handleResendCode() async {
    setState(() {
      _canResend = false;
      _resendTimer = 60;
    });

    _startResendTimer();

    try {
      // TODO: Implement resend code logic
      await Future.delayed(const Duration(seconds: 1));

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.codeResent)),
        );
      }
    } catch (e) {
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.resendError)),
      );
    }
  }
}
