import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen>
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
          'Privacy Policy',
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
                    Icons.security,
                    size: 32.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Our Commitment to Your Privacy',
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
                  title: '1. Introduction',
                  content:
                      'At FindInvest, we are committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application and related services. Please read this policy carefully to understand our practices regarding your personal data.',
                ),
                _buildSection(
                  title: '2. Information We Collect',
                  content:
                      'We may collect the following types of information:\n\n'
                      '• **Personal Information**: Your name, email address, phone number, and other details you provide during registration.\n'
                      '• **Usage Data**: Information about how you interact with our app, such as pages visited, features used, and time spent.\n'
                      '• **Device Information**: Details about your device, including IP address, operating system, and browser type.\n'
                      '• **Cookies and Tracking Technologies**: We use cookies to enhance your experience and analyze app performance.',
                ),
                _buildSection(
                  title: '3. How We Use Your Information',
                  content: 'We use your information to:\n\n'
                      '• Provide and improve our services.\n'
                      '• Personalize your experience, such as recommending projects or job opportunities.\n'
                      '• Communicate with you, including sending updates and notifications.\n'
                      '• Ensure the security of our app and prevent fraud.',
                ),
                _buildSection(
                  title: '4. Sharing Your Information',
                  content:
                      'We do not sell your personal information. We may share your data with:\n\n'
                      '• **Service Providers**: Third parties that assist us in operating our app (e.g., cloud hosting, analytics).\n'
                      '• **Legal Obligations**: When required by law or to protect our rights and users.\n'
                      '• **Business Transfers**: In the event of a merger, acquisition, or sale of assets.',
                ),
                _buildSection(
                  title: '5. Your Rights',
                  content: 'You have the right to:\n\n'
                      '• Access and update your personal information.\n'
                      '• Request deletion of your data, subject to legal requirements.\n'
                      '• Opt-out of marketing communications.\n'
                      'To exercise these rights, contact us at privacy@findinvest.com.',
                ),
                _buildSection(
                  title: '6. Data Security',
                  content:
                      'We implement industry-standard security measures to protect your data, including encryption and secure servers. However, no method of transmission over the internet is 100% secure, and we cannot guarantee absolute security.',
                ),
                _buildSection(
                  title: '7. Contact Us',
                  content:
                      'If you have questions about this Privacy Policy, please contact us at:\n\n'
                      'FindInvest\n'
                      'Email: privacy@findinvest.com\n'
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
