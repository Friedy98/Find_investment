import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProjectOwnerEditScreen extends ConsumerStatefulWidget {
  const ProjectOwnerEditScreen({super.key});

  @override
  ConsumerState<ProjectOwnerEditScreen> createState() =>
      _ProjectOwnerEditScreenState();
}

class _ProjectOwnerEditScreenState
    extends ConsumerState<ProjectOwnerEditScreen> {
  final _companyNameController = TextEditingController();
  final _companyDescriptionController = TextEditingController();
  final _companyWebsiteController = TextEditingController();
  final _companyRegistrationNumberController = TextEditingController();
  final _companyFoundedYearController = TextEditingController();
  final _skillsController = TextEditingController();
  final _experienceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final ownerProfile = ref.read(authProvider).user?.projectOwnerProfile;
    _companyNameController.text = ownerProfile?.company?.name ?? '';
    _companyDescriptionController.text =
        ownerProfile?.company?.description ?? '';
    _companyWebsiteController.text = ownerProfile?.company?.website ?? '';
    _companyRegistrationNumberController.text =
        ownerProfile?.company?.registrationNumber ?? '';
    _companyFoundedYearController.text =
        ownerProfile?.company?.foundedYear?.toString() ?? '';
    _skillsController.text = (ownerProfile?.skills ?? []).join(', ');
    _experienceController.text = ownerProfile?.experience ?? '';
  }

  @override
  void dispose() {
    _companyNameController.dispose();
    _companyDescriptionController.dispose();
    _companyWebsiteController.dispose();
    _companyRegistrationNumberController.dispose();
    _companyFoundedYearController.dispose();
    _skillsController.dispose();
    _experienceController.dispose();
    super.dispose();
  }

  Future<void> _updateProjectOwnerProfile() async {
    final updateData = <String, dynamic>{};

    final company = <String, dynamic>{};
    if (_companyNameController.text.trim().isNotEmpty)
      company['name'] = _companyNameController.text.trim();
    if (_companyDescriptionController.text.trim().isNotEmpty)
      company['description'] = _companyDescriptionController.text.trim();
    if (_companyWebsiteController.text.trim().isNotEmpty) {
      if (!RegExp(r'^(https?://)?([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}(/.*)?$')
          .hasMatch(_companyWebsiteController.text.trim())) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('URL du site web invalide')),
        );
        return;
      }
      company['website'] = _companyWebsiteController.text.trim();
    }
    if (_companyRegistrationNumberController.text.trim().isNotEmpty)
      company['registrationNumber'] =
          _companyRegistrationNumberController.text.trim();
    final foundedYear = int.tryParse(_companyFoundedYearController.text.trim());
    if (foundedYear != null &&
        foundedYear >= 1800 &&
        foundedYear <= DateTime.now().year)
      company['foundedYear'] = foundedYear;
    if (company.isNotEmpty) updateData['company'] = company;

    final skills = _skillsController.text.trim().isNotEmpty
        ? _skillsController.text.trim().split(',').map((s) => s.trim()).toList()
        : null;
    if (skills != null && skills.isNotEmpty) updateData['skills'] = skills;

    if (_experienceController.text.trim().isNotEmpty &&
        _experienceController.text.trim().length <= 2000) {
      updateData['experience'] = _experienceController.text.trim();
    }

    if (updateData.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Aucun changement à enregistrer')),
      );
      return;
    }

    final authNotifier = ref.read(authProvider.notifier);
    await authNotifier.updateProjectOwnerProfile(
      company: updateData['company'],
      skills: updateData['skills'],
      experience: updateData['experience'],
    );

    if (mounted && authNotifier.state.error == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profil mis à jour avec succès')),
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
        title: Text('Modifier le profil porteur',
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
              _buildSection('Informations de l\'entreprise', [
                TextField(
                  controller: _companyNameController,
                  decoration: InputDecoration(
                      labelText: 'Nom de l\'entreprise',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                ),
                SizedBox(height: 15.h),
                TextField(
                  controller: _companyDescriptionController,
                  decoration: InputDecoration(
                      labelText: 'Description',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                ),
                SizedBox(height: 15.h),
                TextField(
                  controller: _companyWebsiteController,
                  decoration: InputDecoration(
                      labelText: 'Site web',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                ),
                SizedBox(height: 15.h),
                TextField(
                  controller: _companyRegistrationNumberController,
                  decoration: InputDecoration(
                      labelText: 'Numéro d\'enregistrement',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                ),
                SizedBox(height: 15.h),
                TextField(
                  controller: _companyFoundedYearController,
                  decoration: InputDecoration(
                      labelText: 'Année de fondation',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                  keyboardType: TextInputType.number,
                ),
              ]),
              SizedBox(height: 25.h),
              _buildSection('Compétences et expérience', [
                TextField(
                  controller: _skillsController,
                  decoration: InputDecoration(
                      labelText: 'Compétences (séparées par des virgules)',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                ),
                SizedBox(height: 15.h),
                TextField(
                  controller: _experienceController,
                  decoration: InputDecoration(
                      labelText: 'Expérience (max 2000 caractères)',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                  maxLines: 3,
                ),
              ]),
              SizedBox(height: 30.h),
              CustomButton(
                text: 'Enregistrer',
                onPressed: _updateProjectOwnerProfile,
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
