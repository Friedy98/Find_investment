import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';
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
    final hasContent = documentState.documents.isNotEmpty;

    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Project Documents',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              if (widget.isOwner)
                IconButton(
                  icon: Icon(Icons.add,
                      color: AppColors.textPrimary, size: 24.sp),
                  onPressed: () => context
                      .push('/project/${widget.project.id}/documents/create'),
                ),
            ],
          ),
          if (hasContent)
            _buildModernCard(
              title: 'Documents',
              icon: Icons.description,
              child: SizedBox(
                width: double.infinity,
                child: DataTable(
                  showCheckboxColumn: false,
                  columnSpacing: 16.w,
                  dataRowMaxHeight: 60.h,
                  headingRowHeight: 48.h,
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
                  columns: const [
                    DataColumn(
                      label: Text(
                        'Name',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Type',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Downloads',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Action',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                  rows: documentState.documents.map((doc) {
                    return DataRow(
                      cells: [
                        DataCell(
                            Text(doc.name, style: TextStyle(fontSize: 12.sp))),
                        DataCell(
                            Text(doc.type, style: TextStyle(fontSize: 12.sp))),
                        DataCell(Text('${doc.downloadCount}',
                            style: TextStyle(fontSize: 12.sp))),
                        DataCell(
                          IconButton(
                            icon: const Icon(Icons.remove_red_eye,
                                color: AppColors.gray400),
                            onPressed: () {
                              _showDocumentDetails(context, doc);
                            },
                          ),
                        ),
                      ],
                      onSelectChanged: (selected) {
                        if (selected ?? false) {
                          _showDocumentDetails(context, doc);
                        }
                      },
                    );
                  }).toList(),
                ),
              ),
            ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),
          if (!hasContent) _buildEmptyState('No documents available'),
          if (widget.isOwner)
            Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    text: 'Add Document',
                    onPressed: () => context
                        .push('/project/${widget.project.id}/documents/create'),
                    backgroundColor: AppColors.primary,
                    textColor: Colors.white,
                  ),
                )).animate().scale(delay: 800.ms),
        ],
      ),
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
              widget.isOwner
                  ? 'Create a new document to get started.'
                  : 'No document information available.',
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

  Widget _buildModernCard({
    required String title,
    required IconData icon,
    required Widget child,
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

  void _showDocumentDetails(BuildContext context, ProjectDocumentEntity doc) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.2,
        maxChildSize: 0.7,
        expand: false,
        builder: (context, scrollController) => SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.all(24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: AppColors.gray300,
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  doc.name,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Description:',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  doc.description ?? 'No description available',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Type:',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  doc.type,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Downloads:',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  '${doc.downloadCount}',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    text: 'Close',
                    onPressed: () => Navigator.pop(context),
                    backgroundColor: AppColors.primary,
                    textColor: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
