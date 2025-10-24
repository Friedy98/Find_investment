// import 'package:find_invest_mobile/features/project/presentation/widgets/timeline_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:go_router/go_router.dart';
import 'Tabs/all_projects_view.dart';

class InvestorHome extends ConsumerStatefulWidget {

  const InvestorHome({
    super.key,
  });

  @override
  ConsumerState<InvestorHome> createState() => _InvestorHomeState();
}

class _InvestorHomeState extends ConsumerState<InvestorHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   ref.read(projectProvider.notifier).getProject(widget.projectId);
    //   // ref.read(projectProvider.notifier).getProjectInvestors(widget.projectId);
    // });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);
    final authState = ref.watch(authProvider);
    final project = projectState.selectedProject;

    if (projectState.errorMessage != null) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.cardBackground,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu,
                color: AppColors.primary, size: 24.sp),
            onPressed: () => context.pop(),
          ),
        ),
        body: _buildErrorState(projectState.errorMessage!),
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(20.h),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15.0),
              child: TextField(
                onChanged: (value){},
                decoration: InputDecoration(
                  hintText: "Rechercher...",
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Theme.of(context).dialogBackgroundColor,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search, color: Colors.grey),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
          width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: TabBar(
                controller: _tabController,
                // isScrollable: true,
                labelColor: AppColors.primary,
                indicatorColor: AppColors.primary,
                indicatorWeight: 3.h,
                labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                tabs: const [
                  Tab(text: 'Tout'),
                  Tab(text: 'Projets non \ninvestis'),
                  Tab(text: 'Projets \ninvestis'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  SingleChildScrollView(
                    child: InvestorProjectsList(),
                  ),
                  SingleChildScrollView(
                    child: InvestorProjectsList(),
                  ),
                  SingleChildScrollView(
                    child: InvestorProjectsList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitProject(String projectId) async {
    try {
      await ref.read(projectProvider.notifier).submitForReview(projectId);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Project submitted for review'),
            backgroundColor: AppColors.success,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error submitting project: $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  void _showInvestDialog(ProjectEntity project) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'Invest in ${project.title}',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Minimum investment: ${project.minimumInvestment?.toStringAsFixed(0) ?? 'N/A'} ${project.currency ?? 'USD'}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 16.h),
            TextFormField(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textPrimary,
              ),
              decoration: InputDecoration(
                labelText: 'Investment Amount',
                labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: AppColors.textSecondary,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: const BorderSide(color: AppColors.primary),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Investment processing...'),
                  backgroundColor: AppColors.success,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              'Invest',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String errorMessage) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.w),
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
            ).animate().scale(delay: 200.ms),
            SizedBox(height: 24.h),
            Text(
              'Error',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.sp,
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
          ],
        ),
      ),
    );
  }
}
