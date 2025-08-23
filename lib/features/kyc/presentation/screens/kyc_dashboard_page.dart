import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/kyc/domain/entities/kyc_entity.dart';
import 'package:find_invest_mobile/features/kyc/presentation/providers/kyc_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class KycDashboardPage extends ConsumerStatefulWidget {
  const KycDashboardPage({super.key});

  @override
  ConsumerState<KycDashboardPage> createState() => _KycDashboardPageState();
}

class _KycDashboardPageState extends ConsumerState<KycDashboardPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = ref.read(authProvider).user;
      if (user != null && mounted) {
        ref.read(kycProvider.notifier).fetchKYC(user.id).catchError((e) {
          if (mounted) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                title: const Text('Erreur'),
                content: Text(
                  'Erreur lors du chargement des données KYC : $e',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
                actions: [
                  CustomButton(
                    text: 'Réessayer',
                    onPressed: () {
                      Navigator.pop(context);
                      ref.read(kycProvider.notifier).fetchKYC(user.id);
                    },
                    backgroundColor: AppColors.primary,
                    textColor: Colors.white,
                    height: 48.h,
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Annuler'),
                  ),
                ],
              ),
            );
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final kycState = ref.watch(kycProvider);
    final authState = ref.watch(authProvider);
    final user = authState.user;

    if (user == null) {
      return Scaffold(
        backgroundColor: AppColors.background,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200.h,
              floating: false,
              pinned: true,
              leading: Padding(
                padding: const EdgeInsets.only(bottom: 11, left: 10),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => context.pop(),
                ),
              ),
              backgroundColor: AppColors.primary,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'Vérification KYC',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                background: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.primary,
                        AppColors.primaryLight,
                      ],
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.security,
                      size: 80.sp,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.lock_outline,
                        size: 80.sp,
                        color: AppColors.textTertiary,
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'Connexion requise',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Veuillez vous connecter pour accéder à la vérification KYC.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          color: AppColors.textSecondary,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 24.h),
                      CustomButton(
                        text: 'Se connecter',
                        onPressed: () => context.push('/login'),
                        backgroundColor: AppColors.primary,
                        textColor: Colors.white,
                        height: 56.h,
                      ).animate().fadeIn().scale(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      body: LoadingOverlay(
        isLoading: kycState.isLoading,
        message: 'Chargement des données KYC...',
        child: CustomScrollView(
          slivers: [
            // App Bar
            SliverAppBar(
              expandedHeight: 200.h,
              floating: false,
              pinned: true,
              leading: Padding(
                padding: const EdgeInsets.only(bottom: 11, left: 10),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => context.pop(),
                ),
              ),
              backgroundColor: AppColors.primary,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'Vérification KYC',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                background: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.primary,
                        AppColors.primaryLight,
                      ],
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.security,
                      size: 80.sp,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
              actions: [
                if (kycState.selectedKyc?.status == 'approved')
                  Padding(
                    padding: EdgeInsets.only(right: 16.w),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                      decoration: BoxDecoration(
                        color: AppColors.success.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.verified,
                              size: 16.sp, color: AppColors.success),
                          SizedBox(width: 4.w),
                          Text(
                            'Vérifié',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.success,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),

            // Content
            if (kycState.errorMessage != null)
              SliverFillRemaining(
                child: _buildErrorState(kycState.errorMessage!),
              )
            else if (kycState.selectedKyc == null)
              SliverToBoxAdapter(
                child: _buildGetStartedCard(),
              )
            else
              SliverToBoxAdapter(
                child: _buildKycContent(kycState.selectedKyc!),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildKycContent(KycEntity kyc) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildStatusCard(kyc),
          SizedBox(height: 24.h),
          _buildProgressCard(kyc),
          SizedBox(height: 24.h),
          _buildDocumentsSection(kyc),
          SizedBox(height: 24.h),
          _buildVerificationDetails(kyc),
          if (kyc.auditLog.isNotEmpty) ...[
            SizedBox(height: 24.h),
            _buildAuditLogSection(kyc),
          ],
          SizedBox(height: 40.h),
          if (_buildFloatingActionButton(kyc) != null)
            SizedBox(
              width: double.infinity,
              child: _buildFloatingActionButton(kyc),
            ).animate(delay: 900.ms).fadeIn().scale(),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget _buildStatusCard(KycEntity? kyc) {
    Color statusColor;
    String statusText;
    IconData statusIcon;
    String statusDescription;

    switch (kyc?.status) {
      case 'approved':
        statusColor = AppColors.success;
        statusText = 'Vérifié';
        statusIcon = Icons.verified;
        statusDescription = 'Votre identité a été vérifiée avec succès.';
        break;
      case 'pending':
      case 'under_review':
        statusColor = AppColors.info;
        statusText = 'En cours de vérification';
        statusIcon = Icons.hourglass_empty;
        statusDescription =
            'Vos documents sont en cours de vérification par notre équipe.';
        break;
      case 'rejected':
        statusColor = AppColors.error;
        statusText = 'Rejeté';
        statusIcon = Icons.cancel;
        statusDescription =
            kyc?.rejectionReason ?? 'Votre demande KYC a été rejetée.';
        break;
      case 'expired':
        statusColor = AppColors.warning;
        statusText = 'Expiré';
        statusIcon = Icons.timer_off;
        statusDescription =
            'Votre vérification KYC a expiré. Veuillez soumettre à nouveau.';
        break;
      case 'not_submitted':
      default:
        statusColor = AppColors.warning;
        statusText = 'Non commencé';
        statusIcon = Icons.warning;
        statusDescription =
            'Vous n\'avez pas encore commencé votre vérification KYC.';
        break;
    }

    return Container(
      width: double.infinity,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 48.w,
                height: 48.w,
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(
                  statusIcon,
                  color: statusColor,
                  size: 24.sp,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Statut KYC',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    Text(
                      statusText,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: statusColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            statusDescription,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
          ),
          if (kyc?.submittedAt != null) ...[
            SizedBox(height: 12.h),
            Text(
              'Soumis le : ${_formatDate(kyc!.submittedAt!)}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.textTertiary,
              ),
            ),
          ],
          if (kyc?.approvedAt != null) ...[
            SizedBox(height: 4.h),
            Text(
              'Approuvé le : ${_formatDate(kyc!.approvedAt!)}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.success,
              ),
            ),
          ],
          if (kyc?.rejectedAt != null) ...[
            SizedBox(height: 4.h),
            Text(
              'Rejeté le : ${_formatDate(kyc!.rejectedAt!)}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.error,
              ),
            ),
          ],
          if (kyc?.status == 'expired' && kyc?.rejectedAt == null) ...[
            SizedBox(height: 4.h),
            Text(
              'Expiré le : ${_formatDate(kyc!.updatedAt ?? DateTime.now())}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.warning,
              ),
            ),
          ],
        ],
      ),
    ).animate().fadeIn().slideY(begin: 0.3);
  }

  Widget _buildProgressCard(KycEntity kyc) {
    final requiredDocs = _getRequiredDocuments(kyc.user?.role ?? 'investor');
    final completedDocs = kyc.documents.where((doc) => doc.verified).length;
    final totalChecks = requiredDocs.length + 2;
    final completedChecks = completedDocs +
        (kyc.verification.identity.verified ? 1 : 0) +
        (kyc.verification.background.verified ? 1 : 0);
    final progress = (completedChecks / totalChecks).clamp(0.0, 1.0);

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                // 'Progression de la vérification',
                'Vérification',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  '${(progress * 100).toInt()}%',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: AppColors.textTertiary.withOpacity(0.2),
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
            minHeight: 4.h,
          ),
          SizedBox(height: 12.h),
          Text(
            '$completedDocs de ${requiredDocs.length} documents vérifiés',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.sp,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.3);
  }

  // Future<void> _submitKyc() async {
  //   final kycState = ref.read(kycProvider);
  //   final requiredDocs = kycState.requiredDocuments ?? [];
  //   final currentDocs = kycState.selectedKyc?.documents ?? [];
  //   final uploadedTypes = currentDocs.map((doc) => doc.type).toSet();
  //   final missingDocs =
  //       requiredDocs.where((type) => !uploadedTypes.contains(type)).toList();

  //   if (missingDocs.isNotEmpty) {
  //     if (mounted) {
  //       await showDialog(
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           backgroundColor: AppColors.cardBackground,
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(16.r),
  //           ),
  //           title: Text(
  //             'Documents manquants',
  //             style: TextStyle(
  //               fontFamily: 'Poppins',
  //               fontSize: 18.sp,
  //               fontWeight: FontWeight.w600,
  //               color: AppColors.textPrimary,
  //             ),
  //           ),
  //           content: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 'Vous devez uploader les documents suivants avant de soumettre :',
  //                 style: TextStyle(
  //                   fontFamily: 'Poppins',
  //                   fontSize: 14.sp,
  //                   color: AppColors.textSecondary,
  //                 ),
  //               ),
  //               SizedBox(height: 12.h),
  //               ...missingDocs.map((type) => Padding(
  //                     padding: EdgeInsets.only(bottom: 8.h),
  //                     child: Row(
  //                       children: [
  //                         Icon(
  //                           Icons.warning,
  //                           color: AppColors.warning,
  //                           size: 16.sp,
  //                         ),
  //                         SizedBox(width: 8.w),
  //                         Text(
  //                           _getDocumentTypeName(type),
  //                           style: TextStyle(
  //                             fontFamily: 'Poppins',
  //                             fontSize: 14.sp,
  //                             color: AppColors.textPrimary,
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   )),
  //             ],
  //           ),
  //           actions: [
  //             CustomButton(
  //               text: 'OK',
  //               onPressed: () => Navigator.pop(context),
  //               backgroundColor: AppColors.primary,
  //               textColor: Colors.white,
  //               height: 48.h,
  //             ),
  //           ],
  //         ),
  //       );
  //     }
  //     return;
  //   }

  //   // Soumettre si tous les documents sont présents
  //   await ref.read(kycProvider.notifier).submitKYC();
  //   if (mounted) {
  //     final state = ref.read(kycProvider);
  //     if (state.errorMessage != null) {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text('Échec de la soumission KYC : ${state.errorMessage}'),
  //           backgroundColor: AppColors.error,
  //         ),
  //       );
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //           content: Text('KYC soumis avec succès !'),
  //           backgroundColor: AppColors.success,
  //         ),
  //       );
  //     }
  //   }
  // }

  Widget _buildDocumentsSection(KycEntity kyc) {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Documents',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              if (kyc.status != 'approved')
                CustomButton(
                  text: 'Upload',
                  onPressed: () => context.push('/kyc/upload'),
                  backgroundColor: AppColors.primary,
                  textColor: Colors.white,
                  height: 40.h,
                  icon: Icons.upload_file,
                ).animate(delay: 300.ms).fadeIn().scale(),
            ],
          ),
          SizedBox(height: 16.h),
          if (kyc.documents.isEmpty)
            _buildEmptyDocumentsState()
          else
            ...kyc.documents.asMap().entries.map((entry) {
              final index = entry.key;
              final document = entry.value;
              return _buildDocumentItem(document, index);
            }),
        ],
      ),
    ).animate(delay: 400.ms).fadeIn().slideY(begin: 0.3);
  }

  Widget _buildDocumentItem(DocumentEntity document, int index) {
    Color statusColor =
        document.verified ? AppColors.success : AppColors.warning;
    IconData statusIcon = document.verified ? Icons.verified : Icons.pending;
    String statusText = document.verified ? 'Vérifié' : 'En attente';

    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12.r),
        border: Border(
          left: BorderSide(
            width: 4.w,
            color: _getDocumentTypeColor(document.type),
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 48.w,
            height: 48.w,
            decoration: BoxDecoration(
              color: _getDocumentTypeColor(document.type).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              _getDocumentTypeIcon(document.type),
              size: 24.sp,
              color: _getDocumentTypeColor(document.type),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _getDocumentTypeName(document.type),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  document.category.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(statusIcon, size: 12.sp, color: statusColor),
                SizedBox(width: 4.w),
                Text(
                  statusText,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: statusColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
        .animate(delay: Duration(milliseconds: 500 + (index * 100)))
        .fadeIn()
        .slideX(begin: 0.3);
  }

  Widget _buildEmptyDocumentsState() {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: AppColors.warning.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.warning.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.upload_file,
            size: 48.sp,
            color: AppColors.warning,
          ),
          SizedBox(height: 12.h),
          Text(
            'Aucun document téléchargé',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Téléchargez vos documents d\'identité pour commencer le processus de vérification.',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildVerificationDetails(KycEntity kyc) {
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
            'Détails de la vérification',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 16.h),
          _buildVerificationItem(
            'Vérification d\'identité',
            kyc.verification.identity.verified,
            kyc.verification.identity.verifiedAt,
            AppColors.primary,
          ),
          SizedBox(height: 12.h),
          _buildVerificationItem(
            'Vérification des antécédents',
            kyc.verification.background.verified,
            kyc.verification.background.verifiedAt,
            AppColors.info,
          ),
        ],
      ),
    ).animate(delay: 600.ms).fadeIn().slideY(begin: 0.3);
  }

  Widget _buildVerificationItem(
      String title, bool verified, DateTime? verifiedAt, Color color) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12.r),
        border: Border(
          left: BorderSide(
            width: 4.w,
            color: color,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 32.w,
            height: 32.w,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              verified ? Icons.check_circle : Icons.radio_button_unchecked,
              color: verified ? color : AppColors.textTertiary,
              size: 20.sp,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                if (verified && verifiedAt != null)
                  Text(
                    'Vérifié le ${_formatDate(verifiedAt)}',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      color: color,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAuditLogSection(KycEntity kyc) {
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Journal d\'activité',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 16.h),
          ...kyc.auditLog.take(5).map((log) => _buildAuditLogItem(log)),
          if (kyc.auditLog.length > 5)
            CustomButton(
              text: 'Voir toutes les activités',
              onPressed: () => context.push('/kyc/audit-log'),
              backgroundColor: AppColors.primary,
              textColor: Colors.white,
              height: 40.h,
            ).animate(delay: 700.ms).fadeIn().scale(),
        ],
      ),
    ).animate(delay: 700.ms).fadeIn().slideY(begin: 0.3);
  }

  Widget _buildAuditLogItem(AuditLogEntity log) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12.r),
        border: Border(
          left: BorderSide(
            width: 4.w,
            color: _getAuditLogColor(log.action),
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 32.w,
            height: 32.w,
            decoration: BoxDecoration(
              color: _getAuditLogColor(log.action).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              _getAuditLogIcon(log.action),
              size: 20.sp,
              color: _getAuditLogColor(log.action),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              _getAuditLogActionName(log.action),
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          if (log.timestamp != null)
            Text(
              _formatDate(log.timestamp!),
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.textSecondary,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildGetStartedCard() {
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
            height: 80.w,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Icon(
              Icons.security,
              size: 40.sp,
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Complétez votre vérification KYC',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h),
          Text(
            'Vérifiez votre identité pour débloquer toutes les fonctionnalités et assurer des transactions sécurisées.',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          CustomButton(
            text: 'Commencer la vérification',
            onPressed: () => context.push('/kyc/start'),
            backgroundColor: AppColors.primary,
            textColor: Colors.white,
            height: 56.h,
          ).animate(delay: 800.ms).fadeIn().scale(),
        ],
      ),
    ).animate().fadeIn().slideY(begin: 0.3);
  }

  Widget _buildErrorState(String error) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 80.sp,
              color: AppColors.error,
            ),
            SizedBox(height: 16.h),
            Text(
              'Erreur lors du chargement',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              error,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            CustomButton(
              text: 'Réessayer',
              onPressed: () {
                final user = ref.read(authProvider).user;
                if (user != null) {
                  ref.read(kycProvider.notifier).fetchKYC(user.id);
                }
              },
              backgroundColor: AppColors.primary,
              textColor: Colors.white,
              height: 56.h,
            ).animate().fadeIn().scale(),
          ],
        ),
      ),
    );
  }

  Widget? _buildFloatingActionButton(KycEntity? kyc) {
    if (kyc == null ||
        kyc.status == 'not_submitted' ||
        kyc.status == 'expired') {
      return CustomButton(
        text: 'Commencer KYC',
        onPressed: () => context.push('/kyc/start'),
        backgroundColor: AppColors.primary,
        textColor: Colors.white,
        height: 56.h,
        // icon: Icons.start,
      );
    } else if (kyc.status == 'rejected' ||
        kyc.status == 'pending' ||
        kyc.status == 'under_review') {
      return CustomButton(
        text: 'Télécharger des documents',
        onPressed: () => context.push('/kyc/upload'),
        backgroundColor: AppColors.warning,
        textColor: Colors.white,
        height: 56.h,
        icon: Icons.upload_file,
      );
    }
    return null;
  }

  // Helper methods
  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
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
      default:
        return Icons.description;
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
      default:
        return type.replaceAll('_', ' ').toUpperCase();
    }
  }

  IconData _getAuditLogIcon(String action) {
    switch (action.toLowerCase()) {
      case 'submit':
        return Icons.send;
      case 'approve':
        return Icons.check_circle;
      case 'reject':
        return Icons.cancel;
      case 'verify_document':
        return Icons.verified;
      case 'delete_document':
        return Icons.delete;
      default:
        return Icons.info;
    }
  }

  Color _getAuditLogColor(String action) {
    switch (action.toLowerCase()) {
      case 'submit':
        return AppColors.primary;
      case 'approve':
        return AppColors.success;
      case 'reject':
        return AppColors.error;
      case 'verify_document':
        return AppColors.info;
      case 'delete_document':
        return AppColors.warning;
      default:
        return AppColors.textSecondary;
    }
  }

  String _getAuditLogActionName(String action) {
    switch (action.toLowerCase()) {
      case 'submit':
        return 'Soumission';
      case 'approve':
        return 'Approuvé';
      case 'reject':
        return 'Rejeté';
      case 'verify_document':
        return 'Document vérifié';
      case 'delete_document':
        return 'Document supprimé';
      default:
        return action.replaceAll('_', ' ').toUpperCase();
    }
  }

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
}
