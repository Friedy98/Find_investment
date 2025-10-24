import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/kyc/presentation/providers/kyc_provider.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/features/project/presentation/widgets/project_card.dart';
import 'package:find_invest_mobile/features/project/presentation/widgets/project_filter_sheet.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/providers/questionnaire_provider.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProjectsListPage extends ConsumerStatefulWidget {
  const ProjectsListPage({super.key});

  @override
  ConsumerState<ProjectsListPage> createState() => _ProjectsListPageState();
}

class _ProjectsListPageState extends ConsumerState<ProjectsListPage> {
  final ScrollController _scrollController = ScrollController();
  final Map<String, dynamic> _filters = {};
  int _page = 1;
  final int _limit = 20;
  final List<dynamic> _categories = []; // To be populated based on your data

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = ref.read(authProvider).user;
      if (user != null && mounted) {
        ref
            .read(projectProvider.notifier)
            .getMyProjects(page: _page, limit: _limit);
        ref
            .read(questionnaireProvider.notifier)
            .checkQuestionnaireRequirement('create_project');
        ref.read(kycProvider.notifier).fetchKYCStatus(user.id);
        // Fetch categories (assuming a method exists in projectProvider or elsewhere)
        // _categories = ref.read(projectProvider.notifier).getCategories();
      }
      // _scrollController.addListener(_onScroll);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _page++;
      ref
          .read(projectProvider.notifier)
          .getMyProjects(page: _page, limit: _limit, filters: _filters);
    }
  }

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);
    final questionnaireState = ref.watch(questionnaireProvider);
    final kycState = ref.watch(kycProvider);

    return LoadingOverlay(
      isLoading: projectState.isLoading,
      child: Stack(
        children: [
          Column(
            children: [
              _buildQuestionnairePrompt(questionnaireState, kycState),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: _refreshProjects,
                  child: _buildProjectsList(
                      projectState.projects, questionnaireState, kycState),
                ),
              ),
            ],
          ),
          if (projectState.projects.isNotEmpty)
            Positioned(
              bottom: 16.h,
              right: 16.w,
              child: FloatingActionButton(
                shape: const CircleBorder(),

                onPressed: () =>
                    _handleCreateProject(questionnaireState, kycState),
                backgroundColor: AppColors.primary,
                // elevation: 6,
                child: const Icon(Icons.add, color: AppColors.background),
              ).animate().scale(delay: 500.ms),
            ),
        ],
      ),
    );
  }

  Widget _buildQuestionnairePrompt(
      QuestionnaireState questionnaireState, KycState kycState) {
    final requirementCheck = questionnaireState.requirementCheck;
    final kycStatus = kycState.selectedKyc?.status;

    if (kycStatus != 'approved') {
      return _buildKycPrompt();
    }

    if (requirementCheck == null || requirementCheck['allowed'] == true) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: EdgeInsets.all(16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.warning.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.warning.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.info_outline,
            color: AppColors.warning,
            size: 26.sp,
          ),
          SizedBox(height: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                'Complétez votre profil',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.warning,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                textAlign: TextAlign.center,
                requirementCheck['message'] ??
                    'Complétez le questionnaire pour créer des projets',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp
                ),
              ),
            ],
          ),
          SizedBox(height: 12.w),
          ElevatedButton(
            onPressed: () => context.push('/questionnaire/overview'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.warning,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r)),
            ),
            child: Text(
              'Compléter le profil',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ).animate().fadeIn().slideY(begin: -0.3);
  }

  Widget _buildKycPrompt() {
    return Container(
      margin: EdgeInsets.all(16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.error.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.error.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.warning_amber_rounded,
            color: AppColors.error,
            size: 26.sp,
          ),
          SizedBox(height: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                'Validation KYC requise',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.error,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                textAlign: TextAlign.center,
                'Vous devez compléter la vérification KYC pour créer des projets.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.w),
          ElevatedButton(
            onPressed: () => context.push('/kyc/dashboard'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r)),
            ),
            child: Text(
              'Compléter KYC',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ).animate().fadeIn().slideY(begin: -0.3);
  }

  Widget _buildProjectsList(List<ProjectEntity> projects,
      QuestionnaireState questionnaireState, KycState kycState) {
    if (projects.isEmpty) {
      return _buildEmptyState(questionnaireState, kycState);
    }

    return ListView.builder(
      controller: _scrollController,
      padding: EdgeInsets.all(4.w),
      itemCount: projects.length + 1, // +1 for filter bar
      itemBuilder: (context, index) {
        if (index == 0) {
          return _buildFilterBar();
        }
        final project = projects[index - 1];
        return ProjectCard(
          project: project,
          // onTap: () => context.push('/project/${project.id}'),
          // showOwner: true,
        )
            .animate(delay: Duration(milliseconds: (index - 1) * 100))
            .fadeIn()
            .slideY(begin: 0.3);
      },
    );
  }

  Widget _buildFilterBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '${ref.read(projectProvider).projects.length} Projets',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          IconButton(
            icon:
                Icon(Icons.filter_list, color: AppColors.primary, size: 24.sp),
            onPressed: _showFilterSheet,
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(
      QuestionnaireState questionnaireState, KycState kycState) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.folder_open,
            size: 80.sp,
            color: AppColors.textTertiary,
          ),
          SizedBox(height: 16.h),
          Text(
            'No projects found',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Be the first to create a project!',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sp,
              color: AppColors.textSecondary,
            ),
          ),
          SizedBox(height: 24.h),
          ElevatedButton(
            onPressed: () => _handleCreateProject(questionnaireState, kycState),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r)),
            ),
            child: Text(
              'Créer votre premier projet',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ).animate().fadeIn();
  }

  void _showFilterSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        maxChildSize: 0.9,
        minChildSize: 0.5,
        builder: (context, scrollController) => ProjectFilterSheet(
          selectedCategory: _filters['category'],
          selectedSector: _filters['sector'],
          selectedSubSector: _filters['subSector'],
          selectedLocation: _filters['location'],
          selectedFundingType: _filters['fundingType'],
          selectedStatus: _filters['status'],
          selectedVisibility: _filters['visibility'],
          selectedPriority: _filters['priority'],
          selectedCollaborationType: _filters['collaborationType'],
          minFunding: _filters['minFunding'],
          maxFunding: _filters['maxFunding'],
          sortBy: _filters['sortBy'] ?? 'createdAt',
          sortOrder: _filters['sortOrder'] ?? 'desc',
          categories: _categories,
          onApplyFilters: (filters) {
            setState(() {
              _filters.clear();
              _filters.addAll(filters);
              _page = 1; // Reset page for new filters
            });
            ref
                .read(projectProvider.notifier)
                .getMyProjects(filters: _filters, page: _page, limit: _limit);
          },
        ),
      ),
    );
  }

  Future<void> _refreshProjects() async {
    _page = 1;
    await ref
        .read(projectProvider.notifier)
        .getMyProjects(filters: _filters, page: _page, limit: _limit);
  }

  void _handleCreateProject(
      QuestionnaireState questionnaireState, KycState kycState) {
    final requirementCheck = questionnaireState.requirementCheck;
    final kycStatus = kycState.selectedKyc?.status;

    if (kycStatus != 'approved') {
      _showKycRequiredDialog();
      return;
    }

    if (requirementCheck != null && requirementCheck['allowed'] != true) {
      _showQuestionnaireRequiredDialog(requirementCheck);
      return;
    }

    context.push('/project/create');
  }

  void _showKycRequiredDialog() {
    showDialog(
      barrierColor: AppColors.gray800.withOpacity(0.7),
      context: context,
      builder: (context) => AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        title: Row(
          children: [
            Icon(Icons.warning_amber_rounded,
                color: AppColors.error, size: 24.sp),
            SizedBox(width: 8.w),
            Text(
              'KYC requis',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.error,
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vous devez compléter la vérification KYC avant de pouvoir créer des projets.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.sp,
                color: AppColors.textPrimary,
                height: 1.4,
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: AppColors.error.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  Icon(Icons.info_outline, color: AppColors.error, size: 20.sp),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(
                      'La vérification KYC est nécessaire pour garantir la sécurité et la conformité.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        color: AppColors.error,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Annuler',
              style: TextStyle(
                  fontFamily: 'Poppins', color: AppColors.textSecondary),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.push('/kyc/dashboard');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r)),
            ),
            child: const Text(
              'Compléter KYC',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showQuestionnaireRequiredDialog(Map<String, dynamic> requirementCheck) {
    showDialog(
      barrierColor: AppColors.gray800.withOpacity(0.7),
      context: context,
      builder: (context) => AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        title: Row(
          children: [
            Icon(Icons.psychology, color: AppColors.primary, size: 24.sp),
            SizedBox(width: 8.w),
            Text(
              'Questionnaire requis',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              requirementCheck['message'] ??
                  'Vous devez compléter le questionnaire de profil avant de créer des projets.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.sp,
                height: 1.4,
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: AppColors.info.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  Icon(Icons.info_outline, color: AppColors.info, size: 20.sp),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(
                      'Ce questionnaire nous aide à mieux comprendre votre profil et à fournir des recommandations adaptées.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        color: AppColors.info,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Annuler',
              style: TextStyle(
                  fontFamily: 'Poppins', color: AppColors.textSecondary),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.push('/questionnaire/overview');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r)),
            ),
            child: const Text(
              'Passer le questionnaire',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
