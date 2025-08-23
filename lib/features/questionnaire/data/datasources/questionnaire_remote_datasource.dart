// Path: lib/features/questionnaire/data/datasources/questionnaire_remote_datasource.dart
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/questionnaire/data/models/questionnaire_model.dart';
import 'package:find_invest_mobile/features/questionnaire/data/models/questionnaire_submission_model.dart';

abstract class QuestionnaireRemoteDataSource {
  Future<QuestionnaireModel> getActiveQuestionnaireForMyRole();

  Future<QuestionnaireSubmissionModel> getMySubmission(String questionnaireId);

  Future<QuestionnaireSubmissionModel> startQuestionnaire(String id);

  Future<QuestionnaireSubmissionModel> saveAnswer(
      String submissionId, String questionId, dynamic answer);

  Future<QuestionnaireSubmissionModel> submitQuestionnaire(String submissionId);

  Future<Map<String, dynamic>> checkQuestionnaireRequirement(String action);
}

class QuestionnaireRemoteDataSourceImpl
    implements QuestionnaireRemoteDataSource {
  final NetworkService networkService;

  QuestionnaireRemoteDataSourceImpl({required this.networkService});

  @override
  Future<QuestionnaireModel> getActiveQuestionnaireForMyRole() async {
    try {
      final response =
          await networkService.get('/questionnaires/active/my-role');
      return QuestionnaireModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Get active questionnaire for my role error: $e');
      throw Exception('Failed to fetch active questionnaire');
    }
  }

  @override
  Future<QuestionnaireSubmissionModel> getMySubmission(
      String questionnaireId) async {
    try {
      final response = await networkService
          .get('/questionnaires/my-submission/$questionnaireId');
      return QuestionnaireSubmissionModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Get my submission error: $e');
      throw Exception('Failed to fetch submission');
    }
  }

  @override
  Future<QuestionnaireSubmissionModel> startQuestionnaire(String id) async {
    try {
      final response = await networkService.post('/questionnaires/$id/start');
      return QuestionnaireSubmissionModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Start questionnaire error: $e');
      throw Exception('Failed to start questionnaire');
    }
  }

  @override
  Future<QuestionnaireSubmissionModel> saveAnswer(
      String submissionId, String questionId, dynamic answer) async {
    try {
      final data = {'questionId': questionId, 'answer': answer};
      final response = await networkService
          .post('/questionnaires/submissions/$submissionId/answer', data: data);
      return QuestionnaireSubmissionModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Save answer error: $e');
      throw Exception('Failed to save answer');
    }
  }

  @override
  Future<QuestionnaireSubmissionModel> submitQuestionnaire(
      String submissionId) async {
    try {
      final response = await networkService
          .post('/questionnaires/submissions/$submissionId/submit');
      return QuestionnaireSubmissionModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Submit questionnaire error: $e');
      throw Exception('Failed to submit questionnaire');
    }
  }

  @override
  Future<Map<String, dynamic>> checkQuestionnaireRequirement(
      String action) async {
    try {
      final response =
          await networkService.get('/questionnaires/check-requirement/$action');
      return response.data['data'] as Map<String, dynamic>;
    } catch (e) {
      LoggingService.error('Check questionnaire requirement error: $e');
      throw Exception('Failed to check questionnaire requirement');
    }
  }
}
