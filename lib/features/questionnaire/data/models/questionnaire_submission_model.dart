// Path: lib/features/questionnaire/data/models/questionnaire_submission_model.dart
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/questionnaire/data/models/questionnaire_model.dart';

part 'questionnaire_submission_model.freezed.dart';
part 'questionnaire_submission_model.g.dart';

@freezed
class QuestionnaireSubmissionModel with _$QuestionnaireSubmissionModel {
  const QuestionnaireSubmissionModel._();

  factory QuestionnaireSubmissionModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
    dynamic user, // null, String, or UserModel
    @JsonKey(
        name: 'questionnaire',
        fromJson: _questionnaireFromJson,
        toJson: _questionnaireToJson)
    dynamic questionnaire, // null, String, or QuestionnaireModel
    required String status,
    @JsonKey(name: 'answers', fromJson: _answersFromJson, toJson: _answersToJson)
    @Default([]) List<AnswerModel> answers,
    required int totalScore,
    required int maxTotalScore,
    required int percentage,
    required bool passed,
    @JsonKey(name: 'categoryScores', fromJson: _categoryScoresFromJson, toJson: _categoryScoresToJson)
    @Default([]) List<CategoryScoreModel> categoryScores,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? startedAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? submittedAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? reviewStartedAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? reviewedAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? approvedAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? rejectedAt,
    @JsonKey(name: 'reviewedBy', fromJson: _userFromJson, toJson: _userToJson)
    dynamic reviewedBy, // null, String, or UserModel
    String? reviewNotes,
    String? rejectionReason,
    required int completionTime,
    required int attemptNumber,
    String? ipAddress,
    String? userAgent,
    String? deviceInfo,
    @JsonKey(name: 'history', fromJson: _historyFromJson, toJson: _historyToJson)
    @Default([]) List<HistoryEntryModel> history,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? updatedAt,
    @JsonKey(name: 'completionPercentage', fromJson: _intFromJson)
    int? completionPercentage,
    @JsonKey(name: 'daysSinceSubmission', fromJson: _intFromJson)
    int? daysSinceSubmission,
    @JsonKey(name: 'isOverdue', fromJson: _boolFromJson) bool? isOverdue,
  }) = _QuestionnaireSubmissionModel;

  factory QuestionnaireSubmissionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireSubmissionModelFromJson(json);
}

@freezed
class AnswerModel with _$AnswerModel {
  factory AnswerModel({
    required String questionId,
    required String question,
    required String questionType,
    @JsonKey(name: 'answer') dynamic answer,
    @Default(0) int score,
    @Default(0) int maxScore,
    @JsonKey(name: 'evaluatedBy', fromJson: _userFromJson, toJson: _userToJson)
    dynamic evaluatedBy, // null, String, or UserModel
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? evaluatedAt,
    String? evaluationNotes,
    @JsonKey(name: 'files', fromJson: _filesFromJson, toJson: _filesToJson)
    @Default([]) List<FileModel> files,
  }) = _AnswerModel;

  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);
}

@freezed
class FileModel with _$FileModel {
  factory FileModel({
    String? url,
    String? filename,
    String? originalName,
    String? mimeType,
    int? size,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? uploadedAt,
  }) = _FileModel;

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);
}

@freezed
class CategoryScoreModel with _$CategoryScoreModel {
  factory CategoryScoreModel({
    String? categoryId,
    String? categoryName,
    required int score,
    required int maxScore,
    required int percentage,
  }) = _CategoryScoreModel;

  factory CategoryScoreModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryScoreModelFromJson(json);
}

@freezed
class HistoryEntryModel with _$HistoryEntryModel {
  factory HistoryEntryModel({
    required String action,
    @JsonKey(name: 'performedBy', fromJson: _userFromJson, toJson: _userToJson)
    dynamic performedBy, // null, String, or UserModel
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? timestamp,
    String? details,
    String? previousStatus,
    String? newStatus,
  }) = _HistoryEntryModel;

  factory HistoryEntryModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryEntryModelFromJson(json);
}

// JSON Converters
DateTime? _dateTimeFromJson(String? timestamp) =>
    timestamp != null ? DateTime.parse(timestamp) : null;

String? _dateTimeToJson(DateTime? dateTime) => dateTime?.toIso8601String();

int? _intFromJson(dynamic value) => value is int ? value : null;

bool? _boolFromJson(dynamic value) => value is bool ? value : null;

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

dynamic _questionnaireFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) return QuestionnaireModel.fromJson(json);
  throw Exception('Invalid questionnaire format');
}

dynamic _questionnaireToJson(dynamic questionnaire) {
  if (questionnaire == null) return null;
  if (questionnaire is String) return questionnaire;
  if (questionnaire is QuestionnaireModel) return questionnaire.toJson();
  throw Exception('Invalid questionnaire type');
}

// Custom converters for lists
List<AnswerModel> _answersFromJson(List<dynamic>? json) {
  if (json == null) return [];
  return json.map((item) => AnswerModel.fromJson(item)).toList();
}

List<dynamic> _answersToJson(List<AnswerModel>? object) {
  if (object == null) return [];
  return object.map((item) => item.toJson()).toList();
}

List<CategoryScoreModel> _categoryScoresFromJson(List<dynamic>? json) {
  if (json == null) return [];
  return json.map((item) => CategoryScoreModel.fromJson(item)).toList();
}

List<dynamic> _categoryScoresToJson(List<CategoryScoreModel>? object) {
  if (object == null) return [];
  return object.map((item) => item.toJson()).toList();
}

List<FileModel> _filesFromJson(List<dynamic>? json) {
  if (json == null) return [];
  return json.map((item) => FileModel.fromJson(item)).toList();
}

List<dynamic> _filesToJson(List<FileModel>? object) {
  if (object == null) return [];
  return object.map((item) => item.toJson()).toList();
}

List<HistoryEntryModel> _historyFromJson(List<dynamic>? json) {
  if (json == null) return [];
  return json.map((item) => HistoryEntryModel.fromJson(item)).toList();
}

List<dynamic> _historyToJson(List<HistoryEntryModel>? object) {
  if (object == null) return [];
  return object.map((item) => item.toJson()).toList();
}