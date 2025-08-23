// Path: lib/features/questionnaire/data/repositories/questionnaire_repository_impl.dart
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/questionnaire/data/datasources/questionnaire_remote_datasource.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_submission_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/repositories/questionnaire_repository.dart';
import 'package:find_invest_mobile/features/questionnaire/data/extensions/questionnaire_extensions.dart';

class QuestionnaireRepositoryImpl implements QuestionnaireRepository {
  final QuestionnaireRemoteDataSource remoteDataSource;

  QuestionnaireRepositoryImpl({required this.remoteDataSource});

  @override
  Future<QuestionnaireEntity> getActiveQuestionnaireForMyRole() async {
    try {
      final questionnaireModel =
          await remoteDataSource.getActiveQuestionnaireForMyRole();
      LoggingService.info(
          'QuestionnaireRepositoryImpl: Converting active questionnaire to entity');
      return questionnaireModel.toEntity();
    } catch (e) {
      LoggingService.error('Get active questionnaire for my role error: $e');
      throw Exception('Failed to fetch active questionnaire');
    }
  }

  @override
  Future<QuestionnaireSubmissionEntity> getMySubmission(
      String questionnaireId) async {
    try {
      final submissionModel =
          await remoteDataSource.getMySubmission(questionnaireId);
      LoggingService.info(
          'QuestionnaireRepositoryImpl: Converting submission for questionnaire $questionnaireId to entity');
      return submissionModel.toEntity();
    } catch (e) {
      LoggingService.error('Get my submission error: $e');
      throw Exception('Failed to fetch submission');
    }
  }

  @override
  Future<QuestionnaireSubmissionEntity> startQuestionnaire(String id) async {
    try {
      final submissionModel = await remoteDataSource.startQuestionnaire(id);
      LoggingService.info(
          'QuestionnaireRepositoryImpl: Converting started submission for questionnaire $id to entity');
      return submissionModel.toEntity();
    } catch (e) {
      LoggingService.error('Start questionnaire error: $e');
      throw Exception('Failed to start questionnaire');
    }
  }

  @override
  Future<QuestionnaireSubmissionEntity> saveAnswer(
      String submissionId, String questionId, dynamic answer) async {
    try {
      final submissionModel =
          await remoteDataSource.saveAnswer(submissionId, questionId, answer);
      LoggingService.info(
          'QuestionnaireRepositoryImpl: Converting saved answer submission $submissionId to entity');
      return submissionModel.toEntity();
    } catch (e) {
      LoggingService.error('Save answer error: $e');
      throw Exception('Failed to save answer');
    }
  }

  @override
  Future<QuestionnaireSubmissionEntity> submitQuestionnaire(
      String submissionId) async {
    try {
      final submissionModel =
          await remoteDataSource.submitQuestionnaire(submissionId);
      LoggingService.info(
          'QuestionnaireRepositoryImpl: Converting submitted submission $submissionId to entity');
      return submissionModel.toEntity();
    } catch (e) {
      LoggingService.error('Submit questionnaire error: $e');
      throw Exception('Failed to submit questionnaire');
    }
  }

  @override
  Future<Map<String, dynamic>> checkQuestionnaireRequirement(
      String action) async {
    try {
      final result =
          await remoteDataSource.checkQuestionnaireRequirement(action);
      LoggingService.info(
          'QuestionnaireRepositoryImpl: Retrieved requirement check for action $action');
      return result;
    } catch (e) {
      LoggingService.error('Check questionnaire requirement error: $e');
      throw Exception('Failed to check questionnaire requirement');
    }
  }
}
