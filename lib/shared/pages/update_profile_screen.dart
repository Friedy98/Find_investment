import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class UpdateProfileScreen extends ConsumerStatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  ConsumerState<UpdateProfileScreen> createState() =>
      _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends ConsumerState<UpdateProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _bioController = TextEditingController();
  final _cityController = TextEditingController();
  final _countryController = TextEditingController();
  final _streetController = TextEditingController();
  final _regionController = TextEditingController();
  final _postalCodeController = TextEditingController();
  final _latitudeController = TextEditingController();
  final _longitudeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final user = ref.read(authProvider).user;
    if (user != null) {
      _firstNameController.text = user.firstName;
      _lastNameController.text = user.lastName ?? '';
      _emailController.text = user.email;
      _phoneController.text = user.phone ?? '';
      _bioController.text = user.bio ?? '';
      _cityController.text = user.location?.city ?? '';
      _countryController.text = user.location?.country ?? '';
      _streetController.text = user.location?.address?.street ?? '';
      _regionController.text = user.location?.address?.region ?? '';
      _postalCodeController.text = user.location?.address?.postalCode ?? '';
      _latitudeController.text =
          user.location?.address?.coordinates?.latitude?.toString() ?? '';
      _longitudeController.text =
          user.location?.address?.coordinates?.longitude?.toString() ?? '';
    }
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _bioController.dispose();
    _cityController.dispose();
    _countryController.dispose();
    _streetController.dispose();
    _regionController.dispose();
    _postalCodeController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
    super.dispose();
  }

  Future<void> _saveProfile() async {
    if (!_formKey.currentState!.validate()) return;

    final updateData = <String, dynamic>{};

    if (_firstNameController.text.trim().isNotEmpty) {
      updateData['firstName'] = _firstNameController.text.trim();
    }
    if (_lastNameController.text.trim().isNotEmpty) {
      updateData['lastName'] = _lastNameController.text.trim();
    }
    if (_emailController.text.trim().isNotEmpty) {
      updateData['email'] = _emailController.text.trim();
    }
    if (_phoneController.text.trim().isNotEmpty) {
      updateData['phone'] = _phoneController.text.trim();
    }
    if (_bioController.text.trim().isNotEmpty) {
      updateData['bio'] = _bioController.text.trim();
    }

    final location = <String, dynamic>{};
    if (_cityController.text.trim().isNotEmpty) {
      location['city'] = _cityController.text.trim();
    }
    if (_countryController.text.trim().isNotEmpty) {
      location['country'] = _countryController.text.trim();
    }
    final address = <String, dynamic>{};
    if (_streetController.text.trim().isNotEmpty) {
      address['street'] = _streetController.text.trim();
    }
    if (_regionController.text.trim().isNotEmpty) {
      address['region'] = _regionController.text.trim();
    }
    if (_postalCodeController.text.trim().isNotEmpty) {
      address['postalCode'] = _postalCodeController.text.trim();
    }
    final coordinates = <String, dynamic>{};
    final lat = double.tryParse(_latitudeController.text.trim());
    final lon = double.tryParse(_longitudeController.text.trim());
    if (lat != null) coordinates['latitude'] = lat;
    if (lon != null) coordinates['longitude'] = lon;
    if (coordinates.isNotEmpty) address['coordinates'] = coordinates;
    if (address.isNotEmpty) location['address'] = address;
    if (location.isNotEmpty) updateData['location'] = location;

    if (updateData.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Aucune modification à enregistrer')),
      );
      return;
    }

    final authNotifier = ref.read(authProvider.notifier);
    await authNotifier.updateProfile(
      firstName: updateData['firstName'],
      lastName: updateData['lastName'],
      email: updateData['email'],
      phone: updateData['phone'],
      bio: updateData['bio'],
      location: updateData['location'],
    );

    if (mounted) {
      final authState = ref.read(authProvider);
      if (authState.error != null) {
        _showErrorSnackBar('Erreur lors de la mise à jour');
      } else {
        context.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        ref.watch(authProvider.select((state) => state.isLoading));

    return Scaffold(
      backgroundColor: AppColors.cardBackground,
      appBar: AppBar(
        title: Text('Modifier le profil',
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.background)),
        backgroundColor: AppColors.primary,
        elevation: 0,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: AppColors.background, size: 20.sp),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline,
                color: AppColors.background, size: 20.sp),
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text(
                      'Aide : Remplissez les champs pour mettre à jour votre profil.')),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30.h),
                _buildSection('Informations personnelles', [
                  CustomTextField(
                    controller: _firstNameController,
                    label: 'Prénom',
                    hintText: 'Ex. Jean',
                    prefixIcon: Icons.person_outline,
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      if (value.length < 2 || value.length > 50) {
                        return 'Doit contenir entre 2 et 50 caractères';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _lastNameController,
                    label: 'Nom',
                    hintText: 'Ex. Dupont',
                    prefixIcon: Icons.person_outline,
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      if (value.length < 2 || value.length > 50) {
                        return 'Doit contenir entre 2 et 50 caractères';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _emailController,
                    label: 'Email',
                    hintText: 'Ex. jean.dupont@email.com',
                    prefixIcon: Icons.email_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return 'Email invalide';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _phoneController,
                    label: 'Téléphone',
                    hintText: 'Ex. +33612345678',
                    prefixIcon: Icons.phone_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      // Validation simple pour mobile phone (à améliorer selon 'validator')
                      // if (!RegExp(r'^\+?[1-9]\d{9,14}$').hasMatch(value)) {
                      //   return 'Numéro de téléphone invalide';
                      // }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _bioController,
                    label: 'Bio',
                    hintText: 'Décrivez-vous (max 500 caractères)',
                    prefixIcon: Icons.description_outlined,
                    maxLines: 3,
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      if (value.length > 500) return 'Maximum 500 caractères';
                      return null;
                    },
                  ),
                ]),
                SizedBox(height: 25.h),
                _buildSection('Localisation', [
                  CustomTextField(
                    controller: _cityController,
                    label: 'Ville',
                    hintText: 'Ex. Paris',
                    prefixIcon: Icons.location_city_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      if (value.length > 100) return 'Maximum 100 caractères';
                      return null;
                    },
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _countryController,
                    label: 'Pays',
                    hintText: 'Ex. France',
                    prefixIcon: Icons.flag_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      if (value.length > 100) return 'Maximum 100 caractères';
                      return null;
                    },
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _streetController,
                    label: 'Rue',
                    hintText: 'Ex. 123 Rue Exemple',
                    prefixIcon: Icons.location_on_outlined,
                    validator: (value) =>
                        value == null || value.isEmpty ? null : null,
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _regionController,
                    label: 'Région',
                    hintText: 'Ex. Île-de-France',
                    prefixIcon: Icons.map_outlined,
                    validator: (value) =>
                        value == null || value.isEmpty ? null : null,
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _postalCodeController,
                    label: 'Code postal',
                    hintText: 'Ex. 75001',
                    prefixIcon: Icons.local_post_office_outlined,
                    validator: (value) =>
                        value == null || value.isEmpty ? null : null,
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: _latitudeController,
                          label: 'Latitude',
                          hintText: 'Ex. 48.8566',
                          prefixIcon: Icons.pin_drop_outlined,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) return null;
                            final num = double.tryParse(value);
                            if (num == null || num < -90 || num > 90) {
                              return 'Doit être entre -90 et 90';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: CustomTextField(
                          controller: _longitudeController,
                          label: 'Longitude',
                          hintText: 'Ex. 2.3522',
                          prefixIcon: Icons.pin_drop_outlined,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) return null;
                            final num = double.tryParse(value);
                            if (num == null || num < -180 || num > 180) {
                              return 'Doit être entre -180 et 180';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ]),
                SizedBox(height: 30.h),
                CustomButton(
                  text: 'Enregistrer les modifications',
                  onPressed: _saveProfile,
                  isLoading: isLoading,
                  // gradient: const LinearGradient(
                  //   colors: [AppColors.primary, AppColors.primaryLight],
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  // ),
                )
                    .animate()
                    .scale(duration: 500.ms, curve: Curves.easeOut)
                    .then() // Add a slight delay
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

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.error,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}
