import 'dart:io';

import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/providers/questionnaire_provider.dart';
import 'package:find_invest_mobile/shared/widgets/profile_avatar.dart';
import 'package:find_invest_mobile/shared/widgets/profile_info_card.dart';
import 'package:find_invest_mobile/shared/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/theme/app_colors.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(authProvider.notifier).getUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final user = authState.user;
    final avatarUploadState = ref.watch(authProvider);

    if (user == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: CustomScrollView(
        slivers: [
          // App Bar avec avatar
          SliverAppBar(
            expandedHeight: 340.h,
            floating: false,
            pinned: true,
            backgroundColor: AppColors.primary,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.primary,
                      AppColors.primaryDark,
                    ],
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 40.h),
                      // Avatar avec indicateur de chargement
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ProfileAvatar(
                            imageUrl: user.avatar?.url,
                            name: '${user.firstName} ${user.lastName}',
                            size: 100.w,
                            showEditButton: !avatarUploadState.isLoading,
                            onEditTap: () => _editAvatar(context),
                          ),
                          if (avatarUploadState.isLoading)
                            Container(
                              width: 100.w,
                              height: 100.w,
                              decoration: const BoxDecoration(
                                color: Colors.black26,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      // Nom
                      Text(
                        '${user.firstName} ${user.lastName}',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      // Email
                      Text(
                        user.email,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.white.withOpacity(0.8),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      // Badge de rôle
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 6.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Text(
                          _getRoleDisplayName(user.role),
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () => _showSettingsMenu(context),
                icon: const Icon(
                  Icons.more_vert,
                  color: AppColors.white,
                ),
              ),
            ],
            leading: IconButton(
              icon: Icon(Icons.arrow_back, size: 24.sp, color: AppColors.white),
              onPressed: () {
                context.go('/project-owner/home');
              },
            ),
          ),

          // Contenu
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Informations personnelles
                  _buildSection(
                    context,
                    title: 'Informations personnelles',
                    child: Column(
                      children: [
                        ProfileInfoCard(
                          icon: Icons.person_outline,
                          title: 'Nom complet',
                          value: '${user.firstName} ${user.lastName}',
                          onTap: () => _editProfile(context),
                        ),
                        SizedBox(height: 12.h),
                        ProfileInfoCard(
                          icon: Icons.email_outlined,
                          title: 'Email',
                          value: user.email,
                          trailing: user.emailVerified == true
                              ? Icon(
                                  Icons.verified,
                                  color: AppColors.success,
                                  size: 20.sp,
                                )
                              : Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.w,
                                    vertical: 4.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.warningContainer,
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Text(
                                    'Non vérifié',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: AppColors.warning,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                          onTap: () => _verifyEmail(context),
                        ),
                        if (user.phone != null) ...[
                          SizedBox(height: 12.h),
                          ProfileInfoCard(
                            icon: Icons.phone_outlined,
                            title: 'Téléphone',
                            value: user.phone!,
                            trailing: user.phoneVerified == true
                                ? Icon(
                                    Icons.verified,
                                    color: AppColors.success,
                                    size: 20.sp,
                                  )
                                : Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.w,
                                      vertical: 4.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.warningContainer,
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Text(
                                      'Non vérifié',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        color: AppColors.warning,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                            onTap: () => _verifyPhone(context),
                          ),
                        ],
                        if (user.bio != null) ...[
                          SizedBox(height: 12.h),
                          ProfileInfoCard(
                            icon: Icons.description_outlined,
                            title: 'Bio',
                            value: user.bio!,
                            onTap: () => _editProfile(context),
                          ),
                        ],
                        if (user.location != null) ...[
                          SizedBox(height: 12.h),
                          ProfileInfoCard(
                            icon: Icons.location_on_outlined,
                            title: 'Localisation',
                            value:
                                '${user.location?.city ?? ''}, ${user.location?.country ?? ''}',
                            onTap: () => _editProfile(context),
                          ),
                        ],
                      ],
                    ),
                  ),

                  SizedBox(height: 32.h),

                  // Profil spécifique (investisseur ou porteur de projet)
                  if (user.role == 'investor' && user.investorProfile != null)
                    _buildSection(
                      context,
                      title: 'Profil Investisseur',
                      child: Column(
                        children: [
                          ProfileInfoCard(
                            icon: Icons.trending_up,
                            title: 'Tolérance au risque',
                            value: _getRiskToleranceText(
                                user.investorProfile!.riskTolerance),
                            onTap: () => _editInvestorProfile(context),
                          ),
                          SizedBox(height: 12.h),
                          ProfileInfoCard(
                            icon: Icons.attach_money,
                            title: 'Investissements totaux',
                            value:
                                '${user.investorProfile!.totalInvested ?? 0} €',
                          ),
                          SizedBox(height: 12.h),
                          ProfileInfoCard(
                            icon: Icons.business_center,
                            title: 'Investissements actifs',
                            value: user.investorProfile!.activeInvestments
                                .toString(),
                          ),
                          if (user.investorProfile!.investmentPreferences !=
                              null) ...[
                            SizedBox(height: 12.h),
                            ProfileInfoCard(
                              icon: Icons.category,
                              title: 'Secteurs préférés',
                              value: user.investorProfile!
                                      .investmentPreferences!.sectors
                                      ?.join(', ') ??
                                  'Aucun',
                              onTap: () => _editInvestorProfile(context),
                            ),
                          ],
                        ],
                      ),
                    ),

                  if (user.role == 'project_owner' &&
                      user.projectOwnerProfile != null)
                    _buildSection(
                      context,
                      title: 'Profil Porteur de Projet',
                      child: Column(
                        children: [
                          if (user.projectOwnerProfile!.company != null) ...[
                            ProfileInfoCard(
                              icon: Icons.business,
                              title: 'Entreprise',
                              value: user.projectOwnerProfile!.company!.name ??
                                  'Non spécifié',
                              onTap: () => _editProjectOwnerProfile(context),
                            ),
                            SizedBox(height: 12.h),
                          ],
                          ProfileInfoCard(
                            icon: Icons.star_outline,
                            title: 'Compétences',
                            value:
                                user.projectOwnerProfile!.skills?.join(', ') ??
                                    'Aucune',
                            onTap: () => _editProjectOwnerProfile(context),
                          ),
                          SizedBox(height: 12.h),
                          ProfileInfoCard(
                            icon: Icons.work_outline,
                            title: 'Expérience',
                            value: user.projectOwnerProfile!.experience ??
                                'Non spécifiée',
                            onTap: () => _editProjectOwnerProfile(context),
                          ),
                          SizedBox(height: 12.h),
                          ProfileInfoCard(
                            icon: Icons.folder_open,
                            title: 'Projets créés',
                            value: user
                                .projectOwnerProfile!.totalProjectsCreated
                                .toString(),
                          ),
                          SizedBox(height: 12.h),
                          ProfileInfoCard(
                            icon: Icons.check_circle_outline,
                            title: 'Projets réussis',
                            value: user.projectOwnerProfile!.successfulProjects
                                .toString(),
                          ),
                        ],
                      ),
                    ),

                  SizedBox(height: 32.h),

                  // Statut et vérifications
                  _buildSection(
                    context,
                    title: 'Statut du compte',
                    child: Column(
                      children: [
                        ProfileInfoCard(
                          icon: Icons.security,
                          title: 'Authentification à deux facteurs',
                          value: user.twoFactorEnabled == true
                              ? 'Activée'
                              : 'Désactivée',
                          valueColor: user.twoFactorEnabled == true
                              ? AppColors.success
                              : AppColors.warning,
                          onTap: () => _manageSecurity(context),
                        ),
                        SizedBox(height: 12.h),
                        ProfileInfoCard(
                          icon: Icons.access_time,
                          title: 'Dernière connexion',
                          value: user.lastLogin != null
                              ? _formatDate(user.lastLogin!)
                              : 'Jamais',
                        ),
                        SizedBox(height: 12.h),
                        ProfileInfoCard(
                          icon: Icons.timelapse,
                          title: 'Dernière activité',
                          value: user.lastActivity != null
                              ? _formatDate(user.lastActivity!)
                              : 'Inconnue',
                        ),
                        SizedBox(height: 12.h),
                        // ProfileInfoCard(
                        //   icon: Icons.history,
                        //   title: 'Historique des connexions',
                        //   value: '${user.loginHistory?.length ?? 0} entrées',
                        //   onTap: () => _viewLoginHistory(context),
                        // ),
                        SizedBox(height: 12.h),
                        ProfileInfoCard(
                          icon: Icons.calendar_today_outlined,
                          title: 'Membre depuis',
                          value: user.createdAt != null
                              ? _formatDate(user.createdAt!)
                              : 'Inconnu',
                        ),
                        if (user.suspended == true) ...[
                          SizedBox(height: 12.h),
                          ProfileInfoCard(
                            icon: Icons.block,
                            title: 'Compte suspendu',
                            value: user.suspensionReason ?? 'Raison inconnue',
                            valueColor: AppColors.error,
                          ),
                        ],
                      ],
                    ),
                  ),

                  SizedBox(height: 32.h),

                  // Préférences
                  _buildSection(
                    context,
                    title: 'Préférences',
                    child: Column(
                      children: [
                        ProfileInfoCard(
                          icon: Icons.language,
                          title: 'Langue',
                          value: _getLanguageText(user.preferences?.language),
                          onTap: () => _editPreferences(context),
                        ),
                        SizedBox(height: 12.h),
                        ProfileInfoCard(
                          icon: Icons.access_time_outlined,
                          title: 'Fuseau horaire',
                          value: user.preferences?.timezone ?? 'Non défini',
                          onTap: () => _editPreferences(context),
                        ),
                        SizedBox(height: 12.h),
                        ProfileInfoCard(
                          icon: Icons.notifications_none,
                          title: 'Notifications',
                          value: 'Gérer les paramètres',
                          onTap: () => _manageNotifications(context),
                        ),
                        SizedBox(height: 12.h),
                        ProfileInfoCard(
                          icon: Icons.visibility_outlined,
                          title: 'Visibilité du profil',
                          value: _getProfileVisibilityText(
                              user.preferences?.privacy?.profileVisibility),
                          onTap: () => _managePrivacy(context),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 32.h),

                  // Liens sociaux
                  if (user.socialLinks != null &&
                      _hasSocialLinks(user.socialLinks!))
                    _buildSection(
                      context,
                      title: 'Liens sociaux',
                      child: Column(
                        children: [
                          if (user.socialLinks!.linkedin != null)
                            ProfileInfoCard(
                              icon: Icons.link,
                              title: 'LinkedIn',
                              value: user.socialLinks!.linkedin!,
                              onTap: () =>
                                  _openLink(user.socialLinks!.linkedin!),
                            ),
                          if (user.socialLinks!.twitter != null) ...[
                            SizedBox(height: 12.h),
                            ProfileInfoCard(
                              icon: Icons.link,
                              title: 'Twitter',
                              value: user.socialLinks!.twitter!,
                              onTap: () =>
                                  _openLink(user.socialLinks!.twitter!),
                            ),
                          ],
                          if (user.socialLinks!.facebook != null) ...[
                            SizedBox(height: 12.h),
                            ProfileInfoCard(
                              icon: Icons.link,
                              title: 'Facebook',
                              value: user.socialLinks!.facebook!,
                              onTap: () =>
                                  _openLink(user.socialLinks!.facebook!),
                            ),
                          ],
                          if (user.socialLinks!.github != null) ...[
                            SizedBox(height: 12.h),
                            ProfileInfoCard(
                              icon: Icons.link,
                              title: 'GitHub',
                              value: user.socialLinks!.github!,
                              onTap: () => _openLink(user.socialLinks!.github!),
                            ),
                          ],
                          if (user.socialLinks!.website != null) ...[
                            SizedBox(height: 12.h),
                            ProfileInfoCard(
                              icon: Icons.link,
                              title: 'Site web',
                              value: user.socialLinks!.website!,
                              onTap: () =>
                                  _openLink(user.socialLinks!.website!),
                            ),
                          ],
                        ],
                      ),
                    ),

                  if (user.socialLinks != null &&
                      _hasSocialLinks(user.socialLinks!))
                    SizedBox(height: 32.h),

                  if (user.oauth != null && _hasOauth(user.oauth!))
                    SizedBox(height: 32.h),

                  // Connexions sociales
                  if (user.oauth != null && _hasOauth(user.oauth!))
                    _buildSection(
                      context,
                      title: 'Connexions sociales',
                      child: Column(
                        children: [
                          if (user.oauth!.google != null)
                            ProfileInfoCard(
                              icon: Icons.g_translate,
                              title: 'Google',
                              value: user.oauth!.google!.email ?? 'Connecté',
                            ),
                          if (user.oauth!.facebook != null) ...[
                            SizedBox(height: 12.h),
                            ProfileInfoCard(
                              icon: Icons.facebook,
                              title: 'Facebook',
                              value: user.oauth!.facebook!.email ?? 'Connecté',
                            ),
                          ],
                        ],
                      ),
                    ),

                  if (user.oauth != null && _hasOauth(user.oauth!))
                    SizedBox(height: 32.h),

                  // Mentions légales
                  _buildSection(
                    context,
                    title: 'Mentions légales',
                    child: Column(
                      children: [
                        ProfileInfoCard(
                          icon: Icons.assignment_turned_in_outlined,
                          title: 'Conditions générales acceptées',
                          value: user.termsAccepted == true ? 'Oui' : 'Non',
                          valueColor: user.termsAccepted == true
                              ? AppColors.success
                              : AppColors.warning,
                          onTap: () => _viewTerms(context),
                        ),
                        SizedBox(height: 12.h),
                        ProfileInfoCard(
                          icon: Icons.policy_outlined,
                          title: 'Politique de confidentialité acceptée',
                          value: user.privacyPolicyAccepted == true
                              ? 'Oui'
                              : 'Non',
                          valueColor: user.privacyPolicyAccepted == true
                              ? AppColors.success
                              : AppColors.warning,
                          onTap: () => _viewPrivacyPolicy(context),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 32.h),

                  // Actions
                  _buildSection(
                    context,
                    title: 'Actions',
                    child: Column(
                      children: [
                        ProfileMenuItem(
                          icon: Icons.edit_outlined,
                          title: 'Modifier le profil',
                          subtitle: 'Mettre à jour vos informations',
                          onTap: () => _editProfile(context),
                        ),
                        SizedBox(height: 8.h),
                        ProfileMenuItem(
                          icon: Icons.lock_outline,
                          title: 'Changer le mot de passe',
                          subtitle: 'Sécuriser votre compte',
                          onTap: () => context.push('/change-password'),
                        ),
                        SizedBox(height: 8.h),
                        ProfileMenuItem(
                          icon: Icons.security,
                          title: 'Sécurité',
                          subtitle: 'Gérer 2FA et connexions',
                          onTap: () => _manageSecurity(context),
                        ),
                        SizedBox(height: 8.h),
                        ProfileMenuItem(
                          icon: Icons.notifications_outlined,
                          title: 'Notifications',
                          subtitle: 'Gérer vos préférences',
                          onTap: () => _manageNotifications(context),
                        ),
                        SizedBox(height: 8.h),
                        ProfileMenuItem(
                          icon: Icons.privacy_tip_outlined,
                          title: 'Confidentialité',
                          subtitle: 'Contrôler vos données',
                          onTap: () => _managePrivacy(context),
                        ),
                        SizedBox(height: 8.h),
                        ProfileMenuItem(
                          icon: Icons.link,
                          title: 'Liens sociaux',
                          subtitle: 'Ajouter ou modifier vos liens',
                          onTap: () => _editSocialLinks(context),
                        ),
                        SizedBox(height: 8.h),
                        ProfileMenuItem(
                          icon: Icons.psychology_outlined,
                          title: 'Questionnaire',
                          subtitle: 'Voir les résultats du questionnaire',
                          onTap: () => _viewQuestionnaire(context),
                        ),
                        SizedBox(height: 8.h),
                        ProfileMenuItem(
                          icon: Icons.verified_user_outlined,
                          title: 'Statut KYC',
                          subtitle:
                              'Consulter l\'état de votre vérification KYC',
                          onTap: () => context.push('/kyc/dashboard'),
                        ),
                        SizedBox(height: 8.h),
                        ProfileMenuItem(
                          icon: Icons.help_outline,
                          title: 'Aide et support',
                          subtitle: 'Obtenir de l\'aide',
                          onTap: () => _getHelp(context),
                        ),
                        SizedBox(height: 16.h),
                        ProfileMenuItem(
                          icon: Icons.logout,
                          title: 'Se déconnecter',
                          subtitle: 'Quitter l\'application',
                          iconColor: AppColors.error,
                          titleColor: AppColors.error,
                          onTap: () => _logout(context, ref),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 16.h),
        child,
      ],
    );
  }

  String _getRoleDisplayName(String role) {
    switch (role.toLowerCase()) {
      case 'investor':
        return 'Investisseur';
      case 'project_owner':
        return 'Porteur de projet';
      case 'job_candidate':
        return 'Candidat à l\'emploi';
      case 'admin':
        return 'Administrateur';
      case 'moderator':
        return 'Modérateur';
      case 'user':
        return 'Utilisateur';
      default:
        return role.capitalize();
    }
  }

  String _getRiskToleranceText(String? tolerance) {
    switch (tolerance?.toLowerCase()) {
      case 'low':
        return 'Faible';
      case 'medium':
        return 'Moyen';
      case 'high':
        return 'Élevé';
      default:
        return 'Non spécifié';
    }
  }

  String _getProfileVisibilityText(String? visibility) {
    switch (visibility?.toLowerCase()) {
      case 'public':
        return 'Public';
      case 'members_only':
        return 'Membres seulement';
      case 'private':
        return 'Privé';
      default:
        return 'Non spécifié';
    }
  }

  String _getLanguageText(String? language) {
    switch (language?.toLowerCase()) {
      case 'fr':
        return 'Français';
      case 'en':
        return 'English';
      default:
        return 'Non spécifié';
    }
  }

  bool _hasSocialLinks(SocialLinks links) {
    return links.linkedin != null ||
        links.twitter != null ||
        links.facebook != null ||
        links.github != null ||
        links.website != null;
  }

  bool _hasOauth(OAuth oauth) {
    return oauth.google != null || oauth.facebook != null;
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays == 0) {
      return 'Aujourd\'hui à ${DateFormat('HH:mm').format(date)}';
    } else if (difference.inDays == 1) {
      return 'Hier à ${DateFormat('HH:mm').format(date)}';
    } else if (difference.inDays < 7) {
      return 'Il y a ${difference.inDays} jours';
    } else {
      return DateFormat('dd/MM/yyyy').format(date);
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? image = await _picker.pickImage(source: source);
      if (image != null) {
        final file = await MultipartFile.fromFile(File(image.path).path,
            filename: image.name);
        ref.read(authProvider.notifier).updateAvatar(file);
      }
    } catch (e) {
      _showErrorSnackBar('Erreur lors de la sélection de l\'image: $e');
    }
  }

  Future<void> _viewQuestionnaire(BuildContext context) async {
    try {
      // Récupérer le questionnaire actif
      await ref
          .read(questionnaireProvider.notifier)
          .fetchActiveQuestionnaireForMyRole();
      if (!context.mounted) return;

      final questionnaire = ref.read(questionnaireProvider).activeQuestionnaire;

      if (questionnaire == null) {
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            title: const Text('Aucun questionnaire disponible'),
            content: const Text(
              'Aucun questionnaire actif n\'est disponible pour votre rôle. Veuillez réessayer plus tard.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
        return;
      }

      // Vérifier si une soumission existe
      await ref
          .read(questionnaireProvider.notifier)
          .fetchMySubmission(questionnaire.id);
      if (!context.mounted) return;

      final submission = ref.read(questionnaireProvider).currentSubmission;

      if (submission != null && submission.submittedAt != null) {
        // Soumission existante : rediriger vers les résultats
        context.push('/questionnaire/${questionnaire.id}/result');
      } else {
        // Pas de soumission : rediriger vers l'aperçu du questionnaire
        context.push('/questionnaire');
      }
    } catch (e) {
      if (mounted) {
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            title: const Text('Erreur'),
            content: Text(
              'Une erreur s\'est produite lors de la vérification du questionnaire : $e',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  Widget _buildUploadOption(String title, IconData icon, VoidCallback onTap) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          onTap();
        },
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.gray200),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  icon,
                  color: AppColors.primary,
                  size: 20.sp,
                ),
              ),
              SizedBox(width: 16.w),
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _editAvatar(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.cardBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) => Container(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.textTertiary,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Télécharger une image',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 20.h),
            _buildUploadOption(
              'Prendre une photo',
              Icons.camera_alt,
              () => _pickImage(ImageSource.camera),
            ),
            _buildUploadOption(
              'Choisir depuis la galerie',
              Icons.photo_library,
              () => _pickImage(ImageSource.gallery),
            ),
            // SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  void _editProfile(BuildContext context) {
    context.push('/project-owner/update-profile');
  }

  void _verifyEmail(BuildContext context) {
    if (ref.read(authProvider).user?.emailVerified != true) {
      ref
          .read(authProvider.notifier)
          .requestOtp(ref.read(authProvider).user!.email, 'email');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Code de vérification envoyé par email')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Email déjà vérifié')),
      );
    }
  }

  void _verifyPhone(BuildContext context) {
    if (ref.read(authProvider).user?.phoneVerified != true &&
        ref.read(authProvider).user?.phone != null) {
      ref.read(authProvider.notifier).sendPhoneVerification('sms');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Code de vérification envoyé par SMS')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Téléphone déjà vérifié ou non défini')),
      );
    }
  }

  void _manageNotifications(BuildContext context) {
    context.push('/profile/notifications');
  }

  void _managePrivacy(BuildContext context) {
    context.push('/profile/privacy');
  }

  void _getHelp(BuildContext context) {
    context.push('/help');
  }

  void _showSettingsMenu(BuildContext context) {
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
              leading: const Icon(Icons.share_outlined),
              title: const Text('Partager le profil'),
              onTap: () {
                Navigator.pop(context);
                _shareProfile();
              },
            ),
            ListTile(
              leading: const Icon(Icons.qr_code),
              title: const Text('Code QR'),
              onTap: () {
                Navigator.pop(context);
                _showQrCode(context);
              },
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  void _logout(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        title: const Text('Se déconnecter'),
        content: const Text('Êtes-vous sûr de vouloir vous déconnecter ?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annuler'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ref.read(authProvider.notifier).logout();
              context.go('/login');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
              foregroundColor: AppColors.white,
            ),
            child: const Text('Se déconnecter'),
          ),
        ],
      ),
    );
  }

  void _manageSecurity(BuildContext context) {
    context.push('/profile/security');
  }

  void _editInvestorProfile(BuildContext context) {
    context.push('/profile/investor-edit');
  }

  void _editProjectOwnerProfile(BuildContext context) {
    context.push('/profile/project-owner-edit');
  }

  void _openLink(String url) async {
    final Uri urlFinal = Uri.parse(url);
    if (!await launchUrl(urlFinal)) {
      throw Exception('Could not launch $urlFinal');
    }
    ;
  }

  void _editPreferences(BuildContext context) {
    context.push('/profile/preferences');
  }

  void _editSocialLinks(BuildContext context) {
    context.push('/profile/social-links');
  }

  void _viewTerms(BuildContext context) {
    context.push('/terms-conditions');
  }

  void _viewPrivacyPolicy(BuildContext context) {
    context.push('/privacy-policy');
  }

  void _shareProfile() {
    // TODO: Implémenter le partage avec share_plus
    // Share.share('Mon profil sur Find Invest: [lien]');
  }

  void _showQrCode(BuildContext context) {
    // TODO: Générer et afficher un QR code avec qr_flutter
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Code QR de mon profil'),
        content: Container(
          width: 200.w,
          height: 200.h,
          color: Colors.white,
          // Placeholder for QR code
          child: const Center(child: Text('QR Code Here')),
        ),
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

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
