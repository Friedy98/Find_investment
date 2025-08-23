// Path: lib/features/questionnaire/data/extensions/questionnaire_extensions.dart
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/questionnaire/data/models/questionnaire_model.dart';
import 'package:find_invest_mobile/features/questionnaire/data/models/questionnaire_submission_model.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_submission_entity.dart';
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';

extension QuestionnaireModelExtension on QuestionnaireModel {
  QuestionnaireEntity toEntity() => QuestionnaireEntity(
        id: id,
        title: title,
        description: description,
        targetRole: targetRole,
        version: version,
        status: status,
        questions: questions.map((q) => q.toEntity()).toList(),
        totalMaxScore: totalMaxScore,
        passingScore: passingScore,
        scoringMethod: scoringMethod,
        categories: categories.map((c) => c.toEntity()).toList(),
        settings: settings.toEntity(),
        createdBy: _convertUser(createdBy),
        lastModifiedBy: _convertUser(lastModifiedBy),
        publishedAt: publishedAt,
        archivedAt: archivedAt,
        stats: stats.toEntity(),
        createdAt: createdAt,
        updatedAt: updatedAt,
        completionRate: completionRate,
        questionCount: questionCount,
        requiredQuestionCount: requiredQuestionCount,
      );

  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }
}

extension QuestionModelExtension on QuestionModel {
  QuestionEntity toEntity() => QuestionEntity(
        id: id,
        type: type,
        question: question,
        description: description,
        required: required,
        order: order,
        options: options?.map((o) => o.toEntity()).toList(),
        validation: validation?.toEntity(),
        scoring: scoring?.toEntity(),
        conditions: conditions.map((c) => c.toEntity()).toList(),
        category: category,
        tags: tags,
      );
}

extension QuestionOptionModelExtension on QuestionOptionModel {
  QuestionOptionEntity toEntity() => QuestionOptionEntity(
        id: id,
        label: label,
        value: value,
        score: score,
      );
}

extension QuestionValidationModelExtension on QuestionValidationModel {
  QuestionValidationEntity toEntity() => QuestionValidationEntity(
        minLength: minLength,
        maxLength: maxLength,
        min: min,
        max: max,
        pattern: pattern,
        customMessage: customMessage,
      );
}

extension QuestionScoringModelExtension on QuestionScoringModel {
  QuestionScoringEntity toEntity() => QuestionScoringEntity(
        type: type,
        maxScore: maxScore,
        weight: weight,
        criteria: criteria?.map((c) => c.toEntity()).toList(),
      );
}

extension ScoringCriterionModelExtension on ScoringCriterionModel {
  ScoringCriterionEntity toEntity() => ScoringCriterionEntity(
        condition: condition,
        score: score,
        description: description,
      );
}

extension QuestionConditionModelExtension on QuestionConditionModel {
  QuestionConditionEntity toEntity() => QuestionConditionEntity(
        questionId: questionId,
        operator: operator,
        value: value,
        action: action,
      );
}

extension CategoryModelExtension on CategoryModel {
  CategoryEntity toEntity() => CategoryEntity(
        id: id,
        name: name,
        description: description,
        weight: weight,
        order: order,
      );
}

extension QuestionnaireSettingsModelExtension on QuestionnaireSettingsModel {
  QuestionnaireSettingsEntity toEntity() => QuestionnaireSettingsEntity(
        allowSaveDraft: allowSaveDraft,
        showProgress: showProgress,
        randomizeQuestions: randomizeQuestions,
        timeLimit: timeLimit,
        maxAttempts: maxAttempts,
        showScoreToUser: showScoreToUser,
        requireAllQuestions: requireAllQuestions,
      );
}

extension QuestionnaireStatsModelExtension on QuestionnaireStatsModel {
  QuestionnaireStatsEntity toEntity() => QuestionnaireStatsEntity(
        totalSubmissions: totalSubmissions,
        completedSubmissions: completedSubmissions,
        averageScore: averageScore,
        averageCompletionTime: averageCompletionTime,
      );
}

extension QuestionnaireSubmissionModelExtension
    on QuestionnaireSubmissionModel {
  QuestionnaireSubmissionEntity toEntity() => QuestionnaireSubmissionEntity(
        id: id,
        user: _convertUser(user),
        questionnaire: _convertQuestionnaire(questionnaire),
        status: status,
        answers: answers.map((a) => a.toEntity()).toList(),
        totalScore: totalScore,
        maxTotalScore: maxTotalScore,
        percentage: percentage,
        passed: passed,
        categoryScores: categoryScores.map((c) => c.toEntity()).toList(),
        startedAt: startedAt,
        submittedAt: submittedAt,
        reviewStartedAt: reviewStartedAt,
        reviewedAt: reviewedAt,
        approvedAt: approvedAt,
        rejectedAt: rejectedAt,
        reviewedBy: _convertUser(reviewedBy),
        reviewNotes: reviewNotes,
        rejectionReason: rejectionReason,
        completionTime: completionTime,
        attemptNumber: attemptNumber,
        ipAddress: ipAddress,
        userAgent: userAgent,
        deviceInfo: deviceInfo,
        history: history.map((h) => h.toEntity()).toList(),
        createdAt: createdAt,
        updatedAt: updatedAt,
        completionPercentage: completionPercentage,
        daysSinceSubmission: daysSinceSubmission,
        isOverdue: isOverdue,
      );

  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }

  dynamic _convertQuestionnaire(dynamic questionnaire) {
    if (questionnaire == null) return null;
    if (questionnaire is String) return questionnaire;
    if (questionnaire is QuestionnaireModel) return questionnaire.toEntity();
    throw Exception('Invalid questionnaire format');
  }
}

extension AnswerModelExtension on AnswerModel {
  AnswerEntity toEntity() => AnswerEntity(
        questionId: questionId,
        question: question,
        questionType: questionType,
        answer: answer,
        score: score,
        maxScore: maxScore,
        evaluatedBy: _convertUser(evaluatedBy),
        evaluatedAt: evaluatedAt,
        evaluationNotes: evaluationNotes,
        files: files?.map((f) => f.toEntity()).toList(),
      );

  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }
}

extension FileModelExtension on FileModel {
  FileEntity toEntity() => FileEntity(
        url: url,
        filename: filename,
        originalName: originalName,
        mimeType: mimeType,
        size: size,
        uploadedAt: uploadedAt,
      );
}

extension CategoryScoreModelExtension on CategoryScoreModel {
  CategoryScoreEntity toEntity() => CategoryScoreEntity(
        categoryId: categoryId,
        categoryName: categoryName,
        score: score,
        maxScore: maxScore,
        percentage: percentage,
      );
}

extension HistoryEntryModelExtension on HistoryEntryModel {
  HistoryEntryEntity toEntity() => HistoryEntryEntity(
        action: action,
        performedBy: _convertUser(performedBy),
        timestamp: timestamp,
        details: details,
        previousStatus: previousStatus,
        newStatus: newStatus,
      );

  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }
}
