// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionnaireModelImpl _$$QuestionnaireModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireModelImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      targetRole: json['targetRole'] as String,
      version: json['version'] as String,
      status: json['status'] as String,
      questions: json['questions'] == null
          ? const []
          : _questionsFromJson(json['questions'] as List?),
      totalMaxScore: (json['totalMaxScore'] as num).toInt(),
      passingScore: (json['passingScore'] as num).toInt(),
      scoringMethod: json['scoringMethod'] as String,
      categories: json['categories'] == null
          ? const []
          : _categoriesFromJson(json['categories'] as List?),
      settings: QuestionnaireSettingsModel.fromJson(
          json['settings'] as Map<String, dynamic>),
      createdBy: _userFromJson(json['createdBy']),
      lastModifiedBy: _userFromJson(json['lastModifiedBy']),
      publishedAt: _dateTimeFromJson(json['publishedAt'] as String?),
      archivedAt: _dateTimeFromJson(json['archivedAt'] as String?),
      stats: QuestionnaireStatsModel.fromJson(
          json['stats'] as Map<String, dynamic>),
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
      completionRate: _doubleFromJson(json['completionRate']),
      questionCount: _intFromJson(json['questionCount']),
      requiredQuestionCount: _intFromJson(json['requiredQuestionCount']),
    );

Map<String, dynamic> _$$QuestionnaireModelImplToJson(
        _$QuestionnaireModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'targetRole': instance.targetRole,
      'version': instance.version,
      'status': instance.status,
      'questions': _questionsToJson(instance.questions),
      'totalMaxScore': instance.totalMaxScore,
      'passingScore': instance.passingScore,
      'scoringMethod': instance.scoringMethod,
      'categories': _categoriesToJson(instance.categories),
      'settings': instance.settings,
      'createdBy': _userToJson(instance.createdBy),
      'lastModifiedBy': _userToJson(instance.lastModifiedBy),
      'publishedAt': _dateTimeToJson(instance.publishedAt),
      'archivedAt': _dateTimeToJson(instance.archivedAt),
      'stats': instance.stats,
      'createdAt': _dateTimeToJson(instance.createdAt),
      'updatedAt': _dateTimeToJson(instance.updatedAt),
      'completionRate': instance.completionRate,
      'questionCount': instance.questionCount,
      'requiredQuestionCount': instance.requiredQuestionCount,
    };

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      question: json['question'] as String,
      description: json['description'] as String?,
      required: json['required'] as bool? ?? false,
      order: (json['order'] as num).toInt(),
      options: json['options'] == null
          ? const []
          : _optionsFromJson(json['options'] as List?),
      validation: json['validation'] == null
          ? null
          : QuestionValidationModel.fromJson(
              json['validation'] as Map<String, dynamic>),
      scoring: json['scoring'] == null
          ? null
          : QuestionScoringModel.fromJson(
              json['scoring'] as Map<String, dynamic>),
      conditions: json['conditions'] == null
          ? const []
          : _conditionsFromJson(json['conditions'] as List?),
      category: json['category'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'question': instance.question,
      'description': instance.description,
      'required': instance.required,
      'order': instance.order,
      'options': _optionsToJson(instance.options),
      'validation': instance.validation,
      'scoring': instance.scoring,
      'conditions': _conditionsToJson(instance.conditions),
      'category': instance.category,
      'tags': instance.tags,
    };

_$QuestionOptionModelImpl _$$QuestionOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionOptionModelImpl(
      id: json['id'] as String?,
      label: json['label'] as String,
      value: json['value'] as String,
      score: (json['score'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$QuestionOptionModelImplToJson(
        _$QuestionOptionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'value': instance.value,
      'score': instance.score,
    };

_$QuestionValidationModelImpl _$$QuestionValidationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionValidationModelImpl(
      minLength: (json['minLength'] as num?)?.toInt(),
      maxLength: (json['maxLength'] as num?)?.toInt(),
      min: (json['min'] as num?)?.toInt(),
      max: (json['max'] as num?)?.toInt(),
      pattern: json['pattern'] as String?,
      customMessage: json['customMessage'] as String?,
    );

Map<String, dynamic> _$$QuestionValidationModelImplToJson(
        _$QuestionValidationModelImpl instance) =>
    <String, dynamic>{
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
      'min': instance.min,
      'max': instance.max,
      'pattern': instance.pattern,
      'customMessage': instance.customMessage,
    };

_$QuestionScoringModelImpl _$$QuestionScoringModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionScoringModelImpl(
      type: json['type'] as String? ?? "points",
      maxScore: (json['maxScore'] as num?)?.toInt() ?? 10,
      weight: (json['weight'] as num?)?.toInt() ?? 1,
      criteria: json['criteria'] == null
          ? const []
          : _criteriaFromJson(json['criteria'] as List?),
    );

Map<String, dynamic> _$$QuestionScoringModelImplToJson(
        _$QuestionScoringModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'maxScore': instance.maxScore,
      'weight': instance.weight,
      'criteria': _criteriaToJson(instance.criteria),
    };

_$ScoringCriterionModelImpl _$$ScoringCriterionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScoringCriterionModelImpl(
      condition: json['condition'] as String?,
      score: (json['score'] as num?)?.toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ScoringCriterionModelImplToJson(
        _$ScoringCriterionModelImpl instance) =>
    <String, dynamic>{
      'condition': instance.condition,
      'score': instance.score,
      'description': instance.description,
    };

_$QuestionConditionModelImpl _$$QuestionConditionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionConditionModelImpl(
      questionId: json['questionId'] as String?,
      operator: json['operator'] as String?,
      value: json['value'] as String?,
      action: json['action'] as String?,
    );

Map<String, dynamic> _$$QuestionConditionModelImplToJson(
        _$QuestionConditionModelImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'operator': instance.operator,
      'value': instance.value,
      'action': instance.action,
    };

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      weight: (json['weight'] as num?)?.toInt() ?? 1,
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'weight': instance.weight,
      'order': instance.order,
    };

_$QuestionnaireSettingsModelImpl _$$QuestionnaireSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireSettingsModelImpl(
      allowSaveDraft: json['allowSaveDraft'] as bool? ?? true,
      showProgress: json['showProgress'] as bool? ?? true,
      randomizeQuestions: json['randomizeQuestions'] as bool? ?? false,
      timeLimit: (json['timeLimit'] as num?)?.toInt(),
      maxAttempts: (json['maxAttempts'] as num?)?.toInt() ?? 1,
      showScoreToUser: json['showScoreToUser'] as bool? ?? false,
      requireAllQuestions: json['requireAllQuestions'] as bool? ?? true,
    );

Map<String, dynamic> _$$QuestionnaireSettingsModelImplToJson(
        _$QuestionnaireSettingsModelImpl instance) =>
    <String, dynamic>{
      'allowSaveDraft': instance.allowSaveDraft,
      'showProgress': instance.showProgress,
      'randomizeQuestions': instance.randomizeQuestions,
      'timeLimit': instance.timeLimit,
      'maxAttempts': instance.maxAttempts,
      'showScoreToUser': instance.showScoreToUser,
      'requireAllQuestions': instance.requireAllQuestions,
    };

_$QuestionnaireStatsModelImpl _$$QuestionnaireStatsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireStatsModelImpl(
      totalSubmissions: (json['totalSubmissions'] as num?)?.toInt() ?? 0,
      completedSubmissions:
          (json['completedSubmissions'] as num?)?.toInt() ?? 0,
      averageScore: (json['averageScore'] as num?)?.toInt() ?? 0,
      averageCompletionTime:
          (json['averageCompletionTime'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$QuestionnaireStatsModelImplToJson(
        _$QuestionnaireStatsModelImpl instance) =>
    <String, dynamic>{
      'totalSubmissions': instance.totalSubmissions,
      'completedSubmissions': instance.completedSubmissions,
      'averageScore': instance.averageScore,
      'averageCompletionTime': instance.averageCompletionTime,
    };
