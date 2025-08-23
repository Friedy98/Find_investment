// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_submission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionnaireSubmissionModel _$QuestionnaireSubmissionModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireSubmissionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireSubmissionModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get user =>
      throw _privateConstructorUsedError; // null, String, or UserModel
  @JsonKey(
      name: 'questionnaire',
      fromJson: _questionnaireFromJson,
      toJson: _questionnaireToJson)
  dynamic get questionnaire =>
      throw _privateConstructorUsedError; // null, String, or QuestionnaireModel
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'answers', fromJson: _answersFromJson, toJson: _answersToJson)
  List<AnswerModel> get answers => throw _privateConstructorUsedError;
  int get totalScore => throw _privateConstructorUsedError;
  int get maxTotalScore => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;
  bool get passed => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'categoryScores',
      fromJson: _categoryScoresFromJson,
      toJson: _categoryScoresToJson)
  List<CategoryScoreModel> get categoryScores =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get submittedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get reviewStartedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get rejectedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get reviewedBy =>
      throw _privateConstructorUsedError; // null, String, or UserModel
  String? get reviewNotes => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  int get completionTime => throw _privateConstructorUsedError;
  int get attemptNumber => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  String? get userAgent => throw _privateConstructorUsedError;
  String? get deviceInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'history', fromJson: _historyFromJson, toJson: _historyToJson)
  List<HistoryEntryModel> get history => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'completionPercentage', fromJson: _intFromJson)
  int? get completionPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'daysSinceSubmission', fromJson: _intFromJson)
  int? get daysSinceSubmission => throw _privateConstructorUsedError;
  @JsonKey(name: 'isOverdue', fromJson: _boolFromJson)
  bool? get isOverdue => throw _privateConstructorUsedError;

  /// Serializes this QuestionnaireSubmissionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireSubmissionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireSubmissionModelCopyWith<QuestionnaireSubmissionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireSubmissionModelCopyWith<$Res> {
  factory $QuestionnaireSubmissionModelCopyWith(
          QuestionnaireSubmissionModel value,
          $Res Function(QuestionnaireSubmissionModel) then) =
      _$QuestionnaireSubmissionModelCopyWithImpl<$Res,
          QuestionnaireSubmissionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      dynamic user,
      @JsonKey(
          name: 'questionnaire',
          fromJson: _questionnaireFromJson,
          toJson: _questionnaireToJson)
      dynamic questionnaire,
      String status,
      @JsonKey(
          name: 'answers', fromJson: _answersFromJson, toJson: _answersToJson)
      List<AnswerModel> answers,
      int totalScore,
      int maxTotalScore,
      int percentage,
      bool passed,
      @JsonKey(
          name: 'categoryScores',
          fromJson: _categoryScoresFromJson,
          toJson: _categoryScoresToJson)
      List<CategoryScoreModel> categoryScores,
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
      dynamic reviewedBy,
      String? reviewNotes,
      String? rejectionReason,
      int completionTime,
      int attemptNumber,
      String? ipAddress,
      String? userAgent,
      String? deviceInfo,
      @JsonKey(
          name: 'history', fromJson: _historyFromJson, toJson: _historyToJson)
      List<HistoryEntryModel> history,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt,
      @JsonKey(name: 'completionPercentage', fromJson: _intFromJson)
      int? completionPercentage,
      @JsonKey(name: 'daysSinceSubmission', fromJson: _intFromJson)
      int? daysSinceSubmission,
      @JsonKey(name: 'isOverdue', fromJson: _boolFromJson) bool? isOverdue});
}

/// @nodoc
class _$QuestionnaireSubmissionModelCopyWithImpl<$Res,
        $Val extends QuestionnaireSubmissionModel>
    implements $QuestionnaireSubmissionModelCopyWith<$Res> {
  _$QuestionnaireSubmissionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireSubmissionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? questionnaire = freezed,
    Object? status = null,
    Object? answers = null,
    Object? totalScore = null,
    Object? maxTotalScore = null,
    Object? percentage = null,
    Object? passed = null,
    Object? categoryScores = null,
    Object? startedAt = freezed,
    Object? submittedAt = freezed,
    Object? reviewStartedAt = freezed,
    Object? reviewedAt = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? reviewedBy = freezed,
    Object? reviewNotes = freezed,
    Object? rejectionReason = freezed,
    Object? completionTime = null,
    Object? attemptNumber = null,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
    Object? deviceInfo = freezed,
    Object? history = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? completionPercentage = freezed,
    Object? daysSinceSubmission = freezed,
    Object? isOverdue = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      maxTotalScore: null == maxTotalScore
          ? _value.maxTotalScore
          : maxTotalScore // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryScores: null == categoryScores
          ? _value.categoryScores
          : categoryScores // ignore: cast_nullable_to_non_nullable
              as List<CategoryScoreModel>,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewStartedAt: freezed == reviewStartedAt
          ? _value.reviewStartedAt
          : reviewStartedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      completionTime: null == completionTime
          ? _value.completionTime
          : completionTime // ignore: cast_nullable_to_non_nullable
              as int,
      attemptNumber: null == attemptNumber
          ? _value.attemptNumber
          : attemptNumber // ignore: cast_nullable_to_non_nullable
              as int,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<HistoryEntryModel>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completionPercentage: freezed == completionPercentage
          ? _value.completionPercentage
          : completionPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      daysSinceSubmission: freezed == daysSinceSubmission
          ? _value.daysSinceSubmission
          : daysSinceSubmission // ignore: cast_nullable_to_non_nullable
              as int?,
      isOverdue: freezed == isOverdue
          ? _value.isOverdue
          : isOverdue // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionnaireSubmissionModelImplCopyWith<$Res>
    implements $QuestionnaireSubmissionModelCopyWith<$Res> {
  factory _$$QuestionnaireSubmissionModelImplCopyWith(
          _$QuestionnaireSubmissionModelImpl value,
          $Res Function(_$QuestionnaireSubmissionModelImpl) then) =
      __$$QuestionnaireSubmissionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      dynamic user,
      @JsonKey(
          name: 'questionnaire',
          fromJson: _questionnaireFromJson,
          toJson: _questionnaireToJson)
      dynamic questionnaire,
      String status,
      @JsonKey(
          name: 'answers', fromJson: _answersFromJson, toJson: _answersToJson)
      List<AnswerModel> answers,
      int totalScore,
      int maxTotalScore,
      int percentage,
      bool passed,
      @JsonKey(
          name: 'categoryScores',
          fromJson: _categoryScoresFromJson,
          toJson: _categoryScoresToJson)
      List<CategoryScoreModel> categoryScores,
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
      dynamic reviewedBy,
      String? reviewNotes,
      String? rejectionReason,
      int completionTime,
      int attemptNumber,
      String? ipAddress,
      String? userAgent,
      String? deviceInfo,
      @JsonKey(
          name: 'history', fromJson: _historyFromJson, toJson: _historyToJson)
      List<HistoryEntryModel> history,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt,
      @JsonKey(name: 'completionPercentage', fromJson: _intFromJson)
      int? completionPercentage,
      @JsonKey(name: 'daysSinceSubmission', fromJson: _intFromJson)
      int? daysSinceSubmission,
      @JsonKey(name: 'isOverdue', fromJson: _boolFromJson) bool? isOverdue});
}

/// @nodoc
class __$$QuestionnaireSubmissionModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireSubmissionModelCopyWithImpl<$Res,
        _$QuestionnaireSubmissionModelImpl>
    implements _$$QuestionnaireSubmissionModelImplCopyWith<$Res> {
  __$$QuestionnaireSubmissionModelImplCopyWithImpl(
      _$QuestionnaireSubmissionModelImpl _value,
      $Res Function(_$QuestionnaireSubmissionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireSubmissionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? questionnaire = freezed,
    Object? status = null,
    Object? answers = null,
    Object? totalScore = null,
    Object? maxTotalScore = null,
    Object? percentage = null,
    Object? passed = null,
    Object? categoryScores = null,
    Object? startedAt = freezed,
    Object? submittedAt = freezed,
    Object? reviewStartedAt = freezed,
    Object? reviewedAt = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? reviewedBy = freezed,
    Object? reviewNotes = freezed,
    Object? rejectionReason = freezed,
    Object? completionTime = null,
    Object? attemptNumber = null,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
    Object? deviceInfo = freezed,
    Object? history = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? completionPercentage = freezed,
    Object? daysSinceSubmission = freezed,
    Object? isOverdue = freezed,
  }) {
    return _then(_$QuestionnaireSubmissionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      maxTotalScore: null == maxTotalScore
          ? _value.maxTotalScore
          : maxTotalScore // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryScores: null == categoryScores
          ? _value._categoryScores
          : categoryScores // ignore: cast_nullable_to_non_nullable
              as List<CategoryScoreModel>,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewStartedAt: freezed == reviewStartedAt
          ? _value.reviewStartedAt
          : reviewStartedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      completionTime: null == completionTime
          ? _value.completionTime
          : completionTime // ignore: cast_nullable_to_non_nullable
              as int,
      attemptNumber: null == attemptNumber
          ? _value.attemptNumber
          : attemptNumber // ignore: cast_nullable_to_non_nullable
              as int,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<HistoryEntryModel>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completionPercentage: freezed == completionPercentage
          ? _value.completionPercentage
          : completionPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      daysSinceSubmission: freezed == daysSinceSubmission
          ? _value.daysSinceSubmission
          : daysSinceSubmission // ignore: cast_nullable_to_non_nullable
              as int?,
      isOverdue: freezed == isOverdue
          ? _value.isOverdue
          : isOverdue // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireSubmissionModelImpl extends _QuestionnaireSubmissionModel {
  _$QuestionnaireSubmissionModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      this.user,
      @JsonKey(
          name: 'questionnaire',
          fromJson: _questionnaireFromJson,
          toJson: _questionnaireToJson)
      this.questionnaire,
      required this.status,
      @JsonKey(
          name: 'answers', fromJson: _answersFromJson, toJson: _answersToJson)
      final List<AnswerModel> answers = const [],
      required this.totalScore,
      required this.maxTotalScore,
      required this.percentage,
      required this.passed,
      @JsonKey(
          name: 'categoryScores',
          fromJson: _categoryScoresFromJson,
          toJson: _categoryScoresToJson)
      final List<CategoryScoreModel> categoryScores = const [],
      @JsonKey(
          fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.startedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.submittedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.reviewStartedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.reviewedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.approvedAt,
      @JsonKey(
          fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.rejectedAt,
      @JsonKey(name: 'reviewedBy', fromJson: _userFromJson, toJson: _userToJson)
      this.reviewedBy,
      this.reviewNotes,
      this.rejectionReason,
      required this.completionTime,
      required this.attemptNumber,
      this.ipAddress,
      this.userAgent,
      this.deviceInfo,
      @JsonKey(
          name: 'history', fromJson: _historyFromJson, toJson: _historyToJson)
      final List<HistoryEntryModel> history = const [],
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt,
      @JsonKey(name: 'completionPercentage', fromJson: _intFromJson)
      this.completionPercentage,
      @JsonKey(name: 'daysSinceSubmission', fromJson: _intFromJson)
      this.daysSinceSubmission,
      @JsonKey(name: 'isOverdue', fromJson: _boolFromJson) this.isOverdue})
      : _answers = answers,
        _categoryScores = categoryScores,
        _history = history,
        super._();

  factory _$QuestionnaireSubmissionModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuestionnaireSubmissionModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic user;
// null, String, or UserModel
  @override
  @JsonKey(
      name: 'questionnaire',
      fromJson: _questionnaireFromJson,
      toJson: _questionnaireToJson)
  final dynamic questionnaire;
// null, String, or QuestionnaireModel
  @override
  final String status;
  final List<AnswerModel> _answers;
  @override
  @JsonKey(name: 'answers', fromJson: _answersFromJson, toJson: _answersToJson)
  List<AnswerModel> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final int totalScore;
  @override
  final int maxTotalScore;
  @override
  final int percentage;
  @override
  final bool passed;
  final List<CategoryScoreModel> _categoryScores;
  @override
  @JsonKey(
      name: 'categoryScores',
      fromJson: _categoryScoresFromJson,
      toJson: _categoryScoresToJson)
  List<CategoryScoreModel> get categoryScores {
    if (_categoryScores is EqualUnmodifiableListView) return _categoryScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryScores);
  }

  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? startedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? submittedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? reviewStartedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? reviewedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? approvedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? rejectedAt;
  @override
  @JsonKey(name: 'reviewedBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic reviewedBy;
// null, String, or UserModel
  @override
  final String? reviewNotes;
  @override
  final String? rejectionReason;
  @override
  final int completionTime;
  @override
  final int attemptNumber;
  @override
  final String? ipAddress;
  @override
  final String? userAgent;
  @override
  final String? deviceInfo;
  final List<HistoryEntryModel> _history;
  @override
  @JsonKey(name: 'history', fromJson: _historyFromJson, toJson: _historyToJson)
  List<HistoryEntryModel> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'completionPercentage', fromJson: _intFromJson)
  final int? completionPercentage;
  @override
  @JsonKey(name: 'daysSinceSubmission', fromJson: _intFromJson)
  final int? daysSinceSubmission;
  @override
  @JsonKey(name: 'isOverdue', fromJson: _boolFromJson)
  final bool? isOverdue;

  @override
  String toString() {
    return 'QuestionnaireSubmissionModel(id: $id, user: $user, questionnaire: $questionnaire, status: $status, answers: $answers, totalScore: $totalScore, maxTotalScore: $maxTotalScore, percentage: $percentage, passed: $passed, categoryScores: $categoryScores, startedAt: $startedAt, submittedAt: $submittedAt, reviewStartedAt: $reviewStartedAt, reviewedAt: $reviewedAt, approvedAt: $approvedAt, rejectedAt: $rejectedAt, reviewedBy: $reviewedBy, reviewNotes: $reviewNotes, rejectionReason: $rejectionReason, completionTime: $completionTime, attemptNumber: $attemptNumber, ipAddress: $ipAddress, userAgent: $userAgent, deviceInfo: $deviceInfo, history: $history, createdAt: $createdAt, updatedAt: $updatedAt, completionPercentage: $completionPercentage, daysSinceSubmission: $daysSinceSubmission, isOverdue: $isOverdue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireSubmissionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.questionnaire, questionnaire) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.maxTotalScore, maxTotalScore) ||
                other.maxTotalScore == maxTotalScore) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.passed, passed) || other.passed == passed) &&
            const DeepCollectionEquality()
                .equals(other._categoryScores, _categoryScores) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.reviewStartedAt, reviewStartedAt) ||
                other.reviewStartedAt == reviewStartedAt) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            const DeepCollectionEquality()
                .equals(other.reviewedBy, reviewedBy) &&
            (identical(other.reviewNotes, reviewNotes) ||
                other.reviewNotes == reviewNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.completionTime, completionTime) ||
                other.completionTime == completionTime) &&
            (identical(other.attemptNumber, attemptNumber) ||
                other.attemptNumber == attemptNumber) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.completionPercentage, completionPercentage) ||
                other.completionPercentage == completionPercentage) &&
            (identical(other.daysSinceSubmission, daysSinceSubmission) ||
                other.daysSinceSubmission == daysSinceSubmission) &&
            (identical(other.isOverdue, isOverdue) ||
                other.isOverdue == isOverdue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(user),
        const DeepCollectionEquality().hash(questionnaire),
        status,
        const DeepCollectionEquality().hash(_answers),
        totalScore,
        maxTotalScore,
        percentage,
        passed,
        const DeepCollectionEquality().hash(_categoryScores),
        startedAt,
        submittedAt,
        reviewStartedAt,
        reviewedAt,
        approvedAt,
        rejectedAt,
        const DeepCollectionEquality().hash(reviewedBy),
        reviewNotes,
        rejectionReason,
        completionTime,
        attemptNumber,
        ipAddress,
        userAgent,
        deviceInfo,
        const DeepCollectionEquality().hash(_history),
        createdAt,
        updatedAt,
        completionPercentage,
        daysSinceSubmission,
        isOverdue
      ]);

  /// Create a copy of QuestionnaireSubmissionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireSubmissionModelImplCopyWith<
          _$QuestionnaireSubmissionModelImpl>
      get copyWith => __$$QuestionnaireSubmissionModelImplCopyWithImpl<
          _$QuestionnaireSubmissionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireSubmissionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionnaireSubmissionModel
    extends QuestionnaireSubmissionModel {
  factory _QuestionnaireSubmissionModel(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      final dynamic user,
      @JsonKey(
          name: 'questionnaire',
          fromJson: _questionnaireFromJson,
          toJson: _questionnaireToJson)
      final dynamic questionnaire,
      required final String status,
      @JsonKey(
          name: 'answers', fromJson: _answersFromJson, toJson: _answersToJson)
      final List<AnswerModel> answers,
      required final int totalScore,
      required final int maxTotalScore,
      required final int percentage,
      required final bool passed,
      @JsonKey(
          name: 'categoryScores',
          fromJson: _categoryScoresFromJson,
          toJson: _categoryScoresToJson)
      final List<CategoryScoreModel> categoryScores,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? startedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? submittedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? reviewStartedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? reviewedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? approvedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? rejectedAt,
      @JsonKey(name: 'reviewedBy', fromJson: _userFromJson, toJson: _userToJson)
      final dynamic reviewedBy,
      final String? reviewNotes,
      final String? rejectionReason,
      required final int completionTime,
      required final int attemptNumber,
      final String? ipAddress,
      final String? userAgent,
      final String? deviceInfo,
      @JsonKey(
          name: 'history', fromJson: _historyFromJson, toJson: _historyToJson)
      final List<HistoryEntryModel> history,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt,
      @JsonKey(name: 'completionPercentage', fromJson: _intFromJson)
      final int? completionPercentage,
      @JsonKey(name: 'daysSinceSubmission', fromJson: _intFromJson)
      final int? daysSinceSubmission,
      @JsonKey(name: 'isOverdue', fromJson: _boolFromJson)
      final bool? isOverdue}) = _$QuestionnaireSubmissionModelImpl;
  _QuestionnaireSubmissionModel._() : super._();

  factory _QuestionnaireSubmissionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireSubmissionModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get user; // null, String, or UserModel
  @override
  @JsonKey(
      name: 'questionnaire',
      fromJson: _questionnaireFromJson,
      toJson: _questionnaireToJson)
  dynamic get questionnaire; // null, String, or QuestionnaireModel
  @override
  String get status;
  @override
  @JsonKey(name: 'answers', fromJson: _answersFromJson, toJson: _answersToJson)
  List<AnswerModel> get answers;
  @override
  int get totalScore;
  @override
  int get maxTotalScore;
  @override
  int get percentage;
  @override
  bool get passed;
  @override
  @JsonKey(
      name: 'categoryScores',
      fromJson: _categoryScoresFromJson,
      toJson: _categoryScoresToJson)
  List<CategoryScoreModel> get categoryScores;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get startedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get submittedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get reviewStartedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get reviewedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get approvedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get rejectedAt;
  @override
  @JsonKey(name: 'reviewedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get reviewedBy; // null, String, or UserModel
  @override
  String? get reviewNotes;
  @override
  String? get rejectionReason;
  @override
  int get completionTime;
  @override
  int get attemptNumber;
  @override
  String? get ipAddress;
  @override
  String? get userAgent;
  @override
  String? get deviceInfo;
  @override
  @JsonKey(name: 'history', fromJson: _historyFromJson, toJson: _historyToJson)
  List<HistoryEntryModel> get history;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'completionPercentage', fromJson: _intFromJson)
  int? get completionPercentage;
  @override
  @JsonKey(name: 'daysSinceSubmission', fromJson: _intFromJson)
  int? get daysSinceSubmission;
  @override
  @JsonKey(name: 'isOverdue', fromJson: _boolFromJson)
  bool? get isOverdue;

  /// Create a copy of QuestionnaireSubmissionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireSubmissionModelImplCopyWith<
          _$QuestionnaireSubmissionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AnswerModel _$AnswerModelFromJson(Map<String, dynamic> json) {
  return _AnswerModel.fromJson(json);
}

/// @nodoc
mixin _$AnswerModel {
  String get questionId => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get questionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer')
  dynamic get answer => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get maxScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'evaluatedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get evaluatedBy =>
      throw _privateConstructorUsedError; // null, String, or UserModel
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get evaluatedAt => throw _privateConstructorUsedError;
  String? get evaluationNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'files', fromJson: _filesFromJson, toJson: _filesToJson)
  List<FileModel> get files => throw _privateConstructorUsedError;

  /// Serializes this AnswerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerModelCopyWith<AnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerModelCopyWith<$Res> {
  factory $AnswerModelCopyWith(
          AnswerModel value, $Res Function(AnswerModel) then) =
      _$AnswerModelCopyWithImpl<$Res, AnswerModel>;
  @useResult
  $Res call(
      {String questionId,
      String question,
      String questionType,
      @JsonKey(name: 'answer') dynamic answer,
      int score,
      int maxScore,
      @JsonKey(
          name: 'evaluatedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic evaluatedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? evaluatedAt,
      String? evaluationNotes,
      @JsonKey(name: 'files', fromJson: _filesFromJson, toJson: _filesToJson)
      List<FileModel> files});
}

/// @nodoc
class _$AnswerModelCopyWithImpl<$Res, $Val extends AnswerModel>
    implements $AnswerModelCopyWith<$Res> {
  _$AnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? question = null,
    Object? questionType = null,
    Object? answer = freezed,
    Object? score = null,
    Object? maxScore = null,
    Object? evaluatedBy = freezed,
    Object? evaluatedAt = freezed,
    Object? evaluationNotes = freezed,
    Object? files = null,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      maxScore: null == maxScore
          ? _value.maxScore
          : maxScore // ignore: cast_nullable_to_non_nullable
              as int,
      evaluatedBy: freezed == evaluatedBy
          ? _value.evaluatedBy
          : evaluatedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      evaluatedAt: freezed == evaluatedAt
          ? _value.evaluatedAt
          : evaluatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      evaluationNotes: freezed == evaluationNotes
          ? _value.evaluationNotes
          : evaluationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerModelImplCopyWith<$Res>
    implements $AnswerModelCopyWith<$Res> {
  factory _$$AnswerModelImplCopyWith(
          _$AnswerModelImpl value, $Res Function(_$AnswerModelImpl) then) =
      __$$AnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String questionId,
      String question,
      String questionType,
      @JsonKey(name: 'answer') dynamic answer,
      int score,
      int maxScore,
      @JsonKey(
          name: 'evaluatedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic evaluatedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? evaluatedAt,
      String? evaluationNotes,
      @JsonKey(name: 'files', fromJson: _filesFromJson, toJson: _filesToJson)
      List<FileModel> files});
}

/// @nodoc
class __$$AnswerModelImplCopyWithImpl<$Res>
    extends _$AnswerModelCopyWithImpl<$Res, _$AnswerModelImpl>
    implements _$$AnswerModelImplCopyWith<$Res> {
  __$$AnswerModelImplCopyWithImpl(
      _$AnswerModelImpl _value, $Res Function(_$AnswerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? question = null,
    Object? questionType = null,
    Object? answer = freezed,
    Object? score = null,
    Object? maxScore = null,
    Object? evaluatedBy = freezed,
    Object? evaluatedAt = freezed,
    Object? evaluationNotes = freezed,
    Object? files = null,
  }) {
    return _then(_$AnswerModelImpl(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      maxScore: null == maxScore
          ? _value.maxScore
          : maxScore // ignore: cast_nullable_to_non_nullable
              as int,
      evaluatedBy: freezed == evaluatedBy
          ? _value.evaluatedBy
          : evaluatedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      evaluatedAt: freezed == evaluatedAt
          ? _value.evaluatedAt
          : evaluatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      evaluationNotes: freezed == evaluationNotes
          ? _value.evaluationNotes
          : evaluationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerModelImpl implements _AnswerModel {
  _$AnswerModelImpl(
      {required this.questionId,
      required this.question,
      required this.questionType,
      @JsonKey(name: 'answer') this.answer,
      this.score = 0,
      this.maxScore = 0,
      @JsonKey(
          name: 'evaluatedBy', fromJson: _userFromJson, toJson: _userToJson)
      this.evaluatedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.evaluatedAt,
      this.evaluationNotes,
      @JsonKey(name: 'files', fromJson: _filesFromJson, toJson: _filesToJson)
      final List<FileModel> files = const []})
      : _files = files;

  factory _$AnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerModelImplFromJson(json);

  @override
  final String questionId;
  @override
  final String question;
  @override
  final String questionType;
  @override
  @JsonKey(name: 'answer')
  final dynamic answer;
  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final int maxScore;
  @override
  @JsonKey(name: 'evaluatedBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic evaluatedBy;
// null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? evaluatedAt;
  @override
  final String? evaluationNotes;
  final List<FileModel> _files;
  @override
  @JsonKey(name: 'files', fromJson: _filesFromJson, toJson: _filesToJson)
  List<FileModel> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'AnswerModel(questionId: $questionId, question: $question, questionType: $questionType, answer: $answer, score: $score, maxScore: $maxScore, evaluatedBy: $evaluatedBy, evaluatedAt: $evaluatedAt, evaluationNotes: $evaluationNotes, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerModelImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            const DeepCollectionEquality().equals(other.answer, answer) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.maxScore, maxScore) ||
                other.maxScore == maxScore) &&
            const DeepCollectionEquality()
                .equals(other.evaluatedBy, evaluatedBy) &&
            (identical(other.evaluatedAt, evaluatedAt) ||
                other.evaluatedAt == evaluatedAt) &&
            (identical(other.evaluationNotes, evaluationNotes) ||
                other.evaluationNotes == evaluationNotes) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionId,
      question,
      questionType,
      const DeepCollectionEquality().hash(answer),
      score,
      maxScore,
      const DeepCollectionEquality().hash(evaluatedBy),
      evaluatedAt,
      evaluationNotes,
      const DeepCollectionEquality().hash(_files));

  /// Create a copy of AnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerModelImplCopyWith<_$AnswerModelImpl> get copyWith =>
      __$$AnswerModelImplCopyWithImpl<_$AnswerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerModelImplToJson(
      this,
    );
  }
}

abstract class _AnswerModel implements AnswerModel {
  factory _AnswerModel(
      {required final String questionId,
      required final String question,
      required final String questionType,
      @JsonKey(name: 'answer') final dynamic answer,
      final int score,
      final int maxScore,
      @JsonKey(
          name: 'evaluatedBy', fromJson: _userFromJson, toJson: _userToJson)
      final dynamic evaluatedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? evaluatedAt,
      final String? evaluationNotes,
      @JsonKey(name: 'files', fromJson: _filesFromJson, toJson: _filesToJson)
      final List<FileModel> files}) = _$AnswerModelImpl;

  factory _AnswerModel.fromJson(Map<String, dynamic> json) =
      _$AnswerModelImpl.fromJson;

  @override
  String get questionId;
  @override
  String get question;
  @override
  String get questionType;
  @override
  @JsonKey(name: 'answer')
  dynamic get answer;
  @override
  int get score;
  @override
  int get maxScore;
  @override
  @JsonKey(name: 'evaluatedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get evaluatedBy; // null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get evaluatedAt;
  @override
  String? get evaluationNotes;
  @override
  @JsonKey(name: 'files', fromJson: _filesFromJson, toJson: _filesToJson)
  List<FileModel> get files;

  /// Create a copy of AnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerModelImplCopyWith<_$AnswerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FileModel _$FileModelFromJson(Map<String, dynamic> json) {
  return _FileModel.fromJson(json);
}

/// @nodoc
mixin _$FileModel {
  String? get url => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  String? get originalName => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this FileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileModelCopyWith<FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileModelCopyWith<$Res> {
  factory $FileModelCopyWith(FileModel value, $Res Function(FileModel) then) =
      _$FileModelCopyWithImpl<$Res, FileModel>;
  @useResult
  $Res call(
      {String? url,
      String? filename,
      String? originalName,
      String? mimeType,
      int? size,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? uploadedAt});
}

/// @nodoc
class _$FileModelCopyWithImpl<$Res, $Val extends FileModel>
    implements $FileModelCopyWith<$Res> {
  _$FileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? filename = freezed,
    Object? originalName = freezed,
    Object? mimeType = freezed,
    Object? size = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileModelImplCopyWith<$Res>
    implements $FileModelCopyWith<$Res> {
  factory _$$FileModelImplCopyWith(
          _$FileModelImpl value, $Res Function(_$FileModelImpl) then) =
      __$$FileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url,
      String? filename,
      String? originalName,
      String? mimeType,
      int? size,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? uploadedAt});
}

/// @nodoc
class __$$FileModelImplCopyWithImpl<$Res>
    extends _$FileModelCopyWithImpl<$Res, _$FileModelImpl>
    implements _$$FileModelImplCopyWith<$Res> {
  __$$FileModelImplCopyWithImpl(
      _$FileModelImpl _value, $Res Function(_$FileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? filename = freezed,
    Object? originalName = freezed,
    Object? mimeType = freezed,
    Object? size = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_$FileModelImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileModelImpl implements _FileModel {
  _$FileModelImpl(
      {this.url,
      this.filename,
      this.originalName,
      this.mimeType,
      this.size,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.uploadedAt});

  factory _$FileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileModelImplFromJson(json);

  @override
  final String? url;
  @override
  final String? filename;
  @override
  final String? originalName;
  @override
  final String? mimeType;
  @override
  final int? size;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? uploadedAt;

  @override
  String toString() {
    return 'FileModel(url: $url, filename: $filename, originalName: $originalName, mimeType: $mimeType, size: $size, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, url, filename, originalName, mimeType, size, uploadedAt);

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileModelImplCopyWith<_$FileModelImpl> get copyWith =>
      __$$FileModelImplCopyWithImpl<_$FileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileModelImplToJson(
      this,
    );
  }
}

abstract class _FileModel implements FileModel {
  factory _FileModel(
      {final String? url,
      final String? filename,
      final String? originalName,
      final String? mimeType,
      final int? size,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? uploadedAt}) = _$FileModelImpl;

  factory _FileModel.fromJson(Map<String, dynamic> json) =
      _$FileModelImpl.fromJson;

  @override
  String? get url;
  @override
  String? get filename;
  @override
  String? get originalName;
  @override
  String? get mimeType;
  @override
  int? get size;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get uploadedAt;

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileModelImplCopyWith<_$FileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryScoreModel _$CategoryScoreModelFromJson(Map<String, dynamic> json) {
  return _CategoryScoreModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryScoreModel {
  String? get categoryId => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get maxScore => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;

  /// Serializes this CategoryScoreModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryScoreModelCopyWith<CategoryScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryScoreModelCopyWith<$Res> {
  factory $CategoryScoreModelCopyWith(
          CategoryScoreModel value, $Res Function(CategoryScoreModel) then) =
      _$CategoryScoreModelCopyWithImpl<$Res, CategoryScoreModel>;
  @useResult
  $Res call(
      {String? categoryId,
      String? categoryName,
      int score,
      int maxScore,
      int percentage});
}

/// @nodoc
class _$CategoryScoreModelCopyWithImpl<$Res, $Val extends CategoryScoreModel>
    implements $CategoryScoreModelCopyWith<$Res> {
  _$CategoryScoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? score = null,
    Object? maxScore = null,
    Object? percentage = null,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      maxScore: null == maxScore
          ? _value.maxScore
          : maxScore // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryScoreModelImplCopyWith<$Res>
    implements $CategoryScoreModelCopyWith<$Res> {
  factory _$$CategoryScoreModelImplCopyWith(_$CategoryScoreModelImpl value,
          $Res Function(_$CategoryScoreModelImpl) then) =
      __$$CategoryScoreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? categoryId,
      String? categoryName,
      int score,
      int maxScore,
      int percentage});
}

/// @nodoc
class __$$CategoryScoreModelImplCopyWithImpl<$Res>
    extends _$CategoryScoreModelCopyWithImpl<$Res, _$CategoryScoreModelImpl>
    implements _$$CategoryScoreModelImplCopyWith<$Res> {
  __$$CategoryScoreModelImplCopyWithImpl(_$CategoryScoreModelImpl _value,
      $Res Function(_$CategoryScoreModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? score = null,
    Object? maxScore = null,
    Object? percentage = null,
  }) {
    return _then(_$CategoryScoreModelImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      maxScore: null == maxScore
          ? _value.maxScore
          : maxScore // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryScoreModelImpl implements _CategoryScoreModel {
  _$CategoryScoreModelImpl(
      {this.categoryId,
      this.categoryName,
      required this.score,
      required this.maxScore,
      required this.percentage});

  factory _$CategoryScoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryScoreModelImplFromJson(json);

  @override
  final String? categoryId;
  @override
  final String? categoryName;
  @override
  final int score;
  @override
  final int maxScore;
  @override
  final int percentage;

  @override
  String toString() {
    return 'CategoryScoreModel(categoryId: $categoryId, categoryName: $categoryName, score: $score, maxScore: $maxScore, percentage: $percentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryScoreModelImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.maxScore, maxScore) ||
                other.maxScore == maxScore) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, categoryId, categoryName, score, maxScore, percentage);

  /// Create a copy of CategoryScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryScoreModelImplCopyWith<_$CategoryScoreModelImpl> get copyWith =>
      __$$CategoryScoreModelImplCopyWithImpl<_$CategoryScoreModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryScoreModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryScoreModel implements CategoryScoreModel {
  factory _CategoryScoreModel(
      {final String? categoryId,
      final String? categoryName,
      required final int score,
      required final int maxScore,
      required final int percentage}) = _$CategoryScoreModelImpl;

  factory _CategoryScoreModel.fromJson(Map<String, dynamic> json) =
      _$CategoryScoreModelImpl.fromJson;

  @override
  String? get categoryId;
  @override
  String? get categoryName;
  @override
  int get score;
  @override
  int get maxScore;
  @override
  int get percentage;

  /// Create a copy of CategoryScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryScoreModelImplCopyWith<_$CategoryScoreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HistoryEntryModel _$HistoryEntryModelFromJson(Map<String, dynamic> json) {
  return _HistoryEntryModel.fromJson(json);
}

/// @nodoc
mixin _$HistoryEntryModel {
  String get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'performedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get performedBy =>
      throw _privateConstructorUsedError; // null, String, or UserModel
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get timestamp => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  String? get previousStatus => throw _privateConstructorUsedError;
  String? get newStatus => throw _privateConstructorUsedError;

  /// Serializes this HistoryEntryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryEntryModelCopyWith<HistoryEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEntryModelCopyWith<$Res> {
  factory $HistoryEntryModelCopyWith(
          HistoryEntryModel value, $Res Function(HistoryEntryModel) then) =
      _$HistoryEntryModelCopyWithImpl<$Res, HistoryEntryModel>;
  @useResult
  $Res call(
      {String action,
      @JsonKey(
          name: 'performedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic performedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? timestamp,
      String? details,
      String? previousStatus,
      String? newStatus});
}

/// @nodoc
class _$HistoryEntryModelCopyWithImpl<$Res, $Val extends HistoryEntryModel>
    implements $HistoryEntryModelCopyWith<$Res> {
  _$HistoryEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? performedBy = freezed,
    Object? timestamp = freezed,
    Object? details = freezed,
    Object? previousStatus = freezed,
    Object? newStatus = freezed,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      performedBy: freezed == performedBy
          ? _value.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      previousStatus: freezed == previousStatus
          ? _value.previousStatus
          : previousStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      newStatus: freezed == newStatus
          ? _value.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryEntryModelImplCopyWith<$Res>
    implements $HistoryEntryModelCopyWith<$Res> {
  factory _$$HistoryEntryModelImplCopyWith(_$HistoryEntryModelImpl value,
          $Res Function(_$HistoryEntryModelImpl) then) =
      __$$HistoryEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String action,
      @JsonKey(
          name: 'performedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic performedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? timestamp,
      String? details,
      String? previousStatus,
      String? newStatus});
}

/// @nodoc
class __$$HistoryEntryModelImplCopyWithImpl<$Res>
    extends _$HistoryEntryModelCopyWithImpl<$Res, _$HistoryEntryModelImpl>
    implements _$$HistoryEntryModelImplCopyWith<$Res> {
  __$$HistoryEntryModelImplCopyWithImpl(_$HistoryEntryModelImpl _value,
      $Res Function(_$HistoryEntryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? performedBy = freezed,
    Object? timestamp = freezed,
    Object? details = freezed,
    Object? previousStatus = freezed,
    Object? newStatus = freezed,
  }) {
    return _then(_$HistoryEntryModelImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      performedBy: freezed == performedBy
          ? _value.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      previousStatus: freezed == previousStatus
          ? _value.previousStatus
          : previousStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      newStatus: freezed == newStatus
          ? _value.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryEntryModelImpl implements _HistoryEntryModel {
  _$HistoryEntryModelImpl(
      {required this.action,
      @JsonKey(
          name: 'performedBy', fromJson: _userFromJson, toJson: _userToJson)
      this.performedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.timestamp,
      this.details,
      this.previousStatus,
      this.newStatus});

  factory _$HistoryEntryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryEntryModelImplFromJson(json);

  @override
  final String action;
  @override
  @JsonKey(name: 'performedBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic performedBy;
// null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? timestamp;
  @override
  final String? details;
  @override
  final String? previousStatus;
  @override
  final String? newStatus;

  @override
  String toString() {
    return 'HistoryEntryModel(action: $action, performedBy: $performedBy, timestamp: $timestamp, details: $details, previousStatus: $previousStatus, newStatus: $newStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryEntryModelImpl &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality()
                .equals(other.performedBy, performedBy) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.previousStatus, previousStatus) ||
                other.previousStatus == previousStatus) &&
            (identical(other.newStatus, newStatus) ||
                other.newStatus == newStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      action,
      const DeepCollectionEquality().hash(performedBy),
      timestamp,
      details,
      previousStatus,
      newStatus);

  /// Create a copy of HistoryEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryEntryModelImplCopyWith<_$HistoryEntryModelImpl> get copyWith =>
      __$$HistoryEntryModelImplCopyWithImpl<_$HistoryEntryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryEntryModelImplToJson(
      this,
    );
  }
}

abstract class _HistoryEntryModel implements HistoryEntryModel {
  factory _HistoryEntryModel(
      {required final String action,
      @JsonKey(
          name: 'performedBy', fromJson: _userFromJson, toJson: _userToJson)
      final dynamic performedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? timestamp,
      final String? details,
      final String? previousStatus,
      final String? newStatus}) = _$HistoryEntryModelImpl;

  factory _HistoryEntryModel.fromJson(Map<String, dynamic> json) =
      _$HistoryEntryModelImpl.fromJson;

  @override
  String get action;
  @override
  @JsonKey(name: 'performedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get performedBy; // null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get timestamp;
  @override
  String? get details;
  @override
  String? get previousStatus;
  @override
  String? get newStatus;

  /// Create a copy of HistoryEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryEntryModelImplCopyWith<_$HistoryEntryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
