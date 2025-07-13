import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';

class TermsOfServiceScreen extends StatefulWidget {
  const TermsOfServiceScreen({super.key});

  @override
  State<TermsOfServiceScreen> createState() => _TermsOfServiceScreenState();
}

class _TermsOfServiceScreenState extends State<TermsOfServiceScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
              color: AppColors.textPrimary, size: 20.sp),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Terms of Service',
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
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    Icons.gavel,
                    size: 32.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Terms of Service',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Last Updated: July 13, 2025',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 24.h),
                _buildSection(
                  title: '1. Acceptance of Terms',
                  content:
                      'By accessing or using the FindInvest mobile application, you agree to be bound by these Terms of Service. If you do not agree with any part of these terms, you may not use our services.',
                ),
                _buildSection(
                  title: '2. Use of the Service',
                  content:
                      'You agree to use the FindInvest app only for lawful purposes and in accordance with these terms. You are responsible for all activities conducted under your account. Prohibited activities include:\n\n'
                      '• Violating any applicable laws or regulations.\n'
                      '• Attempting to interfere with the app’s functionality or security.\n'
                      '• Using the app to transmit harmful or offensive content.',
                ),
                _buildSection(
                  title: '3. Account Responsibilities',
                  content:
                      'You are responsible for maintaining the confidentiality of your account credentials. Notify us immediately at support@findinvest.com if you suspect any unauthorized access to your account.',
                ),
                _buildSection(
                  title: '4. Intellectual Property',
                  content:
                      'All content, trademarks, and other intellectual property within the FindInvest app are owned by or licensed to FindInvest. You may not reproduce, distribute, or create derivative works without our express permission.',
                ),
                _buildSection(
                  title: '5. Termination',
                  content:
                      'We may suspend or terminate your account if you violate these terms. Upon termination, your access to the app will cease, and we may delete your account data, subject to applicable laws.',
                ),
                _buildSection(
                  title: '6. Limitation of Liability',
                  content:
                      'FindInvest is not liable for any indirect, incidental, or consequential damages arising from your use of the app. Our liability is limited to the maximum extent permitted by law.',
                ),
                _buildSection(
                  title: '7. Contact Us',
                  content:
                      'For questions about these Terms of Service, please contact us at:\n\n'
                      'FindInvest\n'
                      'Email: support@findinvest.com\n'
                      'Phone: +1 (800) 123-4567\n'
                      'Address: 123 Innovation Street, Tech City, TC 12345',
                ),
                SizedBox(height: 24.h),
                // ElevatedButton(
                //   onPressed: () => context.pop(),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: AppColors.primary,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(16.r),
                //     ),
                //     padding: EdgeInsets.symmetric(vertical: 14.h),
                //     elevation: 2,
                //   ),
                //   child: Text(
                //     'Back',
                //     style: TextStyle(
                //       fontFamily: 'Poppins',
                //       fontSize: 16.sp,
                //       fontWeight: FontWeight.w600,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required String content}) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.gray50.withOpacity(0.8),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.gray200.withOpacity(0.5), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            content,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
