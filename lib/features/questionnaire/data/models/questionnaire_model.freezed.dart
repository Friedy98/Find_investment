// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionnaireModel _$QuestionnaireModelFromJson(Map<String, dynamic> json) {
  return _QuestionnaireModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get targetRole => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'questions', fromJson: _questionsFromJson, toJson: _questionsToJson)
  List<QuestionModel> get questions => throw _privateConstructorUsedError;
  int get totalMaxScore => throw _privateConstructorUsedError;
  int get passingScore => throw _privateConstructorUsedError;
  String get scoringMethod => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'categories',
      fromJson: _categoriesFromJson,
      toJson: _categoriesToJson)
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  QuestionnaireSettingsModel get settings => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get createdBy =>
      throw _privateConstructorUsedError; // null, String, or UserModel
  @JsonKey(name: 'lastModifiedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get lastModifiedBy =>
      throw _privateConstructorUsedError; // null, String, or UserModel
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get archivedAt => throw _privateConstructorUsedError;
  QuestionnaireStatsModel get stats => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'completionRate', fromJson: _doubleFromJson)
  double? get completionRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'questionCount', fromJson: _intFromJson)
  int? get questionCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'requiredQuestionCount', fromJson: _intFromJson)
  int? get requiredQuestionCount => throw _privateConstructorUsedError;

  /// Serializes this QuestionnaireModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireModelCopyWith<QuestionnaireModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireModelCopyWith<$Res> {
  factory $QuestionnaireModelCopyWith(
          QuestionnaireModel value, $Res Function(QuestionnaireModel) then) =
      _$QuestionnaireModelCopyWithImpl<$Res, QuestionnaireModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String? description,
      String targetRole,
      String version,
      String status,
      @JsonKey(
          name: 'questions',
          fromJson: _questionsFromJson,
          toJson: _questionsToJson)
      List<QuestionModel> questions,
      int totalMaxScore,
      int passingScore,
      String scoringMethod,
      @JsonKey(
          name: 'categories',
          fromJson: _categoriesFromJson,
          toJson: _categoriesToJson)
      List<CategoryModel> categories,
      QuestionnaireSettingsModel settings,
      @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic createdBy,
      @JsonKey(
          name: 'lastModifiedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic lastModifiedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? publishedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? archivedAt,
      QuestionnaireStatsModel stats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt,
      @JsonKey(name: 'completionRate', fromJson: _doubleFromJson)
      double? completionRate,
      @JsonKey(name: 'questionCount', fromJson: _intFromJson)
      int? questionCount,
      @JsonKey(name: 'requiredQuestionCount', fromJson: _intFromJson)
      int? requiredQuestionCount});

  $QuestionnaireSettingsModelCopyWith<$Res> get settings;
  $QuestionnaireStatsModelCopyWith<$Res> get stats;
}

/// @nodoc
class _$QuestionnaireModelCopyWithImpl<$Res, $Val extends QuestionnaireModel>
    implements $QuestionnaireModelCopyWith<$Res> {
  _$QuestionnaireModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? targetRole = null,
    Object? version = null,
    Object? status = null,
    Object? questions = null,
    Object? totalMaxScore = null,
    Object? passingScore = null,
    Object? scoringMethod = null,
    Object? categories = null,
    Object? settings = null,
    Object? createdBy = freezed,
    Object? lastModifiedBy = freezed,
    Object? publishedAt = freezed,
    Object? archivedAt = freezed,
    Object? stats = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? completionRate = freezed,
    Object? questionCount = freezed,
    Object? requiredQuestionCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      targetRole: null == targetRole
          ? _value.targetRole
          : targetRole // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      totalMaxScore: null == totalMaxScore
          ? _value.totalMaxScore
          : totalMaxScore // ignore: cast_nullable_to_non_nullable
              as int,
      passingScore: null == passingScore
          ? _value.passingScore
          : passingScore // ignore: cast_nullable_to_non_nullable
              as int,
      scoringMethod: null == scoringMethod
          ? _value.scoringMethod
          : scoringMethod // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as QuestionnaireSettingsModel,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatsModel,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completionRate: freezed == completionRate
          ? _value.completionRate
          : completionRate // ignore: cast_nullable_to_non_nullable
              as double?,
      questionCount: freezed == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      requiredQuestionCount: freezed == requiredQuestionCount
          ? _value.requiredQuestionCount
          : requiredQuestionCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireSettingsModelCopyWith<$Res> get settings {
    return $QuestionnaireSettingsModelCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireStatsModelCopyWith<$Res> get stats {
    return $QuestionnaireStatsModelCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionnaireModelImplCopyWith<$Res>
    implements $QuestionnaireModelCopyWith<$Res> {
  factory _$$QuestionnaireModelImplCopyWith(_$QuestionnaireModelImpl value,
          $Res Function(_$QuestionnaireModelImpl) then) =
      __$$QuestionnaireModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String? description,
      String targetRole,
      String version,
      String status,
      @JsonKey(
          name: 'questions',
          fromJson: _questionsFromJson,
          toJson: _questionsToJson)
      List<QuestionModel> questions,
      int totalMaxScore,
      int passingScore,
      String scoringMethod,
      @JsonKey(
          name: 'categories',
          fromJson: _categoriesFromJson,
          toJson: _categoriesToJson)
      List<CategoryModel> categories,
      QuestionnaireSettingsModel settings,
      @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic createdBy,
      @JsonKey(
          name: 'lastModifiedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic lastModifiedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? publishedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? archivedAt,
      QuestionnaireStatsModel stats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt,
      @JsonKey(name: 'completionRate', fromJson: _doubleFromJson)
      double? completionRate,
      @JsonKey(name: 'questionCount', fromJson: _intFromJson)
      int? questionCount,
      @JsonKey(name: 'requiredQuestionCount', fromJson: _intFromJson)
      int? requiredQuestionCount});

  @override
  $QuestionnaireSettingsModelCopyWith<$Res> get settings;
  @override
  $QuestionnaireStatsModelCopyWith<$Res> get stats;
}

/// @nodoc
class __$$QuestionnaireModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireModelCopyWithImpl<$Res, _$QuestionnaireModelImpl>
    implements _$$QuestionnaireModelImplCopyWith<$Res> {
  __$$QuestionnaireModelImplCopyWithImpl(_$QuestionnaireModelImpl _value,
      $Res Function(_$QuestionnaireModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? targetRole = null,
    Object? version = null,
    Object? status = null,
    Object? questions = null,
    Object? totalMaxScore = null,
    Object? passingScore = null,
    Object? scoringMethod = null,
    Object? categories = null,
    Object? settings = null,
    Object? createdBy = freezed,
    Object? lastModifiedBy = freezed,
    Object? publishedAt = freezed,
    Object? archivedAt = freezed,
    Object? stats = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? completionRate = freezed,
    Object? questionCount = freezed,
    Object? requiredQuestionCount = freezed,
  }) {
    return _then(_$QuestionnaireModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      targetRole: null == targetRole
          ? _value.targetRole
          : targetRole // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      totalMaxScore: null == totalMaxScore
          ? _value.totalMaxScore
          : totalMaxScore // ignore: cast_nullable_to_non_nullable
              as int,
      passingScore: null == passingScore
          ? _value.passingScore
          : passingScore // ignore: cast_nullable_to_non_nullable
              as int,
      scoringMethod: null == scoringMethod
          ? _value.scoringMethod
          : scoringMethod // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as QuestionnaireSettingsModel,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatsModel,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completionRate: freezed == completionRate
          ? _value.completionRate
          : completionRate // ignore: cast_nullable_to_non_nullable
              as double?,
      questionCount: freezed == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      requiredQuestionCount: freezed == requiredQuestionCount
          ? _value.requiredQuestionCount
          : requiredQuestionCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireModelImpl extends _QuestionnaireModel {
  _$QuestionnaireModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      this.description,
      required this.targetRole,
      required this.version,
      required this.status,
      @JsonKey(
          name: 'questions',
          fromJson: _questionsFromJson,
          toJson: _questionsToJson)
      final List<QuestionModel> questions = const [],
      required this.totalMaxScore,
      required this.passingScore,
      required this.scoringMethod,
      @JsonKey(
          name: 'categories',
          fromJson: _categoriesFromJson,
          toJson: _categoriesToJson)
      final List<CategoryModel> categories = const [],
      required this.settings,
      @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
      this.createdBy,
      @JsonKey(
          name: 'lastModifiedBy', fromJson: _userFromJson, toJson: _userToJson)
      this.lastModifiedBy,
      @JsonKey(
          fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.publishedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.archivedAt,
      required this.stats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt,
      @JsonKey(name: 'completionRate', fromJson: _doubleFromJson)
      this.completionRate,
      @JsonKey(name: 'questionCount', fromJson: _intFromJson)
      this.questionCount,
      @JsonKey(name: 'requiredQuestionCount', fromJson: _intFromJson)
      this.requiredQuestionCount})
      : _questions = questions,
        _categories = categories,
        super._();

  factory _$QuestionnaireModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String targetRole;
  @override
  final String version;
  @override
  final String status;
  final List<QuestionModel> _questions;
  @override
  @JsonKey(
      name: 'questions', fromJson: _questionsFromJson, toJson: _questionsToJson)
  List<QuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final int totalMaxScore;
  @override
  final int passingScore;
  @override
  final String scoringMethod;
  final List<CategoryModel> _categories;
  @override
  @JsonKey(
      name: 'categories',
      fromJson: _categoriesFromJson,
      toJson: _categoriesToJson)
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final QuestionnaireSettingsModel settings;
  @override
  @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic createdBy;
// null, String, or UserModel
  @override
  @JsonKey(name: 'lastModifiedBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic lastModifiedBy;
// null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? publishedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? archivedAt;
  @override
  final QuestionnaireStatsModel stats;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'completionRate', fromJson: _doubleFromJson)
  final double? completionRate;
  @override
  @JsonKey(name: 'questionCount', fromJson: _intFromJson)
  final int? questionCount;
  @override
  @JsonKey(name: 'requiredQuestionCount', fromJson: _intFromJson)
  final int? requiredQuestionCount;

  @override
  String toString() {
    return 'QuestionnaireModel(id: $id, title: $title, description: $description, targetRole: $targetRole, version: $version, status: $status, questions: $questions, totalMaxScore: $totalMaxScore, passingScore: $passingScore, scoringMethod: $scoringMethod, categories: $categories, settings: $settings, createdBy: $createdBy, lastModifiedBy: $lastModifiedBy, publishedAt: $publishedAt, archivedAt: $archivedAt, stats: $stats, createdAt: $createdAt, updatedAt: $updatedAt, completionRate: $completionRate, questionCount: $questionCount, requiredQuestionCount: $requiredQuestionCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.targetRole, targetRole) ||
                other.targetRole == targetRole) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.totalMaxScore, totalMaxScore) ||
                other.totalMaxScore == totalMaxScore) &&
            (identical(other.passingScore, passingScore) ||
                other.passingScore == passingScore) &&
            (identical(other.scoringMethod, scoringMethod) ||
                other.scoringMethod == scoringMethod) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality()
                .equals(other.lastModifiedBy, lastModifiedBy) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.archivedAt, archivedAt) ||
                other.archivedAt == archivedAt) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.completionRate, completionRate) ||
                other.completionRate == completionRate) &&
            (identical(other.questionCount, questionCount) ||
                other.questionCount == questionCount) &&
            (identical(other.requiredQuestionCount, requiredQuestionCount) ||
                other.requiredQuestionCount == requiredQuestionCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        targetRole,
        version,
        status,
        const DeepCollectionEquality().hash(_questions),
        totalMaxScore,
        passingScore,
        scoringMethod,
        const DeepCollectionEquality().hash(_categories),
        settings,
        const DeepCollectionEquality().hash(createdBy),
        const DeepCollectionEquality().hash(lastModifiedBy),
        publishedAt,
        archivedAt,
        stats,
        createdAt,
        updatedAt,
        completionRate,
        questionCount,
        requiredQuestionCount
      ]);

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireModelImplCopyWith<_$QuestionnaireModelImpl> get copyWith =>
      __$$QuestionnaireModelImplCopyWithImpl<_$QuestionnaireModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionnaireModel extends QuestionnaireModel {
  factory _QuestionnaireModel(
      {@JsonKey(name: '_id') required final String id,
      required final String title,
      final String? description,
      required final String targetRole,
      required final String version,
      required final String status,
      @JsonKey(
          name: 'questions',
          fromJson: _questionsFromJson,
          toJson: _questionsToJson)
      final List<QuestionModel> questions,
      required final int totalMaxScore,
      required final int passingScore,
      required final String scoringMethod,
      @JsonKey(
          name: 'categories',
          fromJson: _categoriesFromJson,
          toJson: _categoriesToJson)
      final List<CategoryModel> categories,
      required final QuestionnaireSettingsModel settings,
      @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
      final dynamic createdBy,
      @JsonKey(
          name: 'lastModifiedBy', fromJson: _userFromJson, toJson: _userToJson)
      final dynamic lastModifiedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? publishedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? archivedAt,
      required final QuestionnaireStatsModel stats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt,
      @JsonKey(name: 'completionRate', fromJson: _doubleFromJson)
      final double? completionRate,
      @JsonKey(name: 'questionCount', fromJson: _intFromJson)
      final int? questionCount,
      @JsonKey(name: 'requiredQuestionCount', fromJson: _intFromJson)
      final int? requiredQuestionCount}) = _$QuestionnaireModelImpl;
  _QuestionnaireModel._() : super._();

  factory _QuestionnaireModel.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  String get targetRole;
  @override
  String get version;
  @override
  String get status;
  @override
  @JsonKey(
      name: 'questions', fromJson: _questionsFromJson, toJson: _questionsToJson)
  List<QuestionModel> get questions;
  @override
  int get totalMaxScore;
  @override
  int get passingScore;
  @override
  String get scoringMethod;
  @override
  @JsonKey(
      name: 'categories',
      fromJson: _categoriesFromJson,
      toJson: _categoriesToJson)
  List<CategoryModel> get categories;
  @override
  QuestionnaireSettingsModel get settings;
  @override
  @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get createdBy; // null, String, or UserModel
  @override
  @JsonKey(name: 'lastModifiedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get lastModifiedBy; // null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get publishedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get archivedAt;
  @override
  QuestionnaireStatsModel get stats;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'completionRate', fromJson: _doubleFromJson)
  double? get completionRate;
  @override
  @JsonKey(name: 'questionCount', fromJson: _intFromJson)
  int? get questionCount;
  @override
  @JsonKey(name: 'requiredQuestionCount', fromJson: _intFromJson)
  int? get requiredQuestionCount;

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireModelImplCopyWith<_$QuestionnaireModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get required => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'options', fromJson: _optionsFromJson, toJson: _optionsToJson)
  List<QuestionOptionModel> get options => throw _privateConstructorUsedError;
  QuestionValidationModel? get validation => throw _privateConstructorUsedError;
  QuestionScoringModel? get scoring => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'conditions',
      fromJson: _conditionsFromJson,
      toJson: _conditionsToJson)
  List<QuestionConditionModel> get conditions =>
      throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  /// Serializes this QuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {String id,
      String type,
      String question,
      String? description,
      bool required,
      int order,
      @JsonKey(
          name: 'options', fromJson: _optionsFromJson, toJson: _optionsToJson)
      List<QuestionOptionModel> options,
      QuestionValidationModel? validation,
      QuestionScoringModel? scoring,
      @JsonKey(
          name: 'conditions',
          fromJson: _conditionsFromJson,
          toJson: _conditionsToJson)
      List<QuestionConditionModel> conditions,
      String? category,
      List<String> tags});

  $QuestionValidationModelCopyWith<$Res>? get validation;
  $QuestionScoringModelCopyWith<$Res>? get scoring;
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? question = null,
    Object? description = freezed,
    Object? required = null,
    Object? order = null,
    Object? options = null,
    Object? validation = freezed,
    Object? scoring = freezed,
    Object? conditions = null,
    Object? category = freezed,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<QuestionOptionModel>,
      validation: freezed == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as QuestionValidationModel?,
      scoring: freezed == scoring
          ? _value.scoring
          : scoring // ignore: cast_nullable_to_non_nullable
              as QuestionScoringModel?,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<QuestionConditionModel>,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionValidationModelCopyWith<$Res>? get validation {
    if (_value.validation == null) {
      return null;
    }

    return $QuestionValidationModelCopyWith<$Res>(_value.validation!, (value) {
      return _then(_value.copyWith(validation: value) as $Val);
    });
  }

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionScoringModelCopyWith<$Res>? get scoring {
    if (_value.scoring == null) {
      return null;
    }

    return $QuestionScoringModelCopyWith<$Res>(_value.scoring!, (value) {
      return _then(_value.copyWith(scoring: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionModelImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$QuestionModelImplCopyWith(
          _$QuestionModelImpl value, $Res Function(_$QuestionModelImpl) then) =
      __$$QuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String question,
      String? description,
      bool required,
      int order,
      @JsonKey(
          name: 'options', fromJson: _optionsFromJson, toJson: _optionsToJson)
      List<QuestionOptionModel> options,
      QuestionValidationModel? validation,
      QuestionScoringModel? scoring,
      @JsonKey(
          name: 'conditions',
          fromJson: _conditionsFromJson,
          toJson: _conditionsToJson)
      List<QuestionConditionModel> conditions,
      String? category,
      List<String> tags});

  @override
  $QuestionValidationModelCopyWith<$Res>? get validation;
  @override
  $QuestionScoringModelCopyWith<$Res>? get scoring;
}

/// @nodoc
class __$$QuestionModelImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$QuestionModelImpl>
    implements _$$QuestionModelImplCopyWith<$Res> {
  __$$QuestionModelImplCopyWithImpl(
      _$QuestionModelImpl _value, $Res Function(_$QuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? question = null,
    Object? description = freezed,
    Object? required = null,
    Object? order = null,
    Object? options = null,
    Object? validation = freezed,
    Object? scoring = freezed,
    Object? conditions = null,
    Object? category = freezed,
    Object? tags = null,
  }) {
    return _then(_$QuestionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<QuestionOptionModel>,
      validation: freezed == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as QuestionValidationModel?,
      scoring: freezed == scoring
          ? _value.scoring
          : scoring // ignore: cast_nullable_to_non_nullable
              as QuestionScoringModel?,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<QuestionConditionModel>,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionModelImpl implements _QuestionModel {
  _$QuestionModelImpl(
      {required this.id,
      required this.type,
      required this.question,
      this.description,
      this.required = false,
      required this.order,
      @JsonKey(
          name: 'options', fromJson: _optionsFromJson, toJson: _optionsToJson)
      final List<QuestionOptionModel> options = const [],
      this.validation,
      this.scoring,
      @JsonKey(
          name: 'conditions',
          fromJson: _conditionsFromJson,
          toJson: _conditionsToJson)
      final List<QuestionConditionModel> conditions = const [],
      this.category,
      final List<String> tags = const []})
      : _options = options,
        _conditions = conditions,
        _tags = tags;

  factory _$QuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String question;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool required;
  @override
  final int order;
  final List<QuestionOptionModel> _options;
  @override
  @JsonKey(name: 'options', fromJson: _optionsFromJson, toJson: _optionsToJson)
  List<QuestionOptionModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final QuestionValidationModel? validation;
  @override
  final QuestionScoringModel? scoring;
  final List<QuestionConditionModel> _conditions;
  @override
  @JsonKey(
      name: 'conditions',
      fromJson: _conditionsFromJson,
      toJson: _conditionsToJson)
  List<QuestionConditionModel> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @override
  final String? category;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'QuestionModel(id: $id, type: $type, question: $question, description: $description, required: $required, order: $order, options: $options, validation: $validation, scoring: $scoring, conditions: $conditions, category: $category, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.scoring, scoring) || other.scoring == scoring) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      question,
      description,
      required,
      order,
      const DeepCollectionEquality().hash(_options),
      validation,
      scoring,
      const DeepCollectionEquality().hash(_conditions),
      category,
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      __$$QuestionModelImplCopyWithImpl<_$QuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionModel implements QuestionModel {
  factory _QuestionModel(
      {required final String id,
      required final String type,
      required final String question,
      final String? description,
      final bool required,
      required final int order,
      @JsonKey(
          name: 'options', fromJson: _optionsFromJson, toJson: _optionsToJson)
      final List<QuestionOptionModel> options,
      final QuestionValidationModel? validation,
      final QuestionScoringModel? scoring,
      @JsonKey(
          name: 'conditions',
          fromJson: _conditionsFromJson,
          toJson: _conditionsToJson)
      final List<QuestionConditionModel> conditions,
      final String? category,
      final List<String> tags}) = _$QuestionModelImpl;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get question;
  @override
  String? get description;
  @override
  bool get required;
  @override
  int get order;
  @override
  @JsonKey(name: 'options', fromJson: _optionsFromJson, toJson: _optionsToJson)
  List<QuestionOptionModel> get options;
  @override
  QuestionValidationModel? get validation;
  @override
  QuestionScoringModel? get scoring;
  @override
  @JsonKey(
      name: 'conditions',
      fromJson: _conditionsFromJson,
      toJson: _conditionsToJson)
  List<QuestionConditionModel> get conditions;
  @override
  String? get category;
  @override
  List<String> get tags;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionOptionModel _$QuestionOptionModelFromJson(Map<String, dynamic> json) {
  return _QuestionOptionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionOptionModel {
  String? get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  /// Serializes this QuestionOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionOptionModelCopyWith<QuestionOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionOptionModelCopyWith<$Res> {
  factory $QuestionOptionModelCopyWith(
          QuestionOptionModel value, $Res Function(QuestionOptionModel) then) =
      _$QuestionOptionModelCopyWithImpl<$Res, QuestionOptionModel>;
  @useResult
  $Res call({String? id, String label, String value, int score});
}

/// @nodoc
class _$QuestionOptionModelCopyWithImpl<$Res, $Val extends QuestionOptionModel>
    implements $QuestionOptionModelCopyWith<$Res> {
  _$QuestionOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = null,
    Object? value = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionOptionModelImplCopyWith<$Res>
    implements $QuestionOptionModelCopyWith<$Res> {
  factory _$$QuestionOptionModelImplCopyWith(_$QuestionOptionModelImpl value,
          $Res Function(_$QuestionOptionModelImpl) then) =
      __$$QuestionOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String label, String value, int score});
}

/// @nodoc
class __$$QuestionOptionModelImplCopyWithImpl<$Res>
    extends _$QuestionOptionModelCopyWithImpl<$Res, _$QuestionOptionModelImpl>
    implements _$$QuestionOptionModelImplCopyWith<$Res> {
  __$$QuestionOptionModelImplCopyWithImpl(_$QuestionOptionModelImpl _value,
      $Res Function(_$QuestionOptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = null,
    Object? value = null,
    Object? score = null,
  }) {
    return _then(_$QuestionOptionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionOptionModelImpl implements _QuestionOptionModel {
  _$QuestionOptionModelImpl(
      {this.id, required this.label, required this.value, this.score = 0});

  factory _$QuestionOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionOptionModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String label;
  @override
  final String value;
  @override
  @JsonKey()
  final int score;

  @override
  String toString() {
    return 'QuestionOptionModel(id: $id, label: $label, value: $value, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionOptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, value, score);

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionOptionModelImplCopyWith<_$QuestionOptionModelImpl> get copyWith =>
      __$$QuestionOptionModelImplCopyWithImpl<_$QuestionOptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionOptionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionOptionModel implements QuestionOptionModel {
  factory _QuestionOptionModel(
      {final String? id,
      required final String label,
      required final String value,
      final int score}) = _$QuestionOptionModelImpl;

  factory _QuestionOptionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionOptionModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get label;
  @override
  String get value;
  @override
  int get score;

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionOptionModelImplCopyWith<_$QuestionOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionValidationModel _$QuestionValidationModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionValidationModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionValidationModel {
  int? get minLength => throw _privateConstructorUsedError;
  int? get maxLength => throw _privateConstructorUsedError;
  int? get min => throw _privateConstructorUsedError;
  int? get max => throw _privateConstructorUsedError;
  String? get pattern => throw _privateConstructorUsedError;
  String? get customMessage => throw _privateConstructorUsedError;

  /// Serializes this QuestionValidationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionValidationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionValidationModelCopyWith<QuestionValidationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionValidationModelCopyWith<$Res> {
  factory $QuestionValidationModelCopyWith(QuestionValidationModel value,
          $Res Function(QuestionValidationModel) then) =
      _$QuestionValidationModelCopyWithImpl<$Res, QuestionValidationModel>;
  @useResult
  $Res call(
      {int? minLength,
      int? maxLength,
      int? min,
      int? max,
      String? pattern,
      String? customMessage});
}

/// @nodoc
class _$QuestionValidationModelCopyWithImpl<$Res,
        $Val extends QuestionValidationModel>
    implements $QuestionValidationModelCopyWith<$Res> {
  _$QuestionValidationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionValidationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minLength = freezed,
    Object? maxLength = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? pattern = freezed,
    Object? customMessage = freezed,
  }) {
    return _then(_value.copyWith(
      minLength: freezed == minLength
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int?,
      pattern: freezed == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      customMessage: freezed == customMessage
          ? _value.customMessage
          : customMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionValidationModelImplCopyWith<$Res>
    implements $QuestionValidationModelCopyWith<$Res> {
  factory _$$QuestionValidationModelImplCopyWith(
          _$QuestionValidationModelImpl value,
          $Res Function(_$QuestionValidationModelImpl) then) =
      __$$QuestionValidationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? minLength,
      int? maxLength,
      int? min,
      int? max,
      String? pattern,
      String? customMessage});
}

/// @nodoc
class __$$QuestionValidationModelImplCopyWithImpl<$Res>
    extends _$QuestionValidationModelCopyWithImpl<$Res,
        _$QuestionValidationModelImpl>
    implements _$$QuestionValidationModelImplCopyWith<$Res> {
  __$$QuestionValidationModelImplCopyWithImpl(
      _$QuestionValidationModelImpl _value,
      $Res Function(_$QuestionValidationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionValidationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minLength = freezed,
    Object? maxLength = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? pattern = freezed,
    Object? customMessage = freezed,
  }) {
    return _then(_$QuestionValidationModelImpl(
      minLength: freezed == minLength
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int?,
      pattern: freezed == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      customMessage: freezed == customMessage
          ? _value.customMessage
          : customMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionValidationModelImpl implements _QuestionValidationModel {
  _$QuestionValidationModelImpl(
      {this.minLength,
      this.maxLength,
      this.min,
      this.max,
      this.pattern,
      this.customMessage});

  factory _$QuestionValidationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionValidationModelImplFromJson(json);

  @override
  final int? minLength;
  @override
  final int? maxLength;
  @override
  final int? min;
  @override
  final int? max;
  @override
  final String? pattern;
  @override
  final String? customMessage;

  @override
  String toString() {
    return 'QuestionValidationModel(minLength: $minLength, maxLength: $maxLength, min: $min, max: $max, pattern: $pattern, customMessage: $customMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionValidationModelImpl &&
            (identical(other.minLength, minLength) ||
                other.minLength == minLength) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            (identical(other.customMessage, customMessage) ||
                other.customMessage == customMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, minLength, maxLength, min, max, pattern, customMessage);

  /// Create a copy of QuestionValidationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionValidationModelImplCopyWith<_$QuestionValidationModelImpl>
      get copyWith => __$$QuestionValidationModelImplCopyWithImpl<
          _$QuestionValidationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionValidationModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionValidationModel implements QuestionValidationModel {
  factory _QuestionValidationModel(
      {final int? minLength,
      final int? maxLength,
      final int? min,
      final int? max,
      final String? pattern,
      final String? customMessage}) = _$QuestionValidationModelImpl;

  factory _QuestionValidationModel.fromJson(Map<String, dynamic> json) =
      _$QuestionValidationModelImpl.fromJson;

  @override
  int? get minLength;
  @override
  int? get maxLength;
  @override
  int? get min;
  @override
  int? get max;
  @override
  String? get pattern;
  @override
  String? get customMessage;

  /// Create a copy of QuestionValidationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionValidationModelImplCopyWith<_$QuestionValidationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionScoringModel _$QuestionScoringModelFromJson(Map<String, dynamic> json) {
  return _QuestionScoringModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionScoringModel {
  String get type => throw _privateConstructorUsedError;
  int get maxScore => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'criteria', fromJson: _criteriaFromJson, toJson: _criteriaToJson)
  List<ScoringCriterionModel> get criteria =>
      throw _privateConstructorUsedError;

  /// Serializes this QuestionScoringModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionScoringModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionScoringModelCopyWith<QuestionScoringModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionScoringModelCopyWith<$Res> {
  factory $QuestionScoringModelCopyWith(QuestionScoringModel value,
          $Res Function(QuestionScoringModel) then) =
      _$QuestionScoringModelCopyWithImpl<$Res, QuestionScoringModel>;
  @useResult
  $Res call(
      {String type,
      int maxScore,
      int weight,
      @JsonKey(
          name: 'criteria',
          fromJson: _criteriaFromJson,
          toJson: _criteriaToJson)
      List<ScoringCriterionModel> criteria});
}

/// @nodoc
class _$QuestionScoringModelCopyWithImpl<$Res,
        $Val extends QuestionScoringModel>
    implements $QuestionScoringModelCopyWith<$Res> {
  _$QuestionScoringModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionScoringModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? maxScore = null,
    Object? weight = null,
    Object? criteria = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      maxScore: null == maxScore
          ? _value.maxScore
          : maxScore // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      criteria: null == criteria
          ? _value.criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as List<ScoringCriterionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionScoringModelImplCopyWith<$Res>
    implements $QuestionScoringModelCopyWith<$Res> {
  factory _$$QuestionScoringModelImplCopyWith(_$QuestionScoringModelImpl value,
          $Res Function(_$QuestionScoringModelImpl) then) =
      __$$QuestionScoringModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      int maxScore,
      int weight,
      @JsonKey(
          name: 'criteria',
          fromJson: _criteriaFromJson,
          toJson: _criteriaToJson)
      List<ScoringCriterionModel> criteria});
}

/// @nodoc
class __$$QuestionScoringModelImplCopyWithImpl<$Res>
    extends _$QuestionScoringModelCopyWithImpl<$Res, _$QuestionScoringModelImpl>
    implements _$$QuestionScoringModelImplCopyWith<$Res> {
  __$$QuestionScoringModelImplCopyWithImpl(_$QuestionScoringModelImpl _value,
      $Res Function(_$QuestionScoringModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionScoringModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? maxScore = null,
    Object? weight = null,
    Object? criteria = null,
  }) {
    return _then(_$QuestionScoringModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      maxScore: null == maxScore
          ? _value.maxScore
          : maxScore // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      criteria: null == criteria
          ? _value._criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as List<ScoringCriterionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionScoringModelImpl implements _QuestionScoringModel {
  _$QuestionScoringModelImpl(
      {this.type = "points",
      this.maxScore = 10,
      this.weight = 1,
      @JsonKey(
          name: 'criteria',
          fromJson: _criteriaFromJson,
          toJson: _criteriaToJson)
      final List<ScoringCriterionModel> criteria = const []})
      : _criteria = criteria;

  factory _$QuestionScoringModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionScoringModelImplFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final int maxScore;
  @override
  @JsonKey()
  final int weight;
  final List<ScoringCriterionModel> _criteria;
  @override
  @JsonKey(
      name: 'criteria', fromJson: _criteriaFromJson, toJson: _criteriaToJson)
  List<ScoringCriterionModel> get criteria {
    if (_criteria is EqualUnmodifiableListView) return _criteria;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_criteria);
  }

  @override
  String toString() {
    return 'QuestionScoringModel(type: $type, maxScore: $maxScore, weight: $weight, criteria: $criteria)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionScoringModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.maxScore, maxScore) ||
                other.maxScore == maxScore) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._criteria, _criteria));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, maxScore, weight,
      const DeepCollectionEquality().hash(_criteria));

  /// Create a copy of QuestionScoringModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionScoringModelImplCopyWith<_$QuestionScoringModelImpl>
      get copyWith =>
          __$$QuestionScoringModelImplCopyWithImpl<_$QuestionScoringModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionScoringModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionScoringModel implements QuestionScoringModel {
  factory _QuestionScoringModel(
      {final String type,
      final int maxScore,
      final int weight,
      @JsonKey(
          name: 'criteria',
          fromJson: _criteriaFromJson,
          toJson: _criteriaToJson)
      final List<ScoringCriterionModel> criteria}) = _$QuestionScoringModelImpl;

  factory _QuestionScoringModel.fromJson(Map<String, dynamic> json) =
      _$QuestionScoringModelImpl.fromJson;

  @override
  String get type;
  @override
  int get maxScore;
  @override
  int get weight;
  @override
  @JsonKey(
      name: 'criteria', fromJson: _criteriaFromJson, toJson: _criteriaToJson)
  List<ScoringCriterionModel> get criteria;

  /// Create a copy of QuestionScoringModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionScoringModelImplCopyWith<_$QuestionScoringModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ScoringCriterionModel _$ScoringCriterionModelFromJson(
    Map<String, dynamic> json) {
  return _ScoringCriterionModel.fromJson(json);
}

/// @nodoc
mixin _$ScoringCriterionModel {
  String? get condition => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ScoringCriterionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoringCriterionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoringCriterionModelCopyWith<ScoringCriterionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoringCriterionModelCopyWith<$Res> {
  factory $ScoringCriterionModelCopyWith(ScoringCriterionModel value,
          $Res Function(ScoringCriterionModel) then) =
      _$ScoringCriterionModelCopyWithImpl<$Res, ScoringCriterionModel>;
  @useResult
  $Res call({String? condition, int? score, String? description});
}

/// @nodoc
class _$ScoringCriterionModelCopyWithImpl<$Res,
        $Val extends ScoringCriterionModel>
    implements $ScoringCriterionModelCopyWith<$Res> {
  _$ScoringCriterionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoringCriterionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = freezed,
    Object? score = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoringCriterionModelImplCopyWith<$Res>
    implements $ScoringCriterionModelCopyWith<$Res> {
  factory _$$ScoringCriterionModelImplCopyWith(
          _$ScoringCriterionModelImpl value,
          $Res Function(_$ScoringCriterionModelImpl) then) =
      __$$ScoringCriterionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? condition, int? score, String? description});
}

/// @nodoc
class __$$ScoringCriterionModelImplCopyWithImpl<$Res>
    extends _$ScoringCriterionModelCopyWithImpl<$Res,
        _$ScoringCriterionModelImpl>
    implements _$$ScoringCriterionModelImplCopyWith<$Res> {
  __$$ScoringCriterionModelImplCopyWithImpl(_$ScoringCriterionModelImpl _value,
      $Res Function(_$ScoringCriterionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScoringCriterionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = freezed,
    Object? score = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ScoringCriterionModelImpl(
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoringCriterionModelImpl implements _ScoringCriterionModel {
  _$ScoringCriterionModelImpl({this.condition, this.score, this.description});

  factory _$ScoringCriterionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoringCriterionModelImplFromJson(json);

  @override
  final String? condition;
  @override
  final int? score;
  @override
  final String? description;

  @override
  String toString() {
    return 'ScoringCriterionModel(condition: $condition, score: $score, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoringCriterionModelImpl &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, condition, score, description);

  /// Create a copy of ScoringCriterionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoringCriterionModelImplCopyWith<_$ScoringCriterionModelImpl>
      get copyWith => __$$ScoringCriterionModelImplCopyWithImpl<
          _$ScoringCriterionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoringCriterionModelImplToJson(
      this,
    );
  }
}

abstract class _ScoringCriterionModel implements ScoringCriterionModel {
  factory _ScoringCriterionModel(
      {final String? condition,
      final int? score,
      final String? description}) = _$ScoringCriterionModelImpl;

  factory _ScoringCriterionModel.fromJson(Map<String, dynamic> json) =
      _$ScoringCriterionModelImpl.fromJson;

  @override
  String? get condition;
  @override
  int? get score;
  @override
  String? get description;

  /// Create a copy of ScoringCriterionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoringCriterionModelImplCopyWith<_$ScoringCriterionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionConditionModel _$QuestionConditionModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionConditionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionConditionModel {
  String? get questionId => throw _privateConstructorUsedError;
  String? get operator => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  /// Serializes this QuestionConditionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionConditionModelCopyWith<QuestionConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionConditionModelCopyWith<$Res> {
  factory $QuestionConditionModelCopyWith(QuestionConditionModel value,
          $Res Function(QuestionConditionModel) then) =
      _$QuestionConditionModelCopyWithImpl<$Res, QuestionConditionModel>;
  @useResult
  $Res call(
      {String? questionId, String? operator, String? value, String? action});
}

/// @nodoc
class _$QuestionConditionModelCopyWithImpl<$Res,
        $Val extends QuestionConditionModel>
    implements $QuestionConditionModelCopyWith<$Res> {
  _$QuestionConditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = freezed,
    Object? operator = freezed,
    Object? value = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionConditionModelImplCopyWith<$Res>
    implements $QuestionConditionModelCopyWith<$Res> {
  factory _$$QuestionConditionModelImplCopyWith(
          _$QuestionConditionModelImpl value,
          $Res Function(_$QuestionConditionModelImpl) then) =
      __$$QuestionConditionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? questionId, String? operator, String? value, String? action});
}

/// @nodoc
class __$$QuestionConditionModelImplCopyWithImpl<$Res>
    extends _$QuestionConditionModelCopyWithImpl<$Res,
        _$QuestionConditionModelImpl>
    implements _$$QuestionConditionModelImplCopyWith<$Res> {
  __$$QuestionConditionModelImplCopyWithImpl(
      _$QuestionConditionModelImpl _value,
      $Res Function(_$QuestionConditionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = freezed,
    Object? operator = freezed,
    Object? value = freezed,
    Object? action = freezed,
  }) {
    return _then(_$QuestionConditionModelImpl(
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionConditionModelImpl implements _QuestionConditionModel {
  _$QuestionConditionModelImpl(
      {this.questionId, this.operator, this.value, this.action});

  factory _$QuestionConditionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionConditionModelImplFromJson(json);

  @override
  final String? questionId;
  @override
  final String? operator;
  @override
  final String? value;
  @override
  final String? action;

  @override
  String toString() {
    return 'QuestionConditionModel(questionId: $questionId, operator: $operator, value: $value, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionConditionModelImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, questionId, operator, value, action);

  /// Create a copy of QuestionConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionConditionModelImplCopyWith<_$QuestionConditionModelImpl>
      get copyWith => __$$QuestionConditionModelImplCopyWithImpl<
          _$QuestionConditionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionConditionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionConditionModel implements QuestionConditionModel {
  factory _QuestionConditionModel(
      {final String? questionId,
      final String? operator,
      final String? value,
      final String? action}) = _$QuestionConditionModelImpl;

  factory _QuestionConditionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionConditionModelImpl.fromJson;

  @override
  String? get questionId;
  @override
  String? get operator;
  @override
  String? get value;
  @override
  String? get action;

  /// Create a copy of QuestionConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionConditionModelImplCopyWith<_$QuestionConditionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {String? id, String? name, String? description, int weight, int? order});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? weight = null,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String? name, String? description, int weight, int? order});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? weight = null,
    Object? order = freezed,
  }) {
    return _then(_$CategoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  _$CategoryModelImpl(
      {this.id, this.name, this.description, this.weight = 1, this.order});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey()
  final int weight;
  @override
  final int? order;

  @override
  String toString() {
    return 'CategoryModel(id: $id, name: $name, description: $description, weight: $weight, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, weight, order);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  factory _CategoryModel(
      {final String? id,
      final String? name,
      final String? description,
      final int weight,
      final int? order}) = _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int get weight;
  @override
  int? get order;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireSettingsModel _$QuestionnaireSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireSettingsModel {
  bool get allowSaveDraft => throw _privateConstructorUsedError;
  bool get showProgress => throw _privateConstructorUsedError;
  bool get randomizeQuestions => throw _privateConstructorUsedError;
  int? get timeLimit => throw _privateConstructorUsedError;
  int get maxAttempts => throw _privateConstructorUsedError;
  bool get showScoreToUser => throw _privateConstructorUsedError;
  bool get requireAllQuestions => throw _privateConstructorUsedError;

  /// Serializes this QuestionnaireSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireSettingsModelCopyWith<QuestionnaireSettingsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireSettingsModelCopyWith<$Res> {
  factory $QuestionnaireSettingsModelCopyWith(QuestionnaireSettingsModel value,
          $Res Function(QuestionnaireSettingsModel) then) =
      _$QuestionnaireSettingsModelCopyWithImpl<$Res,
          QuestionnaireSettingsModel>;
  @useResult
  $Res call(
      {bool allowSaveDraft,
      bool showProgress,
      bool randomizeQuestions,
      int? timeLimit,
      int maxAttempts,
      bool showScoreToUser,
      bool requireAllQuestions});
}

/// @nodoc
class _$QuestionnaireSettingsModelCopyWithImpl<$Res,
        $Val extends QuestionnaireSettingsModel>
    implements $QuestionnaireSettingsModelCopyWith<$Res> {
  _$QuestionnaireSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowSaveDraft = null,
    Object? showProgress = null,
    Object? randomizeQuestions = null,
    Object? timeLimit = freezed,
    Object? maxAttempts = null,
    Object? showScoreToUser = null,
    Object? requireAllQuestions = null,
  }) {
    return _then(_value.copyWith(
      allowSaveDraft: null == allowSaveDraft
          ? _value.allowSaveDraft
          : allowSaveDraft // ignore: cast_nullable_to_non_nullable
              as bool,
      showProgress: null == showProgress
          ? _value.showProgress
          : showProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      randomizeQuestions: null == randomizeQuestions
          ? _value.randomizeQuestions
          : randomizeQuestions // ignore: cast_nullable_to_non_nullable
              as bool,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAttempts: null == maxAttempts
          ? _value.maxAttempts
          : maxAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      showScoreToUser: null == showScoreToUser
          ? _value.showScoreToUser
          : showScoreToUser // ignore: cast_nullable_to_non_nullable
              as bool,
      requireAllQuestions: null == requireAllQuestions
          ? _value.requireAllQuestions
          : requireAllQuestions // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionnaireSettingsModelImplCopyWith<$Res>
    implements $QuestionnaireSettingsModelCopyWith<$Res> {
  factory _$$QuestionnaireSettingsModelImplCopyWith(
          _$QuestionnaireSettingsModelImpl value,
          $Res Function(_$QuestionnaireSettingsModelImpl) then) =
      __$$QuestionnaireSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool allowSaveDraft,
      bool showProgress,
      bool randomizeQuestions,
      int? timeLimit,
      int maxAttempts,
      bool showScoreToUser,
      bool requireAllQuestions});
}

/// @nodoc
class __$$QuestionnaireSettingsModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireSettingsModelCopyWithImpl<$Res,
        _$QuestionnaireSettingsModelImpl>
    implements _$$QuestionnaireSettingsModelImplCopyWith<$Res> {
  __$$QuestionnaireSettingsModelImplCopyWithImpl(
      _$QuestionnaireSettingsModelImpl _value,
      $Res Function(_$QuestionnaireSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowSaveDraft = null,
    Object? showProgress = null,
    Object? randomizeQuestions = null,
    Object? timeLimit = freezed,
    Object? maxAttempts = null,
    Object? showScoreToUser = null,
    Object? requireAllQuestions = null,
  }) {
    return _then(_$QuestionnaireSettingsModelImpl(
      allowSaveDraft: null == allowSaveDraft
          ? _value.allowSaveDraft
          : allowSaveDraft // ignore: cast_nullable_to_non_nullable
              as bool,
      showProgress: null == showProgress
          ? _value.showProgress
          : showProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      randomizeQuestions: null == randomizeQuestions
          ? _value.randomizeQuestions
          : randomizeQuestions // ignore: cast_nullable_to_non_nullable
              as bool,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAttempts: null == maxAttempts
          ? _value.maxAttempts
          : maxAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      showScoreToUser: null == showScoreToUser
          ? _value.showScoreToUser
          : showScoreToUser // ignore: cast_nullable_to_non_nullable
              as bool,
      requireAllQuestions: null == requireAllQuestions
          ? _value.requireAllQuestions
          : requireAllQuestions // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireSettingsModelImpl implements _QuestionnaireSettingsModel {
  _$QuestionnaireSettingsModelImpl(
      {this.allowSaveDraft = true,
      this.showProgress = true,
      this.randomizeQuestions = false,
      this.timeLimit,
      this.maxAttempts = 1,
      this.showScoreToUser = false,
      this.requireAllQuestions = true});

  factory _$QuestionnaireSettingsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuestionnaireSettingsModelImplFromJson(json);

  @override
  @JsonKey()
  final bool allowSaveDraft;
  @override
  @JsonKey()
  final bool showProgress;
  @override
  @JsonKey()
  final bool randomizeQuestions;
  @override
  final int? timeLimit;
  @override
  @JsonKey()
  final int maxAttempts;
  @override
  @JsonKey()
  final bool showScoreToUser;
  @override
  @JsonKey()
  final bool requireAllQuestions;

  @override
  String toString() {
    return 'QuestionnaireSettingsModel(allowSaveDraft: $allowSaveDraft, showProgress: $showProgress, randomizeQuestions: $randomizeQuestions, timeLimit: $timeLimit, maxAttempts: $maxAttempts, showScoreToUser: $showScoreToUser, requireAllQuestions: $requireAllQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireSettingsModelImpl &&
            (identical(other.allowSaveDraft, allowSaveDraft) ||
                other.allowSaveDraft == allowSaveDraft) &&
            (identical(other.showProgress, showProgress) ||
                other.showProgress == showProgress) &&
            (identical(other.randomizeQuestions, randomizeQuestions) ||
                other.randomizeQuestions == randomizeQuestions) &&
            (identical(other.timeLimit, timeLimit) ||
                other.timeLimit == timeLimit) &&
            (identical(other.maxAttempts, maxAttempts) ||
                other.maxAttempts == maxAttempts) &&
            (identical(other.showScoreToUser, showScoreToUser) ||
                other.showScoreToUser == showScoreToUser) &&
            (identical(other.requireAllQuestions, requireAllQuestions) ||
                other.requireAllQuestions == requireAllQuestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      allowSaveDraft,
      showProgress,
      randomizeQuestions,
      timeLimit,
      maxAttempts,
      showScoreToUser,
      requireAllQuestions);

  /// Create a copy of QuestionnaireSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireSettingsModelImplCopyWith<_$QuestionnaireSettingsModelImpl>
      get copyWith => __$$QuestionnaireSettingsModelImplCopyWithImpl<
          _$QuestionnaireSettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionnaireSettingsModel
    implements QuestionnaireSettingsModel {
  factory _QuestionnaireSettingsModel(
      {final bool allowSaveDraft,
      final bool showProgress,
      final bool randomizeQuestions,
      final int? timeLimit,
      final int maxAttempts,
      final bool showScoreToUser,
      final bool requireAllQuestions}) = _$QuestionnaireSettingsModelImpl;

  factory _QuestionnaireSettingsModel.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireSettingsModelImpl.fromJson;

  @override
  bool get allowSaveDraft;
  @override
  bool get showProgress;
  @override
  bool get randomizeQuestions;
  @override
  int? get timeLimit;
  @override
  int get maxAttempts;
  @override
  bool get showScoreToUser;
  @override
  bool get requireAllQuestions;

  /// Create a copy of QuestionnaireSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireSettingsModelImplCopyWith<_$QuestionnaireSettingsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionnaireStatsModel _$QuestionnaireStatsModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireStatsModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireStatsModel {
  int get totalSubmissions => throw _privateConstructorUsedError;
  int get completedSubmissions => throw _privateConstructorUsedError;
  int get averageScore => throw _privateConstructorUsedError;
  int get averageCompletionTime => throw _privateConstructorUsedError;

  /// Serializes this QuestionnaireStatsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireStatsModelCopyWith<QuestionnaireStatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireStatsModelCopyWith<$Res> {
  factory $QuestionnaireStatsModelCopyWith(QuestionnaireStatsModel value,
          $Res Function(QuestionnaireStatsModel) then) =
      _$QuestionnaireStatsModelCopyWithImpl<$Res, QuestionnaireStatsModel>;
  @useResult
  $Res call(
      {int totalSubmissions,
      int completedSubmissions,
      int averageScore,
      int averageCompletionTime});
}

/// @nodoc
class _$QuestionnaireStatsModelCopyWithImpl<$Res,
        $Val extends QuestionnaireStatsModel>
    implements $QuestionnaireStatsModelCopyWith<$Res> {
  _$QuestionnaireStatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSubmissions = null,
    Object? completedSubmissions = null,
    Object? averageScore = null,
    Object? averageCompletionTime = null,
  }) {
    return _then(_value.copyWith(
      totalSubmissions: null == totalSubmissions
          ? _value.totalSubmissions
          : totalSubmissions // ignore: cast_nullable_to_non_nullable
              as int,
      completedSubmissions: null == completedSubmissions
          ? _value.completedSubmissions
          : completedSubmissions // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as int,
      averageCompletionTime: null == averageCompletionTime
          ? _value.averageCompletionTime
          : averageCompletionTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionnaireStatsModelImplCopyWith<$Res>
    implements $QuestionnaireStatsModelCopyWith<$Res> {
  factory _$$QuestionnaireStatsModelImplCopyWith(
          _$QuestionnaireStatsModelImpl value,
          $Res Function(_$QuestionnaireStatsModelImpl) then) =
      __$$QuestionnaireStatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalSubmissions,
      int completedSubmissions,
      int averageScore,
      int averageCompletionTime});
}

/// @nodoc
class __$$QuestionnaireStatsModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireStatsModelCopyWithImpl<$Res,
        _$QuestionnaireStatsModelImpl>
    implements _$$QuestionnaireStatsModelImplCopyWith<$Res> {
  __$$QuestionnaireStatsModelImplCopyWithImpl(
      _$QuestionnaireStatsModelImpl _value,
      $Res Function(_$QuestionnaireStatsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSubmissions = null,
    Object? completedSubmissions = null,
    Object? averageScore = null,
    Object? averageCompletionTime = null,
  }) {
    return _then(_$QuestionnaireStatsModelImpl(
      totalSubmissions: null == totalSubmissions
          ? _value.totalSubmissions
          : totalSubmissions // ignore: cast_nullable_to_non_nullable
              as int,
      completedSubmissions: null == completedSubmissions
          ? _value.completedSubmissions
          : completedSubmissions // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as int,
      averageCompletionTime: null == averageCompletionTime
          ? _value.averageCompletionTime
          : averageCompletionTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireStatsModelImpl implements _QuestionnaireStatsModel {
  _$QuestionnaireStatsModelImpl(
      {this.totalSubmissions = 0,
      this.completedSubmissions = 0,
      this.averageScore = 0,
      this.averageCompletionTime = 0});

  factory _$QuestionnaireStatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireStatsModelImplFromJson(json);

  @override
  @JsonKey()
  final int totalSubmissions;
  @override
  @JsonKey()
  final int completedSubmissions;
  @override
  @JsonKey()
  final int averageScore;
  @override
  @JsonKey()
  final int averageCompletionTime;

  @override
  String toString() {
    return 'QuestionnaireStatsModel(totalSubmissions: $totalSubmissions, completedSubmissions: $completedSubmissions, averageScore: $averageScore, averageCompletionTime: $averageCompletionTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireStatsModelImpl &&
            (identical(other.totalSubmissions, totalSubmissions) ||
                other.totalSubmissions == totalSubmissions) &&
            (identical(other.completedSubmissions, completedSubmissions) ||
                other.completedSubmissions == completedSubmissions) &&
            (identical(other.averageScore, averageScore) ||
                other.averageScore == averageScore) &&
            (identical(other.averageCompletionTime, averageCompletionTime) ||
                other.averageCompletionTime == averageCompletionTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalSubmissions,
      completedSubmissions, averageScore, averageCompletionTime);

  /// Create a copy of QuestionnaireStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireStatsModelImplCopyWith<_$QuestionnaireStatsModelImpl>
      get copyWith => __$$QuestionnaireStatsModelImplCopyWithImpl<
          _$QuestionnaireStatsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireStatsModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionnaireStatsModel implements QuestionnaireStatsModel {
  factory _QuestionnaireStatsModel(
      {final int totalSubmissions,
      final int completedSubmissions,
      final int averageScore,
      final int averageCompletionTime}) = _$QuestionnaireStatsModelImpl;

  factory _QuestionnaireStatsModel.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireStatsModelImpl.fromJson;

  @override
  int get totalSubmissions;
  @override
  int get completedSubmissions;
  @override
  int get averageScore;
  @override
  int get averageCompletionTime;

  /// Create a copy of QuestionnaireStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireStatsModelImplCopyWith<_$QuestionnaireStatsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
