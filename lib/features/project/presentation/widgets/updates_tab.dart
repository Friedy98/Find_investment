import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project_update/presentation/providers/project_update_provider.dart';
import 'package:intl/intl.dart';

class UpdatesTab extends ConsumerWidget {
  final String projectId;

  const UpdatesTab({super.key, required this.projectId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updateState = ref.watch(projectUpdateProvider);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(projectUpdateProvider.notifier)
          .fetchPublicUpdates(projectId: projectId);
    });

    if (updateState.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (updateState.errorMessage != null) {
      return _buildErrorState(context, ref, updateState.errorMessage!);
    }
    if (updateState.updates.isEmpty) {
      return _buildEmptyState('No updates available');
    }
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: updateState.updates.length,
      itemBuilder: (context, index) {
        final update = updateState.updates[index];
        return Container(
          margin: EdgeInsets.only(bottom: 12.h),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r)),
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    update.title,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    update.content,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    update.publishedAt != null
                        ? DateFormat('dd/MM/yyyy').format(update.publishedAt!)
                        : 'Unknown date',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10.sp,
                      color: AppColors.textTertiary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
            .animate(delay: Duration(milliseconds: index * 100))
            .fadeIn()
            .slideX(begin: 0.3);
      },
    );
  }

  Widget _buildEmptyState(String message) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.info_outline,
                size: 60.sp,
                color: AppColors.primary,
              ),
            ).animate().scale(delay: 200.ms, duration: 500.ms),
            SizedBox(height: 24.h),
            Text(
              message,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ).animate(delay: 300.ms).fadeIn(),
            SizedBox(height: 8.h),
            Text(
              'Revenez plus tard ou vérifiez vos paramètres.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ).animate(delay: 400.ms).fadeIn(),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(
      BuildContext context, WidgetRef ref, String errorMessage) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                color: AppColors.error.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.error_outline,
                size: 60.sp,
                color: AppColors.error,
              ),
            ).animate().scale(delay: 200.ms, duration: 500.ms),
            SizedBox(height: 24.h),
            Text(
              'Erreur',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ).animate(delay: 300.ms).fadeIn(),
            SizedBox(height: 8.h),
            Text(
              errorMessage,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ).animate(delay: 400.ms).fadeIn(),
            SizedBox(height: 24.h),
            ElevatedButton.icon(
              onPressed: () {
                ref
                    .read(projectUpdateProvider.notifier)
                    .fetchPublicUpdates(projectId: projectId);
              },
              icon: Icon(Icons.refresh, size: 20.sp),
              label: Text(
                'Réessayer',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                elevation: 2,
              ),
            ).animate(delay: 500.ms).fadeIn().slideY(begin: 0.3),
          ],
        ),
      ),
    );
  }
}
