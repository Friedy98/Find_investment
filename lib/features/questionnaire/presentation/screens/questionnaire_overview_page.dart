import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/providers/questionnaire_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';

class QuestionnaireOverviewPage extends ConsumerStatefulWidget {
  const QuestionnaireOverviewPage({super.key});

  @override
  ConsumerState<QuestionnaireOverviewPage> createState() =>
      _QuestionnaireOverviewPageState();
}

class _QuestionnaireOverviewPageState
    extends ConsumerState<QuestionnaireOverviewPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(questionnaireProvider.notifier)
          .fetchActiveQuestionnaireForMyRole();
    });
  }

  @override
  Widget build(BuildContext context) {
    final questionnaireState = ref.watch(questionnaireProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: LoadingOverlay(
        isLoading: questionnaireState.isLoading,
        child: CustomScrollView(
          slivers: [
            // App Bar
            SliverAppBar(
              expandedHeight: 200.h,
              floating: false,
              pinned: true,
              leading: Padding(
                padding: const EdgeInsets.only(bottom: 11, left: 10),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    context.pop(); // 👉 ferme la page
                  },
                ),
              ),

              // centerTitle: true,
              backgroundColor: AppColors.primary,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'Profile Assessment',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                background: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.primary,
                        AppColors.primaryLight,
                      ],
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.psychology,
                      size: 80.sp,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
            ),

            // Content
            if (questionnaireState.activeQuestionnaire != null)
              SliverToBoxAdapter(
                child: _buildQuestionnaireContent(
                    questionnaireState.activeQuestionnaire!),
              )
            else if (questionnaireState.errorMessage != null)
              SliverFillRemaining(
                child: _buildErrorState(questionnaireState.errorMessage!),
              )
            else
              SliverFillRemaining(
                child: _buildEmptyState(),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionnaireContent(QuestionnaireEntity questionnaire) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Card
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(24.w),
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
                Text(
                  questionnaire.title,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  questionnaire.description ?? '',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    color: AppColors.textSecondary,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ).animate().fadeIn().slideY(begin: 0.3),

          SizedBox(height: 24.h),

          // Stats Cards
          Row(
            children: [
              Expanded(
                child: _buildStatCard(
                  'Questions',
                  '${questionnaire.questionCount ?? questionnaire.questions.length}',
                  Icons.quiz,
                  AppColors.primary,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: _buildStatCard(
                  'Time Est.',
                  '${_estimateTime(questionnaire.questions.length)} min',
                  Icons.access_time,
                  AppColors.success,
                ),
              ),
            ],
          ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.3),

          SizedBox(height: 16.h),

          Row(
            children: [
              Expanded(
                child: _buildStatCard(
                  'Max Score',
                  '${questionnaire.totalMaxScore}',
                  Icons.star,
                  AppColors.warning,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: _buildStatCard(
                  'Pass Score',
                  '${questionnaire.passingScore}',
                  Icons.check_circle,
                  AppColors.info,
                ),
              ),
            ],
          ).animate(delay: 300.ms).fadeIn().slideY(begin: 0.3),

          SizedBox(height: 32.h),

          // Categories Section
          Text(
            'Assessment Categories',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ).animate(delay: 400.ms).fadeIn().slideX(begin: -0.3),

          SizedBox(height: 16.h),

          ...questionnaire.categories.asMap().entries.map((entry) {
            final index = entry.key;
            final category = entry.value;
            final categoryQuestions = questionnaire.questions
                .where((q) => q.category == category.id)
                .length;

            return Container(
              margin: EdgeInsets.only(bottom: 12.h),
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(12.r),
                border: Border(
                    left: BorderSide(
                  width: 4.w,
                  color: _getCategoryColor(index),
                )),
              ),
              child: Row(
                children: [
                  Container(
                    width: 48.w,
                    height: 48.w,
                    decoration: BoxDecoration(
                      color: _getCategoryColor(index).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Icon(
                      _getCategoryIcon(category.id ?? ''),
                      color: _getCategoryColor(index),
                      size: 24.sp,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category.name ?? '',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          category.description ?? '',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    decoration: BoxDecoration(
                      color: _getCategoryColor(index).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      '$categoryQuestions questions',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: _getCategoryColor(index),
                      ),
                    ),
                  ),
                ],
              ),
            )
                .animate(delay: Duration(milliseconds: 500 + (index * 100)))
                .fadeIn()
                .slideX(begin: 0.3);
          }),

          SizedBox(height: 32.h),

          // Important Notes
          Container(
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: AppColors.warning.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: AppColors.warning.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: AppColors.warning,
                      size: 24.sp,
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      'Important Notes',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.warning,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                _buildNoteItem(
                    'Answer honestly - there are no right or wrong answers'),
                _buildNoteItem('Your responses are confidential and secure'),
                _buildNoteItem('You can save your progress and continue later'),
                _buildNoteItem('Complete all questions for accurate results'),
              ],
            ),
          ).animate(delay: 800.ms).fadeIn().slideY(begin: 0.3),

          SizedBox(height: 40.h),

          // Start Button
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              text: 'Start Assessment',
              onPressed: () => _startQuestionnaire(questionnaire.id),
              backgroundColor: AppColors.primary,
              textColor: Colors.white,
              height: 56.h,
            ),
          ).animate(delay: 900.ms).fadeIn().scale(),

          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget _buildStatCard(
      String title, String value, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 48.w,
            height: 48.w,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              icon,
              color: color,
              size: 24.sp,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.sp,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoteItem(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 6.w,
            height: 6.w,
            margin: EdgeInsets.only(top: 8.h, right: 12.w),
            decoration: const BoxDecoration(
              color: AppColors.warning,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String error) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 80.sp,
              color: AppColors.error,
            ),
            SizedBox(height: 16.h),
            Text(
              'Error Loading Assessment',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.sp,
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
            SizedBox(height: 24.h),
            CustomButton(
              text: 'Retry',
              onPressed: () {
                ref
                    .read(questionnaireProvider.notifier)
                    .fetchActiveQuestionnaireForMyRole();
              },
              backgroundColor: AppColors.primary,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.assignment_outlined,
              size: 80.sp,
              color: AppColors.textTertiary,
            ),
            SizedBox(height: 16.h),
            Text(
              'No Assessment Available',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'There is no active assessment for your role at the moment.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Color _getCategoryColor(int index) {
    final colors = [
      AppColors.primary,
      AppColors.success,
      AppColors.warning,
      AppColors.info,
    ];
    return colors[index % colors.length];
  }

  IconData _getCategoryIcon(String categoryId) {
    switch (categoryId) {
      case 'emotional_state':
        return Icons.favorite;
      case 'temperament':
        return Icons.psychology;
      case 'character_traits':
        return Icons.person;
      case 'open_questions':
        return Icons.chat;
      default:
        return Icons.help;
    }
  }

  int _estimateTime(int questionCount) {
    // Estimate 1 minute per question on average
    return questionCount;
  }

  void _startQuestionnaire(String questionnaireId) async {
    try {
      // Vérifier si une soumission existe déjà
      await ref
          .read(questionnaireProvider.notifier)
          .fetchMySubmission(questionnaireId);

      final submission = ref.read(questionnaireProvider).currentSubmission;

      if (mounted) {
        if (submission != null && submission.submittedAt != null) {
          // Soumission existante et soumise : afficher la boîte de dialogue
          final goToHome = await showDialog<bool>(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Questionnaire déjà soumis'),
              content: const Text(
                'Vous avez déjà soumis ce questionnaire. Vous ne pouvez le compléter qu\'une seule fois. Voulez-vous retourner à la page principale ?',
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Annuler'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                  ),
                  child: const Text(
                    'Retourner à l\'accueil',
                    style: TextStyle(color: AppColors.background),
                  ),
                ),
              ],
            ),
          );

          if (goToHome == true) {
            if (mounted) {
              context.go('/project-owner/home');
            }
          }
          return;
        }

        // Pas de soumission soumise : démarrer le questionnaire
        await ref
            .read(questionnaireProvider.notifier)
            .startQuestionnaire(questionnaireId);

        if (mounted) {
          context.push('/questionnaire/$questionnaireId/take');
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Échec du démarrage du questionnaire : $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }
}
