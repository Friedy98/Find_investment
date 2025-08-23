import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:find_invest_mobile/shared/widgets/custom_text_field.dart';
import 'package:find_invest_mobile/shared/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';

class EditProfilePage extends ConsumerStatefulWidget {
  const EditProfilePage({super.key});

  @override
  ConsumerState<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends ConsumerState<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _bioController = TextEditingController();
  final _locationController = TextEditingController();
  final _websiteController = TextEditingController();
  final _linkedinController = TextEditingController();
  final _twitterController = TextEditingController();

  bool _isLoading = false;
  DateTime? _selectedDateOfBirth;
  String? _selectedGender;

  @override
  void initState() {
    super.initState();
    _initializeFields();
  }

  void _initializeFields() {
    final user = ref.read(authProvider).user;
    if (user != null) {
      _firstNameController.text = user.firstName;
      _lastNameController.text = user.lastName;
      _emailController.text = user.email ?? '';
      _phoneController.text = user.phone ?? '';
      _bioController.text = user.profile?.bio ?? '';
      _locationController.text = user.profile?.location ?? '';
      _websiteController.text = user.profile?.website ?? '';
      _linkedinController.text = user.profile?.socialLinks?.linkedin ?? '';
      _twitterController.text = user.profile?.socialLinks?.twitter ?? '';
      _selectedDateOfBirth = user.profile?.dateOfBirth;
      _selectedGender = user.profile?.gender;
    }
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _bioController.dispose();
    _locationController.dispose();
    _websiteController.dispose();
    _linkedinController.dispose();
    _twitterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authProvider).user;

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      appBar: AppBar(
        title: const Text('Modifier le profil'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: _isLoading ? null : _saveProfile,
            child: Text(
              'Enregistrer',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: _isLoading ? AppColors.textDisabled : AppColors.primary,
              ),
            ),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Avatar
              Center(
                child: ProfileAvatar(
                  imageUrl: user?.profile?.avatar,
                  name: '${user?.firstName ?? ''} ${user?.lastName ?? ''}',
                  size: 120.w,
                  showEditButton: true,
                  onEditTap: _editAvatar,
                ),
              ),

              SizedBox(height: 32.h),

              // Informations de base
              _buildSection(
                title: 'Informations de base',
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: _firstNameController,
                          label: 'Prénom',
                          hintText: 'Votre prénom',
                          prefixIcon: Icons.person_outline,
                          validator: _validateName,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: CustomTextField(
                          controller: _lastNameController,
                          label: 'Nom',
                          hintText: 'Votre nom',
                          prefixIcon: Icons.person_outline,
                          validator: _validateName,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    controller: _emailController,
                    label: 'Email',
                    hintText: 'votre@email.com',
                    prefixIcon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                    readOnly: true, // L'email ne peut pas être modifié
                    enabled: false,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    controller: _phoneController,
                    label: 'Téléphone',
                    hintText: '+33 6 12 34 56 78',
                    prefixIcon: Icons.phone_outlined,
                    keyboardType: TextInputType.phone,
                  ),
                ],
              ),

              SizedBox(height: 24.h),

              // Informations personnelles
              _buildSection(
                title: 'Informations personnelles',
                children: [
                  CustomTextField(
                    controller: _bioController,
                    label: 'Bio',
                    hintText: 'Parlez-nous de vous...',
                    prefixIcon: Icons.info_outline,
                    maxLines: 3,
                    maxLength: 200,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    controller: _locationController,
                    label: 'Localisation',
                    hintText: 'Paris, France',
                    prefixIcon: Icons.location_on_outlined,
                  ),
                  SizedBox(height: 16.h),
                  _buildDateField(),
                  SizedBox(height: 16.h),
                  _buildGenderField(),
                ],
              ),

              SizedBox(height: 24.h),

              // Liens sociaux
              _buildSection(
                title: 'Liens sociaux',
                children: [
                  CustomTextField(
                    controller: _websiteController,
                    label: 'Site web',
                    hintText: 'https://monsite.com',
                    prefixIcon: Icons.language,
                    keyboardType: TextInputType.url,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    controller: _linkedinController,
                    label: 'LinkedIn',
                    hintText: 'https://linkedin.com/in/monprofil',
                    prefixIcon: Icons.work_outline,
                    keyboardType: TextInputType.url,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    controller: _twitterController,
                    label: 'Twitter',
                    hintText: 'https://twitter.com/moncompte',
                    prefixIcon: Icons.alternate_email,
                    keyboardType: TextInputType.url,
                  ),
                ],
              ),

              SizedBox(height: 32.h),

              // Bouton de sauvegarde
              CustomButton(
                width: double.infinity,
                text: 'Enregistrer les modifications',
                onPressed: _isLoading ? null : _saveProfile,
                isLoading: _isLoading,
                height: 58.h,
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 16.h),
        ...children,
      ],
    );
  }

  Widget _buildDateField() {
    return GestureDetector(
      onTap: _selectDateOfBirth,
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.gray50,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: AppColors.border,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.calendar_today_outlined,
              color: AppColors.textSecondary,
              size: 20.sp,
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date de naissance',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    _selectedDateOfBirth != null
                        ? '${_selectedDateOfBirth!.day}/${_selectedDateOfBirth!.month}/${_selectedDateOfBirth!.year}'
                        : 'Sélectionner une date',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: _selectedDateOfBirth != null
                          ? AppColors.textPrimary
                          : AppColors.textSecondary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: AppColors.textSecondary,
              size: 20.sp,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGenderField() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.gray50,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: AppColors.border,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.person_outline,
                color: AppColors.textSecondary,
                size: 20.sp,
              ),
              SizedBox(width: 16.w),
              Text(
                'Genre',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: _buildGenderOption('Homme', 'male'),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: _buildGenderOption('Femme', 'female'),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: _buildGenderOption('Autre', 'other'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGenderOption(String label, String value) {
    final isSelected = _selectedGender == value;

    return GestureDetector(
      onTap: () => setState(() => _selectedGender = value),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.border,
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              color: isSelected ? AppColors.white : AppColors.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  String? _validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Ce champ est requis';
    }
    if (value.trim().length < 2) {
      return 'Minimum 2 caractères';
    }
    return null;
  }

  void _selectDateOfBirth() async {
    final date = await showDatePicker(
      context: context,
      initialDate: _selectedDateOfBirth ??
          DateTime.now().subtract(const Duration(days: 365 * 25)),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: AppColors.primary,
                ),
          ),
          child: child!,
        );
      },
    );

    if (date != null) {
      setState(() => _selectedDateOfBirth = date);
    }
  }

  void _editAvatar() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundLight,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.r),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40.w,
              height: 4.h,
              margin: EdgeInsets.only(top: 12.h),
              decoration: BoxDecoration(
                color: AppColors.gray300,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
            SizedBox(height: 20.h),
            ListTile(
              leading: const Icon(Icons.camera_alt_outlined),
              title: const Text('Prendre une photo'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Implémenter la prise de photo
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library_outlined),
              title: const Text('Choisir dans la galerie'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Implémenter la sélection depuis la galerie
              },
            ),
            if (ref.read(authProvider).user?.profile?.avatar != null)
              ListTile(
                leading:
                    const Icon(Icons.delete_outline, color: AppColors.error),
                title: const Text('Supprimer la photo',
                    style: TextStyle(color: AppColors.error)),
                onTap: () {
                  Navigator.pop(context);
                  // TODO: Implémenter la suppression de photo
                },
              ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  void _saveProfile() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      // TODO: Implémenter la sauvegarde du profil
      await Future.delayed(const Duration(seconds: 2)); // Simulation

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Profil mis à jour avec succès'),
            backgroundColor: AppColors.success,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        );
        context.pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur: ${e.toString()}'),
            backgroundColor: AppColors.error,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }
}
