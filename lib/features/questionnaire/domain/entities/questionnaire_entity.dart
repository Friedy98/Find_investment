// Path: lib/features/questionnaire/domain/entities/questionnaire_entity.dart
import 'package:equatable/equatable.dart';

class QuestionnaireEntity extends Equatable {
  final String id;
  final String title;
  final String? description;
  final String targetRole;
  final String version;
  final String status;
  final List<QuestionEntity> questions;
  final int totalMaxScore;
  final int passingScore;
  final String scoringMethod;
  final List<CategoryEntity> categories;
  final QuestionnaireSettingsEntity settings;
  final dynamic createdBy; // null, String, or UserEntity
  final dynamic lastModifiedBy; // null, String, or UserEntity
  final DateTime? publishedAt;
  final DateTime? archivedAt;
  final QuestionnaireStatsEntity stats;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final double? completionRate; // Virtual
  final int? questionCount; // Virtual
  final int? requiredQuestionCount; // Virtual

  const QuestionnaireEntity({
    required this.id,
    required this.title,
    this.description,
    required this.targetRole,
    required this.version,
    required this.status,
    required this.questions,
    required this.totalMaxScore,
    required this.passingScore,
    required this.scoringMethod,
    required this.categories,
    required this.settings,
    this.createdBy,
    this.lastModifiedBy,
    this.publishedAt,
    this.archivedAt,
    required this.stats,
    required this.createdAt,
    required this.updatedAt,
    this.completionRate,
    this.questionCount,
    this.requiredQuestionCount,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        targetRole,
        version,
        status,
        questions,
        totalMaxScore,
        passingScore,
        scoringMethod,
        categories,
        settings,
        createdBy,
        lastModifiedBy,
        publishedAt,
        archivedAt,
        stats,
        createdAt,
        updatedAt,
        completionRate,
        questionCount,
        requiredQuestionCount,
      ];
}

class QuestionEntity extends Equatable {
  final String id;
  final String type;
  final String question;
  final String? description;
  final bool required;
  final int order;
  final List<QuestionOptionEntity>? options;
  final QuestionValidationEntity? validation;
  final QuestionScoringEntity? scoring;
  final List<QuestionConditionEntity>? conditions;
  final String? category;
  final List<String>? tags;

  const QuestionEntity({
    required this.id,
    required this.type,
    required this.question,
    this.description,
    this.required = false,
    required this.order,
    this.options,
    this.validation,
    this.scoring,
    this.conditions,
    this.category,
    this.tags,
  });

  @override
  List<Object?> get props => [
        id,
        type,
        question,
        description,
        required,
        order,
        options,
        validation,
        scoring,
        conditions,
        category,
        tags,
      ];
}

class QuestionOptionEntity extends Equatable {
  final String? id;
  final String label;
  final String value;
  final int score;

  const QuestionOptionEntity({
    this.id,
    required this.label,
    required this.value,
    this.score = 0,
  });

  @override
  List<Object?> get props => [id, label, value, score];
}

class QuestionValidationEntity extends Equatable {
  final int? minLength;
  final int? maxLength;
  final int? min;
  final int? max;
  final String? pattern;
  final String? customMessage;

  const QuestionValidationEntity({
    this.minLength,
    this.maxLength,
    this.min,
    this.max,
    this.pattern,
    this.customMessage,
  });

  @override
  List<Object?> get props =>
      [minLength, maxLength, min, max, pattern, customMessage];
}

class QuestionScoringEntity extends Equatable {
  final String type;
  final int maxScore;
  final int weight;
  final List<ScoringCriterionEntity>? criteria;

  const QuestionScoringEntity({
    this.type = "points",
    this.maxScore = 10,
    this.weight = 1,
    this.criteria,
  });

  @override
  List<Object?> get props => [type, maxScore, weight, criteria];
}

class ScoringCriterionEntity extends Equatable {
  final String? condition;
  final int? score;
  final String? description;

  const ScoringCriterionEntity({
    this.condition,
    this.score,
    this.description,
  });

  @override
  List<Object?> get props => [condition, score, description];
}

class QuestionConditionEntity extends Equatable {
  final String? questionId;
  final String? operator;
  final String? value;
  final String? action;

  const QuestionConditionEntity({
    this.questionId,
    this.operator,
    this.value,
    this.action,
  });

  @override
  List<Object?> get props => [questionId, operator, value, action];
}

class CategoryEntity extends Equatable {
  final String? id;
  final String? name;
  final String? description;
  final int weight;
  final int? order;

  const CategoryEntity({
    this.id,
    this.name,
    this.description,
    this.weight = 1,
    this.order,
  });

  @override
  List<Object?> get props => [id, name, description, weight, order];
}

class QuestionnaireSettingsEntity extends Equatable {
  final bool allowSaveDraft;
  final bool showProgress;
  final bool randomizeQuestions;
  final int? timeLimit;
  final int maxAttempts;
  final bool showScoreToUser;
  final bool requireAllQuestions;

  const QuestionnaireSettingsEntity({
    this.allowSaveDraft = true,
    this.showProgress = true,
    this.randomizeQuestions = false,
    this.timeLimit,
    this.maxAttempts = 1,
    this.showScoreToUser = false,
    this.requireAllQuestions = true,
  });

  @override
  List<Object?> get props => [
        allowSaveDraft,
        showProgress,
        randomizeQuestions,
        timeLimit,
        maxAttempts,
        showScoreToUser,
        requireAllQuestions,
      ];
}

class QuestionnaireStatsEntity extends Equatable {
  final int totalSubmissions;
  final int completedSubmissions;
  final int averageScore;
  final int averageCompletionTime;

  const QuestionnaireStatsEntity({
    this.totalSubmissions = 0,
    this.completedSubmissions = 0,
    this.averageScore = 0,
    this.averageCompletionTime = 0,
  });

  @override
  List<Object?> get props => [
        totalSubmissions,
        completedSubmissions,
        averageScore,
        averageCompletionTime
      ];
}
