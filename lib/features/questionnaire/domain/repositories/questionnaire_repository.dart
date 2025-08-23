// Path: lib/features/questionnaire/domain/repositories/questionnaire_repository.dart
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_submission_entity.dart';

abstract class QuestionnaireRepository {
  Future<QuestionnaireEntity> getActiveQuestionnaireForMyRole();
  Future<QuestionnaireSubmissionEntity> getMySubmission(String questionnaireId);
  Future<QuestionnaireSubmissionEntity> startQuestionnaire(String id);
  Future<QuestionnaireSubmissionEntity> saveAnswer(
      String submissionId, String questionId, dynamic answer);
  Future<QuestionnaireSubmissionEntity> submitQuestionnaire(
      String submissionId);
  Future<Map<String, dynamic>> checkQuestionnaireRequirement(String action);
}
