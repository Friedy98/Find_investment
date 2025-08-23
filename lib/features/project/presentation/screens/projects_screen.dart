import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
// import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';

class ProjectsScreen extends ConsumerStatefulWidget {
  const ProjectsScreen({super.key});

  @override
  ConsumerState<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends ConsumerState<ProjectsScreen> {
  @override
  void initState() {
    super.initState();
    // Schedule fetchProjects after the frame to avoid modifying provider during build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final userId = ref.read(authProvider).user?.id;
      if (userId != null) {
        ref.read(projectProvider.notifier).fetchProjects(owner: userId);
        // print('ProjectsScreen: fetchProjects scheduled for userId=$userId');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // print('ProjectsScreen build');
    final projectState = ref.watch(projectProvider);
    // final user = ref.watch(authProvider).user;

    return Scaffold(
      backgroundColor: AppColors.background,
      floatingActionButton: projectState.projects.isNotEmpty
          ? FloatingActionButton(
              onPressed: () {
                // print('ProjectsScreen: Add Project clicked');
                context.push('/project-owner/add-project');
              },
              backgroundColor: AppColors.primary,
              child: Icon(Icons.add, size: 24.sp, color: Colors.white),
            )
          : null,
      body: projectState.isLoading
          ? Center(
              child: CircularProgressIndicator(
                color: AppColors.primary,
                strokeWidth: 2.w,
              ),
            )
          : SingleChildScrollView(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Welcome Card
                  Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [AppColors.primary, AppColors.primaryLight],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16.r),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black.withOpacity(0.1),
                      //     blurRadius: 10.r,
                      //     offset: Offset(0, 4.h),
                      //   ),
                      // ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline_outlined,
                          size: 50.sp,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10.w),
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
                          width: double.infinity.w,
                          child: CustomButton(
                            backgroundColor: AppColors.cardBackground,
                            textColor: AppColors.primary,
                            text: 'Reply',
                            onPressed: () {
                              // print('ProjectsScreen: Reply clicked');
                              context.go('/project-owner/update-profile');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  // Projects List or Empty State
                  if (projectState.projects.isEmpty)
                    Column(
                      children: [
                        Lottie.asset(
                          'assets/lottie/no_projects.json',
                          width: 200.w,
                          height: 200.h,
                          fit: BoxFit.contain,
                        ),
                        // SizedBox(height: 16.h),
                        Text(
                          'No Projects Yet',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textPrimary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'Start by adding your first project to showcase your ideas!',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: AppColors.textSecondary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 24.h),
                        CustomButton(
                          text: 'Add Project',
                          onPressed: () {
                            // print('ProjectsScreen: Add Project clicked');
                            context.push('/project-owner/add-project');
                          },
                        ),
                      ],
                    )
                  else
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: projectState.projects.length,
                      itemBuilder: (context, index) {
                        final project = projectState.projects[index];
                        return Card(
                          color: AppColors.cardBackground,
                          elevation: 2,
                          margin: EdgeInsets.symmetric(vertical: 8.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.all(16.w),
                            title: Text(
                              project.title,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            subtitle: Text(
                              project.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            onTap: () {
                              // print(
                              //     'ProjectsScreen: Project ${project.id} clicked');
                              context
                                  .push('/project-owner/project/${project.id}');
                            },
                          ),
                        );
                      },
                    ),
                ],
              ),
            ),
    );
  }
}
