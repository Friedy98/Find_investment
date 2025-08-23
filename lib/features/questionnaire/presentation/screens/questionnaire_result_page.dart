import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_submission_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/providers/questionnaire_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionnaireResultPage extends ConsumerStatefulWidget {
  final String questionnaireId;

  const QuestionnaireResultPage({
    super.key,
    required this.questionnaireId,
  });

  @override
  ConsumerState<QuestionnaireResultPage> createState() =>
      _QuestionnaireResultPageState();
}

class _QuestionnaireResultPageState
    extends ConsumerState<QuestionnaireResultPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(questionnaireProvider.notifier)
          .fetchMySubmission(widget.questionnaireId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final questionnaireState = ref.watch(questionnaireProvider);
    final submission = questionnaireState.currentSubmission;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: LoadingOverlay(
        isLoading: questionnaireState.isLoading,
        child: submission != null
            ? _buildResultContent(submission)
            : _buildLoadingState(),
      ),
    );
  }

  Widget _buildResultContent(QuestionnaireSubmissionEntity submission) {
    final isPassed = submission.passed;

    return CustomScrollView(
      slivers: [
        // Header
        SliverAppBar(
          expandedHeight: 230.h,
          floating: false,
          pinned: true,
          backgroundColor: isPassed ? AppColors.success : AppColors.warning,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 24.sp,
            ),
            onPressed: () => context.pop(),
          ),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              'Assessment Complete',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            background: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    isPassed ? AppColors.success : AppColors.warning,
                    isPassed
                        ? AppColors.success.withOpacity(0.8)
                        : AppColors.warning.withOpacity(0.8),
                  ],
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 16.h),
                    Icon(
                      isPassed
                          ? Icons.check_circle_outline
                          : Icons.info_outline,
                      size: 80.sp,
                      color: Colors.white.withOpacity(0.9),
                    ).animate().scale(delay: 300.ms),

                    // Text(
                    //   isPassed ? 'Congratulations!' : 'Assessment Submitted',
                    //   style: TextStyle(
                    //     fontFamily: 'Poppins',
                    //     fontSize: 24.sp,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.white,
                    //   ),
                    // ).animate(delay: 500.ms).fadeIn().slideY(begin: 0.3),
                  ],
                ),
              ),
            ),
          ),
        ),

        // Content
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              children: [
                // Score Card
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
                    children: [
                      Text(
                        'Your Score',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${submission.totalScore}',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 48.sp,
                              fontWeight: FontWeight.bold,
                              color: isPassed
                                  ? AppColors.success
                                  : AppColors.warning,
                            ),
                          ),
                          Text(
                            ' / ${submission.maxTotalScore}',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24.sp,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        '${submission.percentage}%',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      LinearProgressIndicator(
                        value: submission.percentage / 100,
                        backgroundColor:
                            AppColors.textTertiary.withOpacity(0.2),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          isPassed ? AppColors.success : AppColors.warning,
                        ),
                        minHeight: 8.h,
                      ),
                    ],
                  ),
                ).animate().fadeIn().slideY(begin: 0.3),

                SizedBox(height: 24.h),

                // Status Card
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    color: isPassed
                        ? AppColors.success.withOpacity(0.1)
                        : AppColors.warning.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: isPassed
                          ? AppColors.success.withOpacity(0.3)
                          : AppColors.warning.withOpacity(0.3),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        isPassed ? Icons.check_circle : Icons.info,
                        color: isPassed ? AppColors.success : AppColors.warning,
                        size: 24.sp,
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              isPassed
                                  ? 'Assessment Passed'
                                  : 'Assessment Under Review',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: isPassed
                                    ? AppColors.success
                                    : AppColors.warning,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              isPassed
                                  ? 'Congratulations! You have successfully completed the assessment.'
                                  : 'Your assessment is being reviewed. You will be notified of the results.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.3),

                SizedBox(height: 24.h),

                // Category Scores
                if (submission.categoryScores.isNotEmpty) ...[
                  Text(
                    'Category Breakdown',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ).animate(delay: 400.ms).fadeIn().slideX(begin: -0.3),
                  SizedBox(height: 16.h),
                  ...submission.categoryScores.asMap().entries.map((entry) {
                    final index = entry.key;
                    final categoryScore = entry.value;
                    final percentage = categoryScore.percentage;

                    return Container(
                      margin: EdgeInsets.only(bottom: 16.h),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  categoryScore.categoryName ??
                                      'Unknown Category',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                              Text(
                                '${categoryScore.score}/${categoryScore.maxScore}',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: _getCategoryColor(index),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          LinearProgressIndicator(
                            value: percentage / 100,
                            backgroundColor:
                                AppColors.textTertiary.withOpacity(0.2),
                            valueColor: AlwaysStoppedAnimation<Color>(
                                _getCategoryColor(index)),
                            minHeight: 6.h,
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            '$percentage%',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.sp,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    )
                        .animate(
                            delay: Duration(milliseconds: 500 + (index * 100)))
                        .fadeIn()
                        .slideX(begin: 0.3);
                  }),
                ],

                SizedBox(height: 32.h),

                // Completion Info
                Container(
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    color: AppColors.info.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: AppColors.info.withOpacity(0.3),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: AppColors.info,
                            size: 20.sp,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            'Completion Time',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.info,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            _formatDuration(submission.completionTime),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: AppColors.info,
                            size: 20.sp,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            'Submitted',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.info,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            _formatDate(submission.submittedAt),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ).animate(delay: 800.ms).fadeIn().slideY(begin: 0.3),

                SizedBox(height: 40.h),

                // Action Buttons
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: CustomButton(
                        text: 'Back to Dashboard',
                        onPressed: () => context.go('/project-owner/home'),
                        backgroundColor: AppColors.primary,
                        textColor: Colors.white,
                        height: 56.h,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    SizedBox(
                      width: double.infinity,
                      child: CustomButton(
                        text: 'View My Profile',
                        onPressed: () => context.push('/project-owner/profile'),
                        backgroundColor:
                            AppColors.textTertiary.withOpacity(0.1),
                        textColor: AppColors.textSecondary,
                        height: 48.h,
                      ),
                    ),
                  ],
                ).animate(delay: 1000.ms).fadeIn().scale(),

                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoadingState() {
    return const Center(
      child: CircularProgressIndicator(),
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

  String _formatDuration(int seconds) {
    final duration = Duration(seconds: seconds);
    final minutes = duration.inMinutes;
    final remainingSeconds = duration.inSeconds % 60;

    if (minutes > 0) {
      return '${minutes}m ${remainingSeconds}s';
    } else {
      return '${remainingSeconds}s';
    }
  }

  String _formatDate(DateTime? date) {
    if (date == null) return 'Unknown';

    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays == 0) {
      return 'Today at ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
    } else if (difference.inDays == 1) {
      return 'Yesterday';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
  }
}
