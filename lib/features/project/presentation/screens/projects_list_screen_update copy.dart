import 'package:find_invest_mobile/core/theme/app_colors.dart';
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
  final TextEditingController _searchController = TextEditingController();
  final Map<String, dynamic> _filters = {};
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(projectProvider.notifier).getProjects();
      ref
          .read(questionnaireProvider.notifier)
          .checkQuestionnaireRequirement('create_project');
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);
    final questionnaireState = ref.watch(questionnaireProvider);

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Projects',
      //     style: TextStyle(
      //       fontFamily: 'Poppins',
      //       fontSize: 20.sp,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   backgroundColor: AppColors.primary,
      //   foregroundColor: Colors.white,
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.filter_list),
      //       onPressed: _showFilterSheet,
      //     ),
      //     IconButton(
      //       icon: Icon(_isSearching ? Icons.close : Icons.search),
      //       onPressed: _toggleSearch,
      //     ),
      //   ],
      // ),
      body: LoadingOverlay(
        isLoading: projectState.isLoading,
        child: Column(
          children: [
            if (_isSearching) _buildSearchBar(),
            _buildQuestionnairePrompt(questionnaireState),
            Expanded(
              child: RefreshIndicator(
                onRefresh: _refreshProjects,
                child: _buildProjectsList(projectState.projects),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: projectState.projects.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: () => _handleCreateProject(questionnaireState),
              backgroundColor: AppColors.primary,
              icon: const Icon(Icons.add, color: Colors.white),
              label: const Text(
                'Create Project',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ).animate().scale(delay: 500.ms)
          : null, // rien n’est affiché si la liste est vide,
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: EdgeInsets.all(16.w),
      color: Colors.white,
      child: TextField(
        controller: _searchController,
        autofocus: true,
        decoration: InputDecoration(
          hintText: 'Search projects...',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          filled: true,
          fillColor: AppColors.accent.withOpacity(0.1),
        ),
        onChanged: _onSearchChanged,
      ),
    ).animate().slideY(begin: -1.0);
  }

  Widget _buildQuestionnairePrompt(QuestionnaireState questionnaireState) {
    final requirementCheck = questionnaireState.requirementCheck;

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
                'Complete Your Profile',
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
                    'Complete the assessment to create projects',
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
            onPressed: () => context.push('/questionnaire/overview'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.warning,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              'Complete Profile',
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

  Widget _buildProjectsList(List<ProjectEntity> projects) {
    if (projects.isEmpty) {
      return _buildEmptyState();
    }

    return ListView.builder(
      controller: _scrollController,
      padding: EdgeInsets.all(16.w),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        final project = projects[index];
        return ProjectCard(
          project: project,
          // onTap: () => context.push('/project/${project.id}'),
          // showOwner: true,
        )
            .animate(delay: Duration(milliseconds: index * 100))
            .fadeIn()
            .slideY(begin: 0.3);
      },
    );
  }

  Widget _buildEmptyState() {
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
            onPressed: () =>
                _handleCreateProject(ref.read(questionnaireProvider)),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Text(
              'Create Your First Project',
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

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (!_isSearching) {
        _searchController.clear();
        _onSearchChanged('');
      }
    });
  }

  void _onSearchChanged(String query) {
    if (query.isEmpty) {
      ref.read(projectProvider.notifier).getProjects(filters: _filters);
    } else {
      ref.read(projectProvider.notifier).searchProjects(query);
    }
  }

  void _showFilterSheet() {
    // showModalBottomSheet(
    //   context: context,
    //   isScrollControlled: true,
    //   backgroundColor: Colors.transparent,
    //   builder: (context) => ProjectFilterSheet(
    //     currentFilters: _filters,
    //     onFiltersChanged: (filters) {
    //       setState(() {
    //         _filters = filters;
    //       });
    //       ref.read(projectProvider.notifier).getProjects(filters: filters);
    //     },
    //   ),
    // );
  }

  Future<void> _refreshProjects() async {
    await ref.read(projectProvider.notifier).getProjects(filters: _filters);
  }

  void _handleCreateProject(QuestionnaireState questionnaireState) {
    final requirementCheck = questionnaireState.requirementCheck;

    if (requirementCheck != null && requirementCheck['allowed'] != true) {
      _showQuestionnaireRequiredDialog(requirementCheck);
      return;
    }

    context.push('/project/create');
  }

  void _showQuestionnaireRequiredDialog(Map<String, dynamic> requirementCheck) {
    showDialog(
      barrierColor: AppColors.gray800.withOpacity(0.7),
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Row(
          children: [
            Icon(
              Icons.psychology,
              color: AppColors.primary,
              size: 24.sp,
            ),
            SizedBox(width: 8.w),
            Text(
              'Assessment Required',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
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
                  'You need to complete the profile assessment before creating projects.',
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
                color: AppColors.info.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: AppColors.info,
                    size: 20.sp,
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(
                      'This assessment helps us understand your profile and provide better project recommendations.',
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
              context.push('/questionnaire/overview');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: const Text(
              'Take Assessment',
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
