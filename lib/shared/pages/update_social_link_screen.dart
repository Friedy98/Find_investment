import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter_animate/flutter_animate.dart';

class UpdateSocialLinksScreen extends ConsumerStatefulWidget {
  const UpdateSocialLinksScreen({super.key});

  @override
  ConsumerState<UpdateSocialLinksScreen> createState() =>
      _UpdateSocialLinksScreenState();
}

class _UpdateSocialLinksScreenState
    extends ConsumerState<UpdateSocialLinksScreen> {
  final _formKey = GlobalKey<FormState>();
  final _linkedinController = TextEditingController();
  final _twitterController = TextEditingController();
  final _facebookController = TextEditingController();
  final _githubController = TextEditingController();
  final _websiteController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final user = ref.read(authProvider).user;
    if (user != null) {
      _linkedinController.text = user.socialLinks?.linkedin ?? '';
      _twitterController.text = user.socialLinks?.twitter ?? '';
      _facebookController.text = user.socialLinks?.facebook ?? '';
      _githubController.text = user.socialLinks?.github ?? '';
      _websiteController.text = user.socialLinks?.website ?? '';
    }
  }

  @override
  void dispose() {
    _linkedinController.dispose();
    _twitterController.dispose();
    _facebookController.dispose();
    _githubController.dispose();
    _websiteController.dispose();
    super.dispose();
  }

  Future<void> _updateSocialLinks() async {
    if (!_formKey.currentState!.validate()) return;

    final updateData = <String, dynamic>{};

    if (_linkedinController.text.trim().isNotEmpty) {
      updateData['linkedin'] = _linkedinController.text.trim();
    }
    if (_twitterController.text.trim().isNotEmpty) {
      updateData['twitter'] = _twitterController.text.trim();
    }
    if (_facebookController.text.trim().isNotEmpty) {
      updateData['facebook'] = _facebookController.text.trim();
    }
    if (_githubController.text.trim().isNotEmpty) {
      updateData['github'] = _githubController.text.trim();
    }
    if (_websiteController.text.trim().isNotEmpty) {
      updateData['website'] = _websiteController.text.trim();
    }

    if (updateData.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Aucun lien à mettre à jour')),
      );
      return;
    }

    final authNotifier = ref.read(authProvider.notifier);
    await authNotifier.updateSocialLinks(
      linkedin: updateData['linkedin'],
      twitter: updateData['twitter'],
      facebook: updateData['facebook'],
      github: updateData['github'],
      website: updateData['website'],
    );

    if (mounted && authNotifier.state.error == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Liens sociaux mis à jour avec succès')),
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
        title: Text('Mettre à jour les liens sociaux',
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
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // SizedBox(height: 30.h),
                _buildSection('Liens sociaux', [
                  CustomTextField(
                    controller: _linkedinController,
                    label: 'LinkedIn',
                    hintText: 'Ex. https://linkedin.com/in/votreprofil',
                    prefixIcon: Icons.link,
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(
                              r'^(https?://)?([a-zA-Z0-9-]+\.)?linkedin\.com/.*$')
                          .hasMatch(value)) {
                        return 'URL LinkedIn invalide';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _twitterController,
                    label: 'Twitter',
                    hintText: 'Ex. https://twitter.com/votreprofil',
                    prefixIcon: Icons.link,
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(
                              r'^(https?://)?([a-zA-Z0-9-]+\.)?twitter\.com/.*$')
                          .hasMatch(value)) {
                        return 'URL Twitter invalide';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _facebookController,
                    label: 'Facebook',
                    hintText: 'Ex. https://facebook.com/votreprofil',
                    prefixIcon: Icons.link,
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(
                              r'^(https?://)?([a-zA-Z0-9-]+\.)?facebook\.com/.*$')
                          .hasMatch(value)) {
                        return 'URL Facebook invalide';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _githubController,
                    label: 'GitHub',
                    hintText: 'Ex. https://github.com/votreprofil',
                    prefixIcon: Icons.link,
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(
                              r'^(https?://)?([a-zA-Z0-9-]+\.)?github\.com/.*$')
                          .hasMatch(value)) {
                        return 'URL GitHub invalide';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _websiteController,
                    label: 'Site web',
                    hintText: 'Ex. https://votrewebsite.com',
                    prefixIcon: Icons.link,
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(
                              r'^(https?://)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(/.*)?$')
                          .hasMatch(value)) {
                        return 'URL du site web invalide';
                      }
                      return null;
                    },
                  ),
                ]),
                SizedBox(height: 30.h),
                CustomButton(
                  text: 'Enregistrer les liens',
                  onPressed: _updateSocialLinks,
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
          // padding: EdgeInsets.symmetric(vertical: 15.w),
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
