import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(authProvider.notifier).getUser();
      print('ProfileScreen: getUser scheduled');
    });
  }

  @override
  Widget build(BuildContext context) {
    print('ProfileScreen build');
    final authState = ref.watch(authProvider);
    final user = authState.user;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.cardBackground,
        elevation: 0,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, size: 24.sp, color: AppColors.textPrimary),
          onPressed: () {
            print('ProfileScreen: Back button clicked');
            context.go('/project-owner/home');
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        centerTitle: true,
      ),
      body: authState.isLoading
          ? Center(
              child: Lottie.asset(
                'assets/lottie/no_projects.json',
                width: 100.w,
                height: 100.h,
              ),
            )
          : user == null
              ? Center(
                  child: Text(
                    'User data not available',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: AppColors.textPrimary,
                    ),
                  ),
                )
              : SingleChildScrollView(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Profile Header
                      Container(
                        padding: EdgeInsets.all(16.w),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [AppColors.primary, AppColors.primaryLight],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(16.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10.r,
                              offset: Offset(0, 4.h),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50.r,
                              backgroundColor: Colors.white.withOpacity(0.2),
                              child: user.profile?.avatar != null
                                  ? ClipOval(
                                      child: Image.network(
                                        user.profile!.avatar!,
                                        width: 100.w,
                                        height: 100.h,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                Icon(
                                          Icons.person,
                                          size: 50.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  : Icon(
                                      Icons.person,
                                      size: 50.sp,
                                      color: Colors.white,
                                    ),
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              '${user.firstName} ${user.lastName}',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              user.email ?? "",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sp,
                                color: Colors.white70,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 16.h),
                            CustomButton(
                              text: 'Edit Profile',
                              onPressed: () {
                                print('ProfileScreen: Edit Profile clicked');
                                context.go('/project-owner/update-profile');
                              },
                              backgroundColor: Colors.white,
                              textColor: AppColors.primary,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.h),
                      // Personal Information
                      _buildSectionCard(
                        title: 'Personal Information',
                        children: [
                          _buildInfoRow(Icons.person, 'Name',
                              '${user.firstName} ${user.lastName}'),
                          _buildInfoRow(Icons.email, 'Email', user.email ?? ""),
                          _buildInfoRow(Icons.phone, 'Phone',
                              user.phone ?? 'Not provided'),
                          _buildInfoRow(
                              Icons.work, 'Role', user.role!.capitalize()),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      // Profile Details
                      _buildSectionCard(
                        title: 'Profile Details',
                        children: [
                          _buildInfoRow(Icons.info, 'Bio',
                              user.profile?.bio ?? 'Not provided'),
                          _buildInfoRow(Icons.location_on, 'Location',
                              user.profile?.location ?? 'Not provided'),
                          _buildInfoRow(Icons.link, 'Website',
                              user.profile?.website ?? 'Not provided'),
                          _buildInfoRow(
                              Icons.cake,
                              'Date of Birth',
                              user.profile?.dateOfBirth != null
                                  ? DateFormat('dd MMM yyyy')
                                      .format(user.profile!.dateOfBirth!)
                                  : 'Not provided'),
                          _buildInfoRow(Icons.person_outline, 'Gender',
                              user.profile?.gender ?? 'Not provided'),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      // Social Links
                      _buildSectionCard(
                        title: 'Social Links',
                        children: [
                          _buildInfoRow(
                              Icons.link,
                              'LinkedIn',
                              user.profile?.socialLinks?.linkedin ??
                                  'Not provided'),
                          _buildInfoRow(
                              Icons.link,
                              'Twitter',
                              user.profile?.socialLinks?.twitter ??
                                  'Not provided'),
                          _buildInfoRow(
                              Icons.link,
                              'Facebook',
                              user.profile?.socialLinks?.facebook ??
                                  'Not provided'),
                          _buildInfoRow(
                              Icons.link,
                              'Instagram',
                              user.profile?.socialLinks?.instagram ??
                                  'Not provided'),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      // Preferences
                      _buildSectionCard(
                        title: 'Preferences',
                        children: [
                          _buildInfoRow(Icons.language, 'Language',
                              user.preferences?.language ?? 'Not provided'),
                          _buildInfoRow(
                              Icons.email,
                              'Email Notifications',
                              user.preferences?.notifications?.email == true
                                  ? 'Enabled'
                                  : 'Disabled'),
                          _buildInfoRow(
                              Icons.notifications,
                              'Push Notifications',
                              user.preferences?.notifications?.push == true
                                  ? 'Enabled'
                                  : 'Disabled'),
                          _buildInfoRow(
                              Icons.sms,
                              'SMS Notifications',
                              user.preferences?.notifications?.sms == true
                                  ? 'Enabled'
                                  : 'Disabled'),
                          _buildInfoRow(
                              Icons.visibility,
                              'Profile Visibility',
                              user.preferences?.privacy?.profileVisibility ??
                                  'Not provided'),
                          _buildInfoRow(
                              Icons.email,
                              'Show Email',
                              user.preferences?.privacy?.showEmail == true
                                  ? 'Visible'
                                  : 'Hidden'),
                          _buildInfoRow(
                              Icons.phone,
                              'Show Phone',
                              user.preferences?.privacy?.showPhone == true
                                  ? 'Visible'
                                  : 'Hidden'),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      // Account Status
                      _buildSectionCard(
                        title: 'Account Status',
                        children: [
                          _buildInfoRow(Icons.verified, 'KYC Status',
                              user.kycStatus ?? 'Not provided'),
                          _buildInfoRow(Icons.check_circle, 'Active',
                              user.isActive == true ? 'Yes' : 'No'),
                          _buildInfoRow(Icons.verified_user, 'Verified',
                              user.isVerified == true ? 'Yes' : 'No'),
                          _buildInfoRow(
                              Icons.login,
                              'Last Login',
                              user.lastLogin != null
                                  ? DateFormat('dd MMM yyyy HH:mm')
                                      .format(user.lastLogin!)
                                  : 'Not provided'),
                          _buildInfoRow(
                              Icons.date_range,
                              'Created At',
                              user.createdAt != null
                                  ? DateFormat('dd MMM yyyy')
                                      .format(user.createdAt!)
                                  : 'Not provided'),
                          _buildInfoRow(
                              Icons.update,
                              'Updated At',
                              user.updatedAt != null
                                  ? DateFormat('dd MMM yyyy')
                                      .format(user.updatedAt!)
                                  : 'Not provided'),
                        ],
                      ),
                    ],
                  ),
                ),
    );
  }

  Widget _buildSectionCard(
      {required String title, required List<Widget> children}) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 12.h),
          ...children,
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Icon(icon, size: 20.sp, color: AppColors.primary),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                Text(
                  value,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
