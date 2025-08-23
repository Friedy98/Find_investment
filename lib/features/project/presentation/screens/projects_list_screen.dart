import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/features/project/presentation/widgets/project_card.dart';
import 'package:find_invest_mobile/features/project/presentation/widgets/project_filter_sheet.dart';
import 'package:find_invest_mobile/features/project_category/presentation/providers/project_category_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectsListPage extends ConsumerStatefulWidget {
  const ProjectsListPage({super.key});

  @override
  ConsumerState<ProjectsListPage> createState() => _ProjectsListPageState();
}

class _ProjectsListPageState extends ConsumerState<ProjectsListPage>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();

  late TabController _tabController;

  // Filter parameters
  String? _selectedCategory;
  String? _selectedStatus;
  String? _selectedLocation;
  String? _selectedFundingGoal;
  String _sortBy = 'createdAt';
  String _sortOrder = 'desc';

  // Pagination state
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _scrollController.addListener(_onScroll);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadProjects();
      ref.read(projectCategoryProvider.notifier).fetchCategories();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _loadMoreProjects();
    }
  }

  Future<void> _loadProjects({bool refresh = false}) async {
    final user = ref.read(authProvider).user;
    final userId = user?.id;
    await ref.read(projectProvider.notifier).fetchProjects(
          status: _selectedStatus,
          category: _selectedCategory,
          location: _selectedLocation,
          fundingGoal: _selectedFundingGoal,
          sortBy: _sortBy,
          sortOrder: _sortOrder,
          owner: userId,
          loadMore: false,
        );
  }

  Future<void> _loadMoreProjects() async {
    final projectState = ref.read(projectProvider);

    if (_isLoadingMore || !projectState.hasNext || projectState.isLoading) {
      return;
    }

    setState(() {
      _isLoadingMore = true;
    });

    final user = ref.read(authProvider).user;
    final userId = user?.id;
    await ref.read(projectProvider.notifier).fetchProjects(
          status: _selectedStatus,
          category: _selectedCategory,
          location: _selectedLocation,
          fundingGoal: _selectedFundingGoal,
          sortBy: _sortBy,
          sortOrder: _sortOrder,
          owner: userId,
          loadMore: true,
        );

    setState(() {
      _isLoadingMore = false;
    });
  }

  void _onTabChanged(int index) {
    switch (index) {
      case 0:
        _selectedStatus = null;
        break;
      case 1:
        _selectedStatus = 'active';
        break;
      case 2:
        _selectedStatus = 'completed';
        break;
      case 3:
        _selectedStatus = 'draft';
        break;
    }
    _loadProjects();
  }

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);
    final categoryState = ref.watch(projectCategoryProvider);
    final authState = ref.watch(authProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: LoadingOverlay(
        isLoading: projectState.isLoading && projectState.projects.isEmpty,
        child: RefreshIndicator(
          onRefresh: () => _loadProjects(),
          child: Column(
            children: [
              // Tab bar
              Container(
                color: AppColors.cardBackground,
                child: TabBar(
                  controller: _tabController,
                  onTap: _onTabChanged,
                  labelColor: AppColors.primary,
                  unselectedLabelColor: AppColors.textSecondary,
                  indicatorColor: AppColors.primary,
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                  ),
                  tabs: const [
                    Tab(text: 'All'),
                    Tab(text: 'Active'),
                    Tab(text: 'Completed'),
                    Tab(text: 'Draft'),
                  ],
                ),
              ),

              // Filter bar
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                color: AppColors.cardBackground,
                child: Row(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: _buildFilterChips(),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.filter_list,
                          size: 24.sp, color: AppColors.primary),
                      onPressed: () =>
                          _showFilterSheet(context, categoryState.categories),
                    ),
                  ],
                ),
              ),

              // Projects list
              Expanded(
                child: _buildProjectsList(projectState, authState),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/project/create'),
        backgroundColor: AppColors.primary,
        child: Icon(Icons.add, color: Colors.white, size: 24.sp),
      ).animate().scale(delay: 500.ms),
    );
  }

  Widget _buildProjectsList(ProjectState projectState, AuthState authState) {
    if (projectState.errorMessage != null) {
      return _buildErrorState(projectState.errorMessage!);
    }

    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        // Profile completion banner
        // if (authState.user != null && !_isProfileComplete(authState.user))
        if (authState.user != null)
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16.w),
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.primary, AppColors.primaryLight],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline_outlined,
                    size: 50.sp,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Tell Us More About You',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Complete your profile to connect with investors and collaborators.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      backgroundColor: AppColors.cardBackground,
                      textColor: AppColors.primary,
                      text: 'Complete Profile',
                      onPressed: () {
                        context.push('/questionnaire/overview');
                      },
                    ),
                  ),
                ],
              ),
            ).animate().fadeIn().slideY(begin: 0.3),
          ),

        // Projects list or empty state
        if (projectState.projects.isEmpty && !projectState.isLoading)
          SliverFillRemaining(
            child: _buildEmptyState(),
          )
        else
          SliverPadding(
            padding: EdgeInsets.all(16.w),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index == projectState.projects.length) {
                    return _isLoadingMore
                        ? Container(
                            padding: EdgeInsets.all(16.w),
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : const SizedBox.shrink();
                  }

                  final project = projectState.projects[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: ProjectCard(
                      project: project,
                      onTap: () => _navigateToProjectDetails(project),
                      showOwner: false,
                    )
                        .animate(delay: Duration(milliseconds: index * 100))
                        .fadeIn()
                        .slideY(begin: 0.3),
                  );
                },
                childCount: projectState.projects.length +
                    (projectState.hasNext ? 1 : 0),
              ),
            ),
          ),
      ],
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
            'No Projects Yet',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Create your first project to get started',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          CustomButton(
            text: 'Create Project',
            onPressed: () => context.push('/project/create'),
            backgroundColor: AppColors.primary,
            textColor: Colors.white,
          ),
        ],
      ),
    ).animate().fadeIn();
  }

  Widget _buildErrorState(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64.sp,
            color: AppColors.error,
          ),
          SizedBox(height: 16.h),
          Text(
            'Error Loading Projects',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
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
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          CustomButton(
            text: 'Retry',
            onPressed: () => _loadProjects(),
            backgroundColor: AppColors.primary,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }

  List<Widget> _buildFilterChips() {
    List<Widget> chips = [];

    if (_selectedCategory != null) {
      chips.add(_buildFilterChip(
        'Category: $_selectedCategory',
        () {
          setState(() {
            _selectedCategory = null;
          });
          _loadProjects();
        },
      ));
    }

    if (_selectedLocation != null) {
      chips.add(_buildFilterChip(
        'Location: $_selectedLocation',
        () {
          setState(() {
            _selectedLocation = null;
          });
          _loadProjects();
        },
      ));
    }

    if (_selectedFundingGoal != null) {
      chips.add(_buildFilterChip(
        'Funding: $_selectedFundingGoal',
        () {
          setState(() {
            _selectedFundingGoal = null;
          });
          _loadProjects();
        },
      ));
    }

    return chips;
  }

  Widget _buildFilterChip(String label, VoidCallback onRemove) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: Chip(
        label: Text(
          label,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12.sp,
          ),
        ),
        deleteIcon: Icon(Icons.close, size: 18.sp),
        onDeleted: onRemove,
        backgroundColor: AppColors.primary.withOpacity(0.1),
      ),
    );
  }

  bool _isProfileComplete(UserEntity? user) {
    if (user == null) return false;

    // Check for basic profile completion
    final hasBasicInfo = user.bio?.isNotEmpty == true ||
        user.location?.city?.isNotEmpty == true ||
        user.location?.country?.isNotEmpty == true;

    // Check role-specific profile completion
    if (user.role == 'investor' && user.investorProfile != null) {
      return user.investorProfile!.investmentPreferences?.sectors?.isNotEmpty ==
              true ||
          user.investorProfile!.riskTolerance != null;
    } else if (user.role == 'project_owner' &&
        user.projectOwnerProfile != null) {
      return user.projectOwnerProfile!.company?.name?.isNotEmpty == true ||
          user.projectOwnerProfile!.skills?.isNotEmpty == true;
    }

    // Default to basic info check if no role-specific profile
    return hasBasicInfo || user.avatar?.url?.isNotEmpty == true;
  }

  void _navigateToProjectDetails(ProjectEntity project) {
    context.push('/project/${project.id}');
  }

  void _showFilterSheet(BuildContext context, List<dynamic> categories) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => ProjectFilterSheet(
        selectedCategory: _selectedCategory,
        selectedLocation: _selectedLocation,
        selectedFundingGoal: _selectedFundingGoal,
        sortBy: _sortBy,
        sortOrder: _sortOrder,
        categories: categories,
        onApplyFilters: (filters) {
          setState(() {
            _selectedCategory = filters['category'];
            _selectedLocation = filters['location'];
            _selectedFundingGoal = filters['fundingGoal'];
            _sortBy = filters['sortBy'] ?? 'createdAt';
            _sortOrder = filters['sortOrder'] ?? 'desc';
          });
          _loadProjects();
        },
      ),
    );
  }
}
