import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PrivacyScreen extends ConsumerStatefulWidget {
  const PrivacyScreen({super.key});

  @override
  ConsumerState<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends ConsumerState<PrivacyScreen> {
  String? _profileVisibility;
  bool? _showEmail;
  bool? _showPhone;

  @override
  void initState() {
    super.initState();
    final privacy = ref.read(authProvider).user?.preferences?.privacy;
    _profileVisibility = privacy?.profileVisibility;
    _showEmail = privacy?.showEmail;
    _showPhone = privacy?.showPhone;
  }

  Future<void> _updatePrivacy() async {
    final updateData = <String, dynamic>{};

    if (_profileVisibility != null) {
      updateData['profileVisibility'] = _profileVisibility;
    }
    if (_showEmail != null) {
      updateData['showEmail'] = _showEmail;
    }
    if (_showPhone != null) {
      updateData['showPhone'] = _showPhone;
    }

    if (updateData.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Aucun changement à enregistrer')),
      );
      return;
    }

    // Contrôles avant soumission
    if (_profileVisibility != null &&
        !['public', 'members_only', 'private'].contains(_profileVisibility)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Visibilité du profil invalide')),
      );
      return;
    }

    final authNotifier = ref.read(authProvider.notifier);
    await authNotifier.updatePrivacy(
      profileVisibility: updateData['profileVisibility'],
      showEmail: updateData['showEmail'],
      showPhone: updateData['showPhone'],
    );

    if (mounted && authNotifier.state.error == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Paramètres de confidentialité mis à jour')),
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
        title: Text('Confidentialité',
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
              // SizedBox(height: 20.h),
              // Text(
              //   'Gérez votre confidentialité',
              //   style: TextStyle(
              //     fontFamily: 'Poppins',
              //     fontSize: 28.sp,
              //     fontWeight: FontWeight.w600,
              //     color: AppColors.textPrimary,
              //   ),
              // ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.5, end: 0),
              SizedBox(height: 30.h),
              _buildSection('Visibilité du profil', [
                RadioListTile<String>(
                  
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Public'),
                  value: 'public',
                  groupValue: _profileVisibility,
                  onChanged: (value) =>
                      setState(() => _profileVisibility = value),
                  activeColor: AppColors.primary,
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Membres seulement'),
                  value: 'members_only',
                  groupValue: _profileVisibility,
                  onChanged: (value) =>
                      setState(() => _profileVisibility = value),
                  activeColor: AppColors.primary,
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Privé'),
                  value: 'private',
                  groupValue: _profileVisibility,
                  onChanged: (value) =>
                      setState(() => _profileVisibility = value),
                  activeColor: AppColors.primary,
                ),
              ]),
              SizedBox(height: 25.h),
              _buildSection('Affichage des informations', [
                SwitchListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Afficher l\'email'),
                  value: _showEmail ?? false,
                  onChanged: (value) => setState(() => _showEmail = value),
                  activeColor: AppColors.primary,
                ),
                SwitchListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Afficher le téléphone'),
                  value: _showPhone ?? false,
                  onChanged: (value) => setState(() => _showPhone = value),
                  activeColor: AppColors.primary,
                ),
              ]),
              SizedBox(height: 30.h),
              CustomButton(
                text: 'Enregistrer',
                onPressed: _updatePrivacy,
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
          // padding: EdgeInsets.all(15.w),
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
