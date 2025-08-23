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

class KycAuditLogPage extends ConsumerStatefulWidget {
  const KycAuditLogPage({super.key});

  @override
  ConsumerState<KycAuditLogPage> createState() => _KycAuditLogPageState();
}

class _KycAuditLogPageState extends ConsumerState<KycAuditLogPage> {
  String _selectedFilter = 'all';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = ref.read(authProvider).user;
      if (user != null && mounted) {
        ref.read(kycProvider.notifier).fetchKYC(user.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final kycState = ref.watch(kycProvider);
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
            'Journal d\'activité KYC',
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
                  'Veuillez vous connecter pour voir le journal d\'activité KYC.',
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
          'Journal d\'activité KYC',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list,
                color: AppColors.textPrimary, size: 24.sp),
            onPressed: () => _showFilterDialog(),
          ),
        ],
      ),
      body: LoadingOverlay(
        isLoading: kycState.isLoading,
        message: 'Chargement du journal...',
        child: kycState.errorMessage != null
            ? _buildErrorState(kycState.errorMessage!)
            : kycState.selectedKyc == null
                ? _buildEmptyState()
                : _buildAuditLogList(kycState.selectedKyc!.auditLog),
      ),
    );
  }

  Widget _buildAuditLogList(List<AuditLogEntity> logs) {
    final filteredLogs = _filterLogs(logs);
    if (filteredLogs.isEmpty) {
      return _buildEmptyState();
    }

    return RefreshIndicator(
      onRefresh: () async {
        final user = ref.read(authProvider).user;
        if (user != null) {
          await ref.read(kycProvider.notifier).fetchKYC(user.id);
        }
      },
      color: AppColors.primary,
      child: ListView.builder(
        padding: EdgeInsets.all(16.w),
        itemCount: filteredLogs.length,
        itemBuilder: (context, index) {
          final log = filteredLogs[index];
          return _buildAuditLogItem(log, index);
        },
      ),
    );
  }

  Widget _buildAuditLogItem(AuditLogEntity log, int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border(
          left: BorderSide(
            width: 4.w,
            color: _getAuditLogColor(log.action),
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.h,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _getAuditLogActionName(log.action),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 4.h),
                // Text(
                //   log.details ?? 'Aucun détail supplémentaire',
                //   style: TextStyle(
                //     fontFamily: 'Poppins',
                //     fontSize: 12.sp,
                //     color: AppColors.textSecondary,
                //   ),
                // ),
              ],
            ),
          ),
          if (log.timestamp != null)
            Text(
              _formatDate(log.timestamp!),
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.textTertiary,
              ),
            ),
        ],
      ),
    )
        .animate(delay: Duration(milliseconds: 200 + index * 100))
        .fadeIn()
        .slideX(begin: 0.3);
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.history,
              size: 80.sp,
              color: AppColors.textTertiary,
            ).animate().fadeIn(),
            SizedBox(height: 16.h),
            Text(
              'Aucune activité',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ).animate(delay: 100.ms).fadeIn(),
            SizedBox(height: 8.h),
            Text(
              'Aucune activité KYC enregistrée pour le moment.',
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
              text: 'Retour',
              onPressed: () => context.pop(),
              backgroundColor: AppColors.primary,
              textColor: Colors.white,
              height: 56.h,
            ).animate(delay: 300.ms).fadeIn().scale(),
          ],
        ),
      ),
    );
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
            ).animate().fadeIn(),
            SizedBox(height: 16.h),
            Text(
              'Erreur lors du chargement',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ).animate(delay: 100.ms).fadeIn(),
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
            ).animate(delay: 200.ms).fadeIn(),
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
            ).animate(delay: 300.ms).fadeIn().scale(),
          ],
        ),
      ),
    );
  }

  void _showFilterDialog() {
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
              'Filtrer les activités',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 20.h),
            _buildFilterOption('all', 'Toutes les activités', Icons.history),
            _buildFilterOption('submit', 'Soumissions', Icons.send),
            _buildFilterOption('approve', 'Approbations', Icons.verified),
            _buildFilterOption('reject', 'Rejets', Icons.cancel),
            _buildFilterOption('verify_document', 'Vérifications de documents',
                Icons.description),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterOption(String value, String title, IconData icon) {
    final isSelected = _selectedFilter == value;
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedFilter = value;
          });
          Navigator.pop(context);
        },
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: isSelected
                ? AppColors.primary.withOpacity(0.1)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: isSelected ? AppColors.primary : Colors.transparent,
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: isSelected ? AppColors.primary : AppColors.textSecondary,
                size: 20.sp,
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                    color:
                        isSelected ? AppColors.primary : AppColors.textPrimary,
                  ),
                ),
              ),
              if (isSelected)
                Icon(
                  Icons.check_circle,
                  color: AppColors.primary,
                  size: 20.sp,
                ),
            ],
          ),
        ),
      ),
    ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.3);
  }

  // Helper methods
  List<AuditLogEntity> _filterLogs(List<AuditLogEntity> logs) {
    if (_selectedFilter == 'all') return logs;
    return logs
        .where((log) => log.action.toLowerCase() == _selectedFilter)
        .toList();
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute.toString().padLeft(2, '0')}';
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
}
