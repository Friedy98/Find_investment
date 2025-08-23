import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class KycStartPage extends ConsumerWidget {
  const KycStartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final user = authState.user;

    if (user == null) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.cardBackground,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: AppColors.textPrimary, size: 24.sp),
            onPressed: () => context.pop(),
          ),
          title: Text(
            'Commencer KYC',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_outline,
                  size: 80.sp,
                  color: AppColors.textTertiary,
                ).animate().fadeIn(),
                SizedBox(height: 16.h),
                Text(
                  'Connexion requise',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ).animate(delay: 100.ms).fadeIn(),
                SizedBox(height: 8.h),
                Text(
                  'Veuillez vous connecter pour commencer la vérification KYC.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textSecondary,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ).animate(delay: 200.ms).fadeIn(),
                SizedBox(height: 24.h),
                CustomButton(
                  text: 'Se connecter',
                  onPressed: () => context.push('/login'),
                  backgroundColor: AppColors.primary,
                  textColor: Colors.white,
                  height: 56.h,
                ).animate(delay: 300.ms).fadeIn().scale(),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.cardBackground,
        elevation: 0,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: AppColors.textPrimary, size: 24.sp),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Commencer KYC',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWelcomeCard(),
            SizedBox(height: 24.h),
            _buildRequiredDocuments(user.role ?? 'investor'),
            SizedBox(height: 24.h),
            _buildImportantNotes(),
            SizedBox(height: 40.h),
            CustomButton(
              text: 'Continuer vers le téléchargement',
              onPressed: () => context.push('/kyc/upload'),
              backgroundColor: AppColors.primary,
              textColor: Colors.white,
              height: 56.h,
              // icon: Icons.arrow_forward,
            ).animate(delay: 500.ms).fadeIn().scale(),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeCard() {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Icon(
              Icons.security,
              size: 40.sp,
              color: AppColors.primary,
            ),
          ).animate().fadeIn(),
          SizedBox(height: 16.h),
          Text(
            'Vérification KYC',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ).animate(delay: 100.ms).fadeIn(),
          SizedBox(height: 12.h),
          Text(
            'Complétez votre vérification d\'identité pour débloquer toutes les fonctionnalités et assurer des transactions sécurisées.',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ).animate(delay: 200.ms).fadeIn(),
        ],
      ),
    );
  }

  Widget _buildRequiredDocuments(String role) {
    final requiredDocs = _getRequiredDocuments(role);
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Documents requis',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ).animate(delay: 300.ms).fadeIn(),
          SizedBox(height: 16.h),
          ...requiredDocs.asMap().entries.map((entry) {
            final index = entry.key;
            final docType = entry.value;
            return Container(
              margin: EdgeInsets.only(bottom: 12.h),
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(12.r),
                border: Border(
                  left: BorderSide(
                    width: 4.w,
                    color: _getDocumentTypeColor(docType),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: _getDocumentTypeColor(docType).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Icon(
                      _getDocumentTypeIcon(docType),
                      size: 20.sp,
                      color: _getDocumentTypeColor(docType),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Text(
                      _getDocumentTypeName(docType),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            )
                .animate(delay: Duration(milliseconds: 400 + index * 100))
                .fadeIn()
                .slideX(begin: 0.3);
          }),
        ],
      ),
    );
  }

  Widget _buildImportantNotes() {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.warning.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.warning.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.info_outline,
                color: AppColors.warning,
                size: 24.sp,
              ),
              SizedBox(width: 12.w),
              Text(
                'Notes importantes',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.warning,
                ),
              ),
            ],
          ).animate(delay: 400.ms).fadeIn(),
          SizedBox(height: 12.h),
          _buildNoteItem('Fournissez des documents clairs et lisibles.'),
          _buildNoteItem('Assurez-vous que les informations sont à jour.'),
          _buildNoteItem('La vérification peut prendre jusqu\'à 48 heures.'),
        ],
      ),
    );
  }

  Widget _buildNoteItem(String note) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: AppColors.warning,
            size: 16.sp,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              note,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    ).animate(delay: 500.ms).fadeIn().slideY(begin: 0.3);
  }

  // Helper methods
  List<String> _getRequiredDocuments(String role) {
    switch (role.toLowerCase()) {
      case 'investor':
        return ['identity_card', 'utility_bill'];
      case 'project_owner':
        return ['identity_card', 'utility_bill', 'bank_statement'];
      case 'job_candidate':
        return ['identity_card', 'resume'];
      default:
        return [];
    }
  }

  Color _getDocumentTypeColor(String type) {
    switch (type.toLowerCase()) {
      case 'identity_card':
        return AppColors.primary;
      case 'passport':
        return AppColors.success;
      case 'driving_license':
        return AppColors.warning;
      case 'utility_bill':
        return AppColors.info;
      case 'bank_statement':
        return Colors.teal;
      case 'resume':
        return AppColors.accent;
      default:
        return AppColors.textSecondary;
    }
  }

  IconData _getDocumentTypeIcon(String type) {
    switch (type.toLowerCase()) {
      case 'identity_card':
        return Icons.credit_card;
      case 'passport':
        return Icons.book;
      case 'driving_license':
        return Icons.drive_eta;
      case 'utility_bill':
        return Icons.receipt;
      case 'bank_statement':
        return Icons.account_balance;
      case 'resume':
        return Icons.description;
      default:
        return Icons.file_copy;
    }
  }

  String _getDocumentTypeName(String type) {
    switch (type.toLowerCase()) {
      case 'identity_card':
        return 'Carte d\'identité';
      case 'passport':
        return 'Passeport';
      case 'driving_license':
        return 'Permis de conduire';
      case 'utility_bill':
        return 'Facture de services';
      case 'bank_statement':
        return 'Relevé bancaire';
      case 'resume':
        return 'CV';
      default:
        return type.replaceAll('_', ' ').toUpperCase();
    }
  }
}
