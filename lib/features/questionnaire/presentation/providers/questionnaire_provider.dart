import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_submission_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/usecases/check_questionnaire_requirement.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/usecases/get_active_questionnaire_for_my_role.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/usecases/get_my_submission.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/usecases/save_answer.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/usecases/start_questionnaire.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/usecases/submit_questionnaire.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';

// Enum for managing error types
enum QuestionnaireErrorType {
  network,
  validation,
  notFound,
  server,
  unknown,
}

class QuestionnaireState {
  final QuestionnaireEntity? activeQuestionnaire;
  final List<QuestionnaireSubmissionEntity> submissions;
  final QuestionnaireSubmissionEntity? currentSubmission;
  final Map<String, dynamic>? requirementCheck;
  final bool isLoading;
  final QuestionnaireErrorType? errorType;
  final String? errorMessage;

  QuestionnaireState({
    this.activeQuestionnaire,
    this.submissions = const [],
    this.currentSubmission,
    this.requirementCheck,
    this.isLoading = false,
    this.errorType,
    this.errorMessage,
  });

  QuestionnaireState copyWith({
    QuestionnaireEntity? activeQuestionnaire,
    List<QuestionnaireSubmissionEntity>? submissions,
    QuestionnaireSubmissionEntity? currentSubmission,
    Map<String, dynamic>? requirementCheck,
    bool? isLoading,
    QuestionnaireErrorType? errorType,
    String? errorMessage,
  }) {
    return QuestionnaireState(
      activeQuestionnaire: activeQuestionnaire ?? this.activeQuestionnaire,
      submissions: submissions ?? this.submissions,
      currentSubmission: currentSubmission ?? this.currentSubmission,
      requirementCheck: requirementCheck ?? this.requirementCheck,
      isLoading: isLoading ?? this.isLoading,
      errorType: errorType,
      errorMessage: errorMessage,
    );
  }
}

final questionnaireProvider =
    StateNotifierProvider<QuestionnaireNotifier, QuestionnaireState>((ref) {
  return QuestionnaireNotifier(
    getActiveQuestionnaireForMyRoleUseCase:
        getIt<GetActiveQuestionnaireForMyRole>(),
    getMySubmissionUseCase: getIt<GetMySubmission>(),
    startQuestionnaireUseCase: getIt<StartQuestionnaire>(),
    saveAnswerUseCase: getIt<SaveAnswer>(),
    submitQuestionnaireUseCase: getIt<SubmitQuestionnaire>(),
    checkQuestionnaireRequirementUseCase:
        getIt<CheckQuestionnaireRequirement>(),
  );
});

class QuestionnaireNotifier extends StateNotifier<QuestionnaireState> {
  final GetActiveQuestionnaireForMyRole getActiveQuestionnaireForMyRoleUseCase;
  final GetMySubmission getMySubmissionUseCase;
  final StartQuestionnaire startQuestionnaireUseCase;
  final SaveAnswer saveAnswerUseCase;
  final SubmitQuestionnaire submitQuestionnaireUseCase;
  final CheckQuestionnaireRequirement checkQuestionnaireRequirementUseCase;

  QuestionnaireNotifier({
    required this.getActiveQuestionnaireForMyRoleUseCase,
    required this.getMySubmissionUseCase,
    required this.startQuestionnaireUseCase,
    required this.saveAnswerUseCase,
    required this.submitQuestionnaireUseCase,
    required this.checkQuestionnaireRequirementUseCase,
  }) : super(QuestionnaireState());

  // Utility method to map errors to QuestionnaireErrorType
  QuestionnaireErrorType _mapErrorToType(dynamic error) {
    if (error.toString().contains('Network'))
      return QuestionnaireErrorType.network;
    if (error.toString().contains('404'))
      return QuestionnaireErrorType.notFound;
    if (error.toString().contains('Validation'))
      return QuestionnaireErrorType.validation;
    if (error.toString().contains('Server'))
      return QuestionnaireErrorType.server;
    return QuestionnaireErrorType.unknown;
  }

  // Utility method to update the current submission
  void _updateCurrentSubmission(QuestionnaireSubmissionEntity submission) {
    state = state.copyWith(
      submissions: state.submissions
          .map((s) => s.id == submission.id ? submission : s)
          .toList(),
      currentSubmission: submission,
      isLoading: false,
    );
  }

  Future<void> fetchActiveQuestionnaireForMyRole() async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final questionnaire = await getActiveQuestionnaireForMyRoleUseCase();
      state =
          state.copyWith(activeQuestionnaire: questionnaire, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchMySubmission(String questionnaireId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final submission = await getMySubmissionUseCase(questionnaireId);
      state = state.copyWith(
        submissions: [...state.submissions, submission],
        currentSubmission: submission,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> startQuestionnaire(String id) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final submission = await startQuestionnaireUseCase(id);
      state = state.copyWith(
        submissions: [...state.submissions, submission],
        currentSubmission: submission,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> saveAnswer(
      String submissionId, String questionId, dynamic answer) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final submission =
          await saveAnswerUseCase(submissionId, questionId, answer);
      _updateCurrentSubmission(submission);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> submitQuestionnaire(String submissionId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final submission = await submitQuestionnaireUseCase(submissionId);
      _updateCurrentSubmission(submission);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> checkQuestionnaireRequirement(String action) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final result = await checkQuestionnaireRequirementUseCase(action);
      state = state.copyWith(requirementCheck: result, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }
}
