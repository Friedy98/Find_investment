import 'package:find_invest_mobile/features/project/presentation/widgets/basic_infor_form.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/features/project_category/presentation/providers/project_category_provider.dart';
import 'package:go_router/go_router.dart';

class BasicInfoUpdatePage extends ConsumerStatefulWidget {
  final String projectId;

  const BasicInfoUpdatePage({super.key, required this.projectId});

  @override
  ConsumerState<BasicInfoUpdatePage> createState() =>
      _BasicInfoUpdatePageState();
}

class _BasicInfoUpdatePageState extends ConsumerState<BasicInfoUpdatePage> {
  @override
  void initState() {
    super.initState();
    // Fetch project details and categories
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(projectProvider.notifier).getProject(widget.projectId);
      ref.read(projectCategoryProvider.notifier).fetchCategories();
    });
  }

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);
    final categoryState = ref.watch(projectCategoryProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mettre à jour les informations de base',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.primary,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 24.sp, color: Colors.white),
          onPressed: () => context.pop(),
        ),
        elevation: 0,
      ),
      body: Container(
        // color: AppColors.background,
        child: projectState.isLoading || categoryState.isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                ),
              ).animate().fadeIn()
            : projectState.errorMessage != null
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 48.sp,
                          color: AppColors.error,
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          projectState.errorMessage ?? 'Erreur inconnue',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: AppColors.error,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16.h),
                        CustomButton(
                          text: 'Réessayer',
                          onPressed: () {
                            ref
                                .read(projectProvider.notifier)
                                .getProject(widget.projectId);
                            ref
                                .read(projectCategoryProvider.notifier)
                                .fetchCategories();
                          },
                          backgroundColor: AppColors.primary,
                        ),
                      ],
                    ),
                  ).animate().fadeIn().slideY(begin: 0.3)
                : projectState.selectedProject == null
                    ? Center(
                        child: Text(
                          'Projet non trouvé',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ).animate().fadeIn()
                    : Card(
                        color: AppColors.background,
                        // margin: EdgeInsets.symmetric(horizontal: 16.w),
                        // elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: BasicInfoFormComponent(
                          projectId: widget.projectId,
                          onUpdate: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Informations mises à jour avec succès'),
                                backgroundColor: AppColors.success,
                              ),
                            );
                          },
                        ),
                      ).animate().fadeIn().slideY(begin: 0.3),
      ),
    );
  }
}
