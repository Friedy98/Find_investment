import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';
import 'package:find_invest_mobile/features/project_doc/presentation/providers/project_document_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:go_router/go_router.dart';

class DocumentManagementPage extends ConsumerStatefulWidget {
  final String projectId;

  const DocumentManagementPage({super.key, required this.projectId});

  @override
  ConsumerState<DocumentManagementPage> createState() =>
      _DocumentManagementPageState();
}

class _DocumentManagementPageState
    extends ConsumerState<DocumentManagementPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(projectDocumentProvider.notifier)
          .fetchDocuments(projectId: widget.projectId);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _showSearch() {
    showSearch(
      context: context,
      delegate: DocumentSearchDelegate(
          ref.read(projectDocumentProvider.notifier).state.documents),
    );
  }

  @override
  Widget build(BuildContext context) {
    final documentState = ref.watch(projectDocumentProvider);

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
          'Document Management',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: AppColors.textPrimary, size: 24.sp),
            onPressed: _showSearch,
          ),
        ],
      ),
      body: LoadingOverlay(
        isLoading: documentState.isLoading,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDocumentsList(documentState.documents),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            context.push('/project/${widget.projectId}/documents/create'),
        backgroundColor: AppColors.primary,
        icon: Icon(Icons.add, color: Colors.white, size: 20.sp),
        label: const Text(
          'Add Document',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ).animate().scale(delay: 800.ms),
    );
  }

  Widget _buildDocumentsList(List<ProjectDocumentEntity> documents) {
    return _buildModernCard(
      title: 'Documents',
      icon: Icons.description,
      child: documents.isEmpty
          ? _buildEmptyState('No documents available')
          : Column(
              children: documents.asMap().entries.map((entry) {
                final index = entry.key;
                final doc = entry.value;
                return Container(
                  margin: EdgeInsets.only(bottom: 12.h),
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(12.r),
                    border:
                        Border.all(color: AppColors.primary.withOpacity(0.3)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                            SizedBox(height: 4.h),
                            Text(
                              'Type: ${doc.type}',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuButton<String>(
                        icon: Icon(Icons.more_vert, size: 20.sp),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        onSelected: (value) =>
                            _handleDocumentAction(value, doc),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 'edit',
                            child: Row(
                              children: [
                                Icon(Icons.edit_outlined, size: 18.sp),
                                SizedBox(width: 12.w),
                                const Text('Edit'),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            value: 'delete',
                            child: Row(
                              children: [
                                Icon(Icons.delete_outline,
                                    color: AppColors.error, size: 18.sp),
                                SizedBox(width: 12.w),
                                const Text('Delete',
                                    style: TextStyle(color: AppColors.error)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
                    .animate(delay: Duration(milliseconds: index * 100))
                    .fadeIn()
                    .slideX(begin: 0.3);
              }).toList(),
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
              'Create a new document to get started.',
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

  void _handleDocumentAction(String value, ProjectDocumentEntity doc) {
    switch (value) {
      case 'edit':
        context.push('/project/${widget.projectId}/documents/${doc.id}/edit');
        break;
      case 'delete':
        _showDeleteConfirmation(doc);
        break;
    }
  }

  void _showDeleteConfirmation(ProjectDocumentEntity doc) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'Delete Document',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        content: Text(
          'Are you sure you want to delete "${doc.name}"? This action cannot be undone.',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            color: AppColors.textPrimary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: AppColors.textSecondary,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ref
                  .read(projectDocumentProvider.notifier)
                  .deleteDocument(doc.id ?? "");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: const Text(
              'Delete',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DocumentSearchDelegate extends SearchDelegate<String> {
  final List<ProjectDocumentEntity> documents;

  DocumentSearchDelegate(this.documents);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, ''),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = documents
        .where((doc) => doc.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final doc = results[index];
        return ListTile(
          title: Text(doc.name),
          subtitle: Text(doc.type),
          onTap: () {
            close(context, doc.name);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? documents
        : documents
            .where(
                (doc) => doc.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final doc = suggestions[index];
        return ListTile(
          title: Text(doc.name),
          subtitle: Text(doc.type),
          onTap: () {
            query = doc.name;
            showResults(context);
          },
        );
      },
    );
  }
}
