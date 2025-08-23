import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ChangePasswordScreen extends ConsumerStatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  ConsumerState<ChangePasswordScreen> createState() =>
      _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends ConsumerState<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscureCurrent = true;
  bool _obscureNew = true;
  bool _obscureConfirm = true;

  @override
  void initState() {
    super.initState();
    // Écouteur pour mettre à jour la force du mot de passe en temps réel
    _newPasswordController.addListener(_updatePasswordStrength);
  }

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _newPasswordController
        .removeListener(_updatePasswordStrength); // Nettoyage de l'écouteur
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _changePassword() async {
    if (!_formKey.currentState!.validate()) return;

    if (_newPasswordController.text != _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Les nouveaux mots de passe ne correspondent pas')),
      );
      return;
    }

    final authNotifier = ref.read(authProvider.notifier);
    await authNotifier.updatePassword(
      currentPassword: _currentPasswordController.text,
      newPassword: _newPasswordController.text,
    );

    if (mounted) {
      final authState = ref.read(authProvider);
      if (authState.error != null) {
        _showErrorSnackBar('Erreur lors de la mise à jour');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Mot de passe mis à jour avec succès')),
        );
        Navigator.pop(context);
      }
    }
  }

  void _updatePasswordStrength() {
    setState(() {}); // Met à jour l'interface avec la nouvelle force
  }

  String _checkPasswordStrength(String password) {
    if (password.isEmpty) return 'Vide';
    if (password.length < 8) return 'Faible';
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasDigits = password.contains(RegExp(r'[0-9]'));
    bool hasSpecial = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    if (hasUppercase && hasDigits && hasSpecial) return 'Fort';
    if (hasUppercase || hasDigits || hasSpecial) return 'Moyen';
    return 'Faible';
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        ref.watch(authProvider.select((state) => state.isLoading));
    final newPasswordStrength =
        _checkPasswordStrength(_newPasswordController.text);

    return Scaffold(
      backgroundColor: AppColors.cardBackground,
      appBar: AppBar(
        title: Text('Changer le mot de passe',
            style: TextStyle(
                fontSize: 20.sp,
                // fontWeight: FontWeight.w50,
                color: AppColors.white)),
        backgroundColor: AppColors.primary,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.white, size: 20.sp),
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
                // SizedBox(height: 20.h),
                // Text(
                //   'Mettez à jour votre mot de passe',
                //   style: TextStyle(
                //     fontFamily: 'Poppins',
                //     fontSize: 28.sp,
                //     fontWeight: FontWeight.w600,
                //     color: AppColors.textPrimary,
                //   ),
                // ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.5, end: 0),
                SizedBox(height: 30.h),
                _buildSection('Changement de mot de passe', [
                  CustomTextField(
                    controller: _currentPasswordController,
                    label: 'Mot de passe actuel',
                    hintText: 'Entrez votre mot de passe actuel',
                    obscureText: _obscureCurrent,
                    prefixIcon: Icons.lock_outline,
                    suffixIcon: IconButton(
                      icon: Icon(
                          _obscureCurrent
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: AppColors.textSecondary),
                      onPressed: () =>
                          setState(() => _obscureCurrent = !_obscureCurrent),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez entrer votre mot de passe actuel';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _newPasswordController,
                    label: 'Nouveau mot de passe',
                    hintText: 'Entrez un nouveau mot de passe',
                    obscureText: _obscureNew,
                    prefixIcon: Icons.lock_outline,
                    suffixIcon: IconButton(
                      icon: Icon(
                          _obscureNew ? Icons.visibility_off : Icons.visibility,
                          color: AppColors.textSecondary),
                      onPressed: () =>
                          setState(() => _obscureNew = !_obscureNew),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez entrer un nouveau mot de passe';
                      }
                      if (value.length < 8) {
                        return 'Minimum 8 caractères';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  _buildPasswordStrengthIndicator(newPasswordStrength),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _confirmPasswordController,
                    label: 'Confirmer le mot de passe',
                    hintText: 'Confirmez votre nouveau mot de passe',
                    obscureText: _obscureConfirm,
                    prefixIcon: Icons.lock_outline,
                    suffixIcon: IconButton(
                      icon: Icon(
                          _obscureConfirm
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: AppColors.textSecondary),
                      onPressed: () =>
                          setState(() => _obscureConfirm = !_obscureConfirm),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez confirmer le mot de passe';
                      }
                      if (value != _newPasswordController.text) {
                        return 'Les mots de passe ne correspondent pas';
                      }
                      return null;
                    },
                  ),
                ]),
                SizedBox(height: 25.h),
                _buildSection('Conseils pour un mot de passe sécurisé', [
                  _buildTip('Utilisez au moins 8 caractères.'),
                  _buildTip('Incluez des majuscules (ex. A, B).'),
                  _buildTip('Ajoutez des chiffres (ex. 1, 2).'),
                  _buildTip(
                      'Incorporez des caractères spéciaux (ex. !, @, #).'),
                  _buildTip(
                      'Évitez d\'utiliser des informations personnelles (nom, date de naissance).'),
                ]),
                SizedBox(height: 30.h),
                CustomButton(
                  text: 'Enregistrer le mot de passe',
                  onPressed: _changePassword,
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
          padding: EdgeInsets.symmetric(vertical: 15.w, horizontal: 15.w),
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: AppColors.gray200),
            // boxShadow: [
            //   BoxShadow(
            //     color: AppColors.gray200.withOpacity(0.1),
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

  Widget _buildPasswordStrengthIndicator(String strength) {
    Color getColor(String strength) {
      switch (strength) {
        case 'Fort':
          return AppColors.success;
        case 'Moyen':
          return AppColors.warning;
        case 'Faible':
        case 'Vide':
        default:
          return AppColors.error;
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      decoration: BoxDecoration(
        color: getColor(strength).withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Icon(Icons.security, color: getColor(strength), size: 16.sp),
          SizedBox(width: 8.w),
          Text(
            'Sécurité : $strength',
            style: TextStyle(
              fontSize: 14.sp,
              color: getColor(strength),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTip(String tip) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        children: [
          Icon(Icons.check_circle_outline,
              color: AppColors.primaryLight, size: 16.sp),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              tip,
              style: TextStyle(fontSize: 14.sp, color: AppColors.textSecondary),
            ),
          ),
        ],
      ),
    );
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
