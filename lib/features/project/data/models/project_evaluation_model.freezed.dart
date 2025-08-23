// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_evaluation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectEvaluationModel _$ProjectEvaluationModelFromJson(
    Map<String, dynamic> json) {
  return _ProjectEvaluationModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectEvaluationModel {
  double? get overallScore => throw _privateConstructorUsedError;
  Map<String, dynamic>? get scores => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get evaluatedBy => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get evaluatedAt => throw _privateConstructorUsedError;
  String? get comments => throw _privateConstructorUsedError;

  /// Serializes this ProjectEvaluationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectEvaluationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectEvaluationModelCopyWith<ProjectEvaluationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEvaluationModelCopyWith<$Res> {
  factory $ProjectEvaluationModelCopyWith(ProjectEvaluationModel value,
          $Res Function(ProjectEvaluationModel) then) =
      _$ProjectEvaluationModelCopyWithImpl<$Res, ProjectEvaluationModel>;
  @useResult
  $Res call(
      {double? overallScore,
      Map<String, dynamic>? scores,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      dynamic evaluatedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? evaluatedAt,
      String? comments});
}

/// @nodoc
class _$ProjectEvaluationModelCopyWithImpl<$Res,
        $Val extends ProjectEvaluationModel>
    implements $ProjectEvaluationModelCopyWith<$Res> {
  _$ProjectEvaluationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectEvaluationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallScore = freezed,
    Object? scores = freezed,
    Object? evaluatedBy = freezed,
    Object? evaluatedAt = freezed,
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      overallScore: freezed == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as double?,
      scores: freezed == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      evaluatedBy: freezed == evaluatedBy
          ? _value.evaluatedBy
          : evaluatedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      evaluatedAt: freezed == evaluatedAt
          ? _value.evaluatedAt
          : evaluatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectEvaluationModelImplCopyWith<$Res>
    implements $ProjectEvaluationModelCopyWith<$Res> {
  factory _$$ProjectEvaluationModelImplCopyWith(
          _$ProjectEvaluationModelImpl value,
          $Res Function(_$ProjectEvaluationModelImpl) then) =
      __$$ProjectEvaluationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? overallScore,
      Map<String, dynamic>? scores,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      dynamic evaluatedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? evaluatedAt,
      String? comments});
}

/// @nodoc
class __$$ProjectEvaluationModelImplCopyWithImpl<$Res>
    extends _$ProjectEvaluationModelCopyWithImpl<$Res,
        _$ProjectEvaluationModelImpl>
    implements _$$ProjectEvaluationModelImplCopyWith<$Res> {
  __$$ProjectEvaluationModelImplCopyWithImpl(
      _$ProjectEvaluationModelImpl _value,
      $Res Function(_$ProjectEvaluationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectEvaluationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallScore = freezed,
    Object? scores = freezed,
    Object? evaluatedBy = freezed,
    Object? evaluatedAt = freezed,
    Object? comments = freezed,
  }) {
    return _then(_$ProjectEvaluationModelImpl(
      overallScore: freezed == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as double?,
      scores: freezed == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      evaluatedBy: freezed == evaluatedBy
          ? _value.evaluatedBy
          : evaluatedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      evaluatedAt: freezed == evaluatedAt
          ? _value.evaluatedAt
          : evaluatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectEvaluationModelImpl implements _ProjectEvaluationModel {
  _$ProjectEvaluationModelImpl(
      {this.overallScore,
      final Map<String, dynamic>? scores,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) this.evaluatedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.evaluatedAt,
      this.comments})
      : _scores = scores;

  factory _$ProjectEvaluationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectEvaluationModelImplFromJson(json);

  @override
  final double? overallScore;
  final Map<String, dynamic>? _scores;
  @override
  Map<String, dynamic>? get scores {
    final value = _scores;
    if (value == null) return null;
    if (_scores is EqualUnmodifiableMapView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  final dynamic evaluatedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? evaluatedAt;
  @override
  final String? comments;

  @override
  String toString() {
    return 'ProjectEvaluationModel(overallScore: $overallScore, scores: $scores, evaluatedBy: $evaluatedBy, evaluatedAt: $evaluatedAt, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEvaluationModelImpl &&
            (identical(other.overallScore, overallScore) ||
                other.overallScore == overallScore) &&
            const DeepCollectionEquality().equals(other._scores, _scores) &&
            const DeepCollectionEquality()
                .equals(other.evaluatedBy, evaluatedBy) &&
            (identical(other.evaluatedAt, evaluatedAt) ||
                other.evaluatedAt == evaluatedAt) &&
            (identical(other.comments, comments) ||
                other.comments == comments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      overallScore,
      const DeepCollectionEquality().hash(_scores),
      const DeepCollectionEquality().hash(evaluatedBy),
      evaluatedAt,
      comments);

  /// Create a copy of ProjectEvaluationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEvaluationModelImplCopyWith<_$ProjectEvaluationModelImpl>
      get copyWith => __$$ProjectEvaluationModelImplCopyWithImpl<
          _$ProjectEvaluationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectEvaluationModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectEvaluationModel implements ProjectEvaluationModel {
  factory _ProjectEvaluationModel(
      {final double? overallScore,
      final Map<String, dynamic>? scores,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      final dynamic evaluatedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? evaluatedAt,
      final String? comments}) = _$ProjectEvaluationModelImpl;

  factory _ProjectEvaluationModel.fromJson(Map<String, dynamic> json) =
      _$ProjectEvaluationModelImpl.fromJson;

  @override
  double? get overallScore;
  @override
  Map<String, dynamic>? get scores;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get evaluatedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get evaluatedAt;
  @override
  String? get comments;

  /// Create a copy of ProjectEvaluationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectEvaluationModelImplCopyWith<_$ProjectEvaluationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
