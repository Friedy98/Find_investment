import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/providers/questionnaire_provider.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/widgets/question_widget.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TakeQuestionnairePage extends ConsumerStatefulWidget {
  final String questionnaireId;

  const TakeQuestionnairePage({
    super.key,
    required this.questionnaireId,
  });

  @override
  ConsumerState<TakeQuestionnairePage> createState() =>
      _TakeQuestionnairePageState();
}

class _TakeQuestionnairePageState extends ConsumerState<TakeQuestionnairePage> {
  final PageController _pageController = PageController();
  int _currentQuestionIndex = 0;
  final Map<String, dynamic> _answers = {};
  bool _isSubmitting = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadQuestionnaire();
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _loadQuestionnaire() async {
    await ref
        .read(questionnaireProvider.notifier)
        .fetchActiveQuestionnaireForMyRole();
    await ref
        .read(questionnaireProvider.notifier)
        .fetchMySubmission(widget.questionnaireId);

    final submission = ref.read(questionnaireProvider).currentSubmission;
    if (submission != null) {
      // Load existing answers
      for (final answer in submission.answers) {
        _answers[answer.questionId] = answer.answer;
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final questionnaireState = ref.watch(questionnaireProvider);
    final questionnaire = questionnaireState.activeQuestionnaire;
    final submission = questionnaireState.currentSubmission;

    if (questionnaire == null) {
      return Scaffold(
        backgroundColor: AppColors.background,
        body: LoadingOverlay(
          isLoading: questionnaireState.isLoading,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    final questions = questionnaire.questions
      ..sort((a, b) => a.order.compareTo(b.order));
    final currentQuestion = questions[_currentQuestionIndex];
    final progress = (_currentQuestionIndex + 1) / questions.length;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: LoadingOverlay(
        isLoading: _isSubmitting,
        child: Column(
          children: [
            // Header with progress
            Container(
              padding: EdgeInsets.fromLTRB(20.w, 60.h, 20.w, 20.h),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
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
                  // Top bar
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => _showExitDialog(),
                        icon: Icon(
                          Icons.close,
                          color: AppColors.textSecondary,
                          size: 24.sp,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          questionnaire.title,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      IconButton(
                        onPressed: () => _saveDraft(),
                        icon: Icon(
                          Icons.save_outlined,
                          color: AppColors.primary,
                          size: 24.sp,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 16.h),

                  // Progress bar
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Question ${_currentQuestionIndex + 1} of ${questions.length}',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          Text(
                            '${(progress * 100).toInt()}%',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      LinearProgressIndicator(
                        value: progress,
                        backgroundColor:
                            AppColors.textTertiary.withOpacity(0.2),
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.primary),
                        minHeight: 4.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Question content
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentQuestionIndex = index;
                  });
                },
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  final question = questions[index];
                  return SingleChildScrollView(
                    padding: EdgeInsets.all(20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Category badge
                        if (question.category != null)
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 6.h),
                            decoration: BoxDecoration(
                              color: _getCategoryColor(question.category!)
                                  .withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Text(
                              _getCategoryName(
                                  question.category!, questionnaire.categories),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: _getCategoryColor(question.category!),
                              ),
                            ),
                          ).animate().fadeIn().slideX(begin: -0.3),

                        SizedBox(height: 16.h),

                        // Question
                        QuestionWidget(
                          question: question,
                          answer: _answers[question.id],
                          onAnswerChanged: (answer) {
                            setState(() {
                              _answers[question.id] = answer;
                            });
                            // Enregistrer immédiatement seulement si ce n'est pas text ou textarea
                            if (!['text', 'textarea'].contains(question.type)) {
                              _saveAnswer(question.id, answer);
                            }
                          },
                        ).animate().fadeIn().slideY(begin: 0.3),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Navigation buttons
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  if (_currentQuestionIndex > 0)
                    Expanded(
                      child: CustomButton(
                        text: 'Previous',
                        onPressed: _previousQuestion,
                        backgroundColor:
                            AppColors.textTertiary.withOpacity(0.1),
                        textColor: AppColors.textSecondary,
                      ),
                    ),
                  if (_currentQuestionIndex > 0) SizedBox(width: 16.w),
                  Expanded(
                    child: CustomButton(
                      text: _currentQuestionIndex == questions.length - 1
                          ? 'Submit'
                          : 'Next',
                      onPressed: _currentQuestionIndex == questions.length - 1
                          ? _submitQuestionnaire
                          : _nextQuestion,
                      backgroundColor: AppColors.primary,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getCategoryColor(String categoryId) {
    switch (categoryId) {
      case 'emotional_state':
        return AppColors.primary;
      case 'temperament':
        return AppColors.success;
      case 'character_traits':
        return AppColors.warning;
      case 'open_questions':
        return AppColors.info;
      default:
        return AppColors.textSecondary;
    }
  }

  String _getCategoryName(String categoryId, List<CategoryEntity> categories) {
    final category = categories.firstWhere(
      (c) => c.id == categoryId,
      orElse: () => const CategoryEntity(name: 'Unknown'),
    );
    return category.name ?? 'Unknown';
  }

  Future<void> _nextQuestion() async {
    final questions =
        ref.read(questionnaireProvider).activeQuestionnaire!.questions;
    final currentQuestion = questions[_currentQuestionIndex];

    // Enregistrer si text/textarea et réponse locale existante
    if (['text', 'textarea'].contains(currentQuestion.type) &&
        _answers.containsKey(currentQuestion.id)) {
      try {
        await _saveAnswer(currentQuestion.id, _answers[currentQuestion.id]);
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to save answer: $e'),
              backgroundColor: AppColors.error,
            ),
          );
        }
        return; // Arrêtez si erreur
      }
    }

    if (_currentQuestionIndex < questions.length - 1) {
      await _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> _previousQuestion() async {
    final questions =
        ref.read(questionnaireProvider).activeQuestionnaire!.questions;
    final currentQuestion = questions[_currentQuestionIndex];

    // Enregistrer si text/textarea et réponse locale existante
    if (['text', 'textarea'].contains(currentQuestion.type) &&
        _answers.containsKey(currentQuestion.id)) {
      try {
        await _saveAnswer(currentQuestion.id, _answers[currentQuestion.id]);
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to save answer: $e'),
              backgroundColor: AppColors.error,
            ),
          );
        }
        return; // Arrêtez si erreur
      }
    }

    if (_currentQuestionIndex > 0) {
      await _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> _saveAnswer(String questionId, dynamic answer) async {
    final submission = ref.read(questionnaireProvider).currentSubmission;
    if (submission != null) {
      try {
        await ref.read(questionnaireProvider.notifier).saveAnswer(
              submission.id,
              questionId,
              answer,
            );
      } catch (e) {
        // Handle error silently for auto-save
        rethrow; // Optionnel : relancez l'erreur pour la gérer dans _submitQuestionnaire
      }
    }
  }

  Future<void> _saveDraft() async {
    final questionnaire = ref.read(questionnaireProvider).activeQuestionnaire!;
    final submission = ref.read(questionnaireProvider).currentSubmission;

    if (submission == null) return;

    try {
      // Enregistrer toutes les réponses pending (tous types, mais surtout text/textarea)
      for (final q in questionnaire.questions) {
        if (_answers.containsKey(q.id)) {
          await _saveAnswer(q.id, _answers[q.id]);
        }
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            showCloseIcon: true,
            content: Text('Progress saved successfully'),
            backgroundColor: AppColors.success,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            showCloseIcon: true,
            content: Text('Failed to save progress: $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  void _submitQuestionnaire() async {
    final questionnaire = ref.read(questionnaireProvider).activeQuestionnaire!;
    final submission = ref.read(questionnaireProvider).currentSubmission;

    if (submission == null) return;

    // Check if all required questions are answered
    final unansweredRequired = questionnaire.questions
        .where((q) => q.required && !_answers.containsKey(q.id))
        .toList();

    // Enregistrer toutes les réponses text/textarea pending
    for (final q in questionnaire.questions) {
      if (['text', 'textarea'].contains(q.type) && _answers.containsKey(q.id)) {
        try {
          await _saveAnswer(q.id, _answers[q.id]);
        } catch (e) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Failed to save answer for question ${q.id}: $e'),
                backgroundColor: AppColors.error,
              ),
            );
          }
          return; // Arrêtez si une sauvegarde échoue
        }
      }
    }

    if (unansweredRequired.isNotEmpty) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Please answer all required questions (${unansweredRequired.length} remaining)'),
            backgroundColor: AppColors.error,
          ),
        );
      }
      return;
    }

    // Show confirmation dialog
    if (mounted) {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Submit Assessment'),
          content: const Text(
              'Are you sure you want to submit your assessment? You cannot change your answers after submission.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
              ),
              child: const Text(
                'Submit',
                style: TextStyle(color: AppColors.cardBackground),
              ),
            ),
          ],
        ),
      );

      if (confirmed != true) return;
    }

    setState(() {
      _isSubmitting = true;
    });

    try {
      await ref
          .read(questionnaireProvider.notifier)
          .submitQuestionnaire(submission.id);

      if (mounted) {
        context
            .pushReplacement('/questionnaire/${widget.questionnaireId}/result');
      }
    } catch (e) {
      setState(() {
        _isSubmitting = false;
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to submit assessment: $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  void _showExitDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exit Assessment'),
        content: const Text(
            'Your progress will be saved. You can continue later from where you left off.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Continue'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
            ),
            child: const Text(
              'Exit',
              style: TextStyle(color: AppColors.background),
            ),
          ),
        ],
      ),
    );
  }
}
