import 'package:find_invest_mobile/features/project_doc/presentation/providers/project_document_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:go_router/go_router.dart';

class DocumentsTab extends ConsumerStatefulWidget {
  final ProjectEntity project;
  final bool isOwner;

  const DocumentsTab({super.key, required this.project, required this.isOwner});

  @override
  ConsumerState<DocumentsTab> createState() => _DocumentsTabState();
}

class _DocumentsTabState extends ConsumerState<DocumentsTab> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(projectDocumentProvider.notifier)
          .fetchDocuments(projectId: widget.project.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final documentState = ref.watch(projectDocumentProvider);

    if (documentState.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (documentState.errorMessage != null) {
      return Center(
        child: Text(documentState.errorMessage ?? 'Erreur inconnue'),
      );
    }

    if (documentState.documents.isEmpty) {
      return const Center(
        child: Text('Aucun document trouvé'),
      );
    }

    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.isOwner)
            _buildModernCard(
              title: 'Manage Documents',
              icon: Icons.folder,
              child: CustomButton(
                text: 'Go to Document Management',
                onPressed: () => context
                    .push('/project/${widget.project.id}/documents/management'),
              ),
            ).animate().fadeIn().slideY(begin: 0.3),
          SizedBox(height: 24.h),
          _buildModernCard(
            title: 'Project Documents',
            icon: Icons.description,
            child: Column(
              children: documentState.documents.map((doc) {
                return Container(
                  margin: EdgeInsets.only(bottom: 12.h),
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.file_present,
                        color: AppColors.primary,
                        size: 24.sp,
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doc.name,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            if (doc.description != null) SizedBox(height: 4.h),
                            if (doc.description != null)
                              Text(
                                doc.description!,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14.sp,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            SizedBox(height: 8.h),
                            Text(
                              'Type: ${doc.type}',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Downloads: ${doc.downloadCount}',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.download,
                          color: AppColors.primary,
                          size: 24.sp,
                        ),
                        onPressed: () {
                          ref
                              .read(projectDocumentProvider.notifier)
                              .incrementDownload(doc.id!);
                          // Add download logic here, e.g., open URL
                        },
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),
        ],
      ),
    );
  }

  Widget _buildModernCard({
    required String title,
    required IconData icon,
    required Widget child,
    Widget? action,
  }) {
    return Container(
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
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.primary,
                  AppColors.primaryLight,
                ],
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
            ),
            child: Row(
              children: [
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                if (action != null) action,
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.w),
            child: child,
          ),
        ],
      ),
    );
  }
}
