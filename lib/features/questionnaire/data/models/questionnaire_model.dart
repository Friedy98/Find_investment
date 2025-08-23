// Path: lib/features/questionnaire/data/models/questionnaire_model.dart
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_model.freezed.dart';
part 'questionnaire_model.g.dart';

@freezed
class QuestionnaireModel with _$QuestionnaireModel {
  const QuestionnaireModel._();

  factory QuestionnaireModel({
    @JsonKey(name: '_id') required String id,
    required String title,
    String? description,
    required String targetRole,
    required String version,
    required String status,
    @JsonKey(name: 'questions', fromJson: _questionsFromJson, toJson: _questionsToJson)
    @Default([]) List<QuestionModel> questions,
    required int totalMaxScore,
    required int passingScore,
    required String scoringMethod,
    @JsonKey(name: 'categories', fromJson: _categoriesFromJson, toJson: _categoriesToJson)
    @Default([]) List<CategoryModel> categories,
    required QuestionnaireSettingsModel settings,
    @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
    dynamic createdBy, // null, String, or UserModel
    @JsonKey(name: 'lastModifiedBy', fromJson: _userFromJson, toJson: _userToJson)
    dynamic lastModifiedBy, // null, String, or UserModel
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? publishedAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? archivedAt,
    required QuestionnaireStatsModel stats,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? updatedAt,
    @JsonKey(name: 'completionRate', fromJson: _doubleFromJson)
    double? completionRate,
    @JsonKey(name: 'questionCount', fromJson: _intFromJson) int? questionCount,
    @JsonKey(name: 'requiredQuestionCount', fromJson: _intFromJson)
    int? requiredQuestionCount,
  }) = _QuestionnaireModel;

  factory QuestionnaireModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireModelFromJson(json);
}

@freezed
class QuestionModel with _$QuestionModel {
  factory QuestionModel({
    required String id,
    required String type,
    required String question,
    String? description,
    @Default(false) bool required,
    required int order,
    @JsonKey(name: 'options', fromJson: _optionsFromJson, toJson: _optionsToJson)
    @Default([]) List<QuestionOptionModel> options,
    QuestionValidationModel? validation,
    QuestionScoringModel? scoring,
    @JsonKey(name: 'conditions', fromJson: _conditionsFromJson, toJson: _conditionsToJson)
    @Default([]) List<QuestionConditionModel> conditions,
    String? category,
    @Default([]) List<String> tags,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}

@freezed
class QuestionOptionModel with _$QuestionOptionModel {
  factory QuestionOptionModel({
    String? id,
    required String label,
    required String value,
    @Default(0) int score,
  }) = _QuestionOptionModel;

  factory QuestionOptionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionOptionModelFromJson(json);
}

@freezed
class QuestionValidationModel with _$QuestionValidationModel {
  factory QuestionValidationModel({
    int? minLength,
    int? maxLength,
    int? min,
    int? max,
    String? pattern,
    String? customMessage,
  }) = _QuestionValidationModel;

  factory QuestionValidationModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionValidationModelFromJson(json);
}

@freezed
class QuestionScoringModel with _$QuestionScoringModel {
  factory QuestionScoringModel({
    @Default("points") String type,
    @Default(10) int maxScore,
    @Default(1) int weight,
    @JsonKey(name: 'criteria', fromJson: _criteriaFromJson, toJson: _criteriaToJson)
    @Default([]) List<ScoringCriterionModel> criteria,
  }) = _QuestionScoringModel;

  factory QuestionScoringModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionScoringModelFromJson(json);
}

@freezed
class ScoringCriterionModel with _$ScoringCriterionModel {
  factory ScoringCriterionModel({
    String? condition,
    int? score,
    String? description,
  }) = _ScoringCriterionModel;

  factory ScoringCriterionModel.fromJson(Map<String, dynamic> json) =>
      _$ScoringCriterionModelFromJson(json);
}

@freezed
class QuestionConditionModel with _$QuestionConditionModel {
  factory QuestionConditionModel({
    String? questionId,
    String? operator,
    String? value,
    String? action,
  }) = _QuestionConditionModel;

  factory QuestionConditionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionConditionModelFromJson(json);
}

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    String? id,
    String? name,
    String? description,
    @Default(1) int weight,
    int? order,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class QuestionnaireSettingsModel with _$QuestionnaireSettingsModel {
  factory QuestionnaireSettingsModel({
    @Default(true) bool allowSaveDraft,
    @Default(true) bool showProgress,
    @Default(false) bool randomizeQuestions,
    int? timeLimit,
    @Default(1) int maxAttempts,
    @Default(false) bool showScoreToUser,
    @Default(true) bool requireAllQuestions,
  }) = _QuestionnaireSettingsModel;

  factory QuestionnaireSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireSettingsModelFromJson(json);
}

@freezed
class QuestionnaireStatsModel with _$QuestionnaireStatsModel {
  factory QuestionnaireStatsModel({
    @Default(0) int totalSubmissions,
    @Default(0) int completedSubmissions,
    @Default(0) int averageScore,
    @Default(0) int averageCompletionTime,
  }) = _QuestionnaireStatsModel;

  factory QuestionnaireStatsModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireStatsModelFromJson(json);
}

// JSON Converters
DateTime? _dateTimeFromJson(String? timestamp) =>
    timestamp != null ? DateTime.parse(timestamp) : null;

String? _dateTimeToJson(DateTime? dateTime) => dateTime?.toIso8601String();

int? _intFromJson(dynamic value) => value is int ? value : null;

double? _doubleFromJson(dynamic value) =>
    value is double ? value : (value is int ? value.toDouble() : null);

dynamic _userFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) return UserModel.fromJson(json);
  throw Exception('Invalid user format');
}

dynamic _userToJson(dynamic user) {
  if (user == null) return null;
  if (user is String) return user;
  if (user is UserModel) return user.toJson();
  throw Exception('Invalid user type');
}

// Custom converters for lists
List<QuestionModel> _questionsFromJson(List<dynamic>? json) {
  if (json == null) return [];
  return json.map((item) => QuestionModel.fromJson(item)).toList();
}

List<dynamic> _questionsToJson(List<QuestionModel>? object) {
  if (object == null) return [];
  return object.map((item) => item.toJson()).toList();
}

List<QuestionOptionModel> _optionsFromJson(List<dynamic>? json) {
  if (json == null) return [];
  return json.map((item) => QuestionOptionModel.fromJson(item)).toList();
}

List<dynamic> _optionsToJson(List<QuestionOptionModel>? object) {
  if (object == null) return [];
  return object.map((item) => item.toJson()).toList();
}

List<QuestionConditionModel> _conditionsFromJson(List<dynamic>? json) {
  if (json == null) return [];
  return json.map((item) => QuestionConditionModel.fromJson(item)).toList();
}

List<dynamic> _conditionsToJson(List<QuestionConditionModel>? object) {
  if (object == null) return [];
  return object.map((item) => item.toJson()).toList();
}

List<ScoringCriterionModel> _criteriaFromJson(List<dynamic>? json) {
  if (json == null) return [];
  return json.map((item) => ScoringCriterionModel.fromJson(item)).toList();
}

List<dynamic> _criteriaToJson(List<ScoringCriterionModel>? object) {
  if (object == null) return [];
  return object.map((item) => item.toJson()).toList();
}

List<CategoryModel> _categoriesFromJson(List<dynamic>? json) {
  if (json == null) return [];
  return json.map((item) => CategoryModel.fromJson(item)).toList();
}

List<dynamic> _categoriesToJson(List<CategoryModel>? object) {
  if (object == null) return [];
  return object.map((item) => item.toJson()).toList();
}