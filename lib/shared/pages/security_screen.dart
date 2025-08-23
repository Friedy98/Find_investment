import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SecurityScreen extends ConsumerStatefulWidget {
  const SecurityScreen({super.key});

  @override
  ConsumerState<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends ConsumerState<SecurityScreen> {
  bool _twoFactorEnabled = false;

  @override
  void initState() {
    super.initState();
    _twoFactorEnabled = ref.read(authProvider).user?.twoFactorEnabled ?? false;
  }

  Future<void> _updateSecurity() async {
    final authNotifier = ref.read(authProvider.notifier);
    await authNotifier.updateSecurity(twoFactorEnabled: _twoFactorEnabled);

    if (mounted && authNotifier.state.error == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Paramètres de sécurité mis à jour')),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        ref.watch(authProvider.select((state) => state.isLoading));

    return Scaffold(
      backgroundColor: AppColors.cardBackground,
      appBar: AppBar(
        title: Text('Sécurité',
            style: TextStyle(
                fontSize: 20.sp,
                // fontWeight: FontWeight.bold,
                color: AppColors.textPrimary)),
        backgroundColor: AppColors.cardBackground,
        elevation: 0,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: AppColors.textPrimary, size: 20.sp),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30.h),
              _buildSection('Authentification', [
                SwitchListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title:
                      const Text('Activer l\'authentification à deux facteurs'),
                  value: _twoFactorEnabled,
                  onChanged: (value) =>
                      setState(() => _twoFactorEnabled = value),
                  activeColor: AppColors.primary,
                ),
              ]),
              SizedBox(height: 30.h),
              CustomButton(
                text: 'Enregistrer',
                onPressed: _updateSecurity,
                isLoading: isLoading,
                // gradient: const LinearGradient(
                //   colors: [AppColors.primary, AppColors.primaryLight],
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                // ),
              )
                  .animate()
                  .scale(duration: 500.ms, curve: Curves.easeOut)
                  .then()
                  .fadeIn(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary.withOpacity(0.9),
          ),
        ),
        SizedBox(height: 15.h),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15.w),
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12.r),
            // boxShadow: [
            //   BoxShadow(
            //     color: AppColors.shadow.withOpacity(0.1),
            //     blurRadius: 10,
            //     offset: const Offset(0, 5),
            //   ),
            // ],
          ),
          child: Column(children: children),
        ),
      ],
    ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.3, end: 0);
  }
}
