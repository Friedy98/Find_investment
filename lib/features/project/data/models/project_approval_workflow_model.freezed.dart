// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_approval_workflow_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectApprovalWorkflowModel _$ProjectApprovalWorkflowModelFromJson(
    Map<String, dynamic> json) {
  return _ProjectApprovalWorkflowModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectApprovalWorkflowModel {
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get submittedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get reviewedBy => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get approvedBy => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  String? get reviewComments => throw _privateConstructorUsedError;

  /// Serializes this ProjectApprovalWorkflowModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectApprovalWorkflowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectApprovalWorkflowModelCopyWith<ProjectApprovalWorkflowModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectApprovalWorkflowModelCopyWith<$Res> {
  factory $ProjectApprovalWorkflowModelCopyWith(
          ProjectApprovalWorkflowModel value,
          $Res Function(ProjectApprovalWorkflowModel) then) =
      _$ProjectApprovalWorkflowModelCopyWithImpl<$Res,
          ProjectApprovalWorkflowModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? submittedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic reviewedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? reviewedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic approvedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? approvedAt,
      String? rejectionReason,
      String? reviewComments});
}

/// @nodoc
class _$ProjectApprovalWorkflowModelCopyWithImpl<$Res,
        $Val extends ProjectApprovalWorkflowModel>
    implements $ProjectApprovalWorkflowModelCopyWith<$Res> {
  _$ProjectApprovalWorkflowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectApprovalWorkflowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submittedAt = freezed,
    Object? reviewedBy = freezed,
    Object? reviewedAt = freezed,
    Object? approvedBy = freezed,
    Object? approvedAt = freezed,
    Object? rejectionReason = freezed,
    Object? reviewComments = freezed,
  }) {
    return _then(_value.copyWith(
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewComments: freezed == reviewComments
          ? _value.reviewComments
          : reviewComments // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectApprovalWorkflowModelImplCopyWith<$Res>
    implements $ProjectApprovalWorkflowModelCopyWith<$Res> {
  factory _$$ProjectApprovalWorkflowModelImplCopyWith(
          _$ProjectApprovalWorkflowModelImpl value,
          $Res Function(_$ProjectApprovalWorkflowModelImpl) then) =
      __$$ProjectApprovalWorkflowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? submittedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic reviewedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? reviewedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic approvedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? approvedAt,
      String? rejectionReason,
      String? reviewComments});
}

/// @nodoc
class __$$ProjectApprovalWorkflowModelImplCopyWithImpl<$Res>
    extends _$ProjectApprovalWorkflowModelCopyWithImpl<$Res,
        _$ProjectApprovalWorkflowModelImpl>
    implements _$$ProjectApprovalWorkflowModelImplCopyWith<$Res> {
  __$$ProjectApprovalWorkflowModelImplCopyWithImpl(
      _$ProjectApprovalWorkflowModelImpl _value,
      $Res Function(_$ProjectApprovalWorkflowModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectApprovalWorkflowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submittedAt = freezed,
    Object? reviewedBy = freezed,
    Object? reviewedAt = freezed,
    Object? approvedBy = freezed,
    Object? approvedAt = freezed,
    Object? rejectionReason = freezed,
    Object? reviewComments = freezed,
  }) {
    return _then(_$ProjectApprovalWorkflowModelImpl(
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewComments: freezed == reviewComments
          ? _value.reviewComments
          : reviewComments // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectApprovalWorkflowModelImpl
    implements _ProjectApprovalWorkflowModel {
  _$ProjectApprovalWorkflowModelImpl(
      {@JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.submittedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) this.reviewedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.reviewedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) this.approvedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.approvedAt,
      this.rejectionReason,
      this.reviewComments});

  factory _$ProjectApprovalWorkflowModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProjectApprovalWorkflowModelImplFromJson(json);

  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? submittedAt;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  final dynamic reviewedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? reviewedAt;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  final dynamic approvedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? approvedAt;
  @override
  final String? rejectionReason;
  @override
  final String? reviewComments;

  @override
  String toString() {
    return 'ProjectApprovalWorkflowModel(submittedAt: $submittedAt, reviewedBy: $reviewedBy, reviewedAt: $reviewedAt, approvedBy: $approvedBy, approvedAt: $approvedAt, rejectionReason: $rejectionReason, reviewComments: $reviewComments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectApprovalWorkflowModelImpl &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            const DeepCollectionEquality()
                .equals(other.reviewedBy, reviewedBy) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            const DeepCollectionEquality()
                .equals(other.approvedBy, approvedBy) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.reviewComments, reviewComments) ||
                other.reviewComments == reviewComments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      submittedAt,
      const DeepCollectionEquality().hash(reviewedBy),
      reviewedAt,
      const DeepCollectionEquality().hash(approvedBy),
      approvedAt,
      rejectionReason,
      reviewComments);

  /// Create a copy of ProjectApprovalWorkflowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectApprovalWorkflowModelImplCopyWith<
          _$ProjectApprovalWorkflowModelImpl>
      get copyWith => __$$ProjectApprovalWorkflowModelImplCopyWithImpl<
          _$ProjectApprovalWorkflowModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectApprovalWorkflowModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectApprovalWorkflowModel
    implements ProjectApprovalWorkflowModel {
  factory _ProjectApprovalWorkflowModel(
      {@JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? submittedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      final dynamic reviewedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? reviewedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      final dynamic approvedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? approvedAt,
      final String? rejectionReason,
      final String? reviewComments}) = _$ProjectApprovalWorkflowModelImpl;

  factory _ProjectApprovalWorkflowModel.fromJson(Map<String, dynamic> json) =
      _$ProjectApprovalWorkflowModelImpl.fromJson;

  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get submittedAt;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get reviewedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get reviewedAt;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get approvedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get approvedAt;
  @override
  String? get rejectionReason;
  @override
  String? get reviewComments;

  /// Create a copy of ProjectApprovalWorkflowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectApprovalWorkflowModelImplCopyWith<
          _$ProjectApprovalWorkflowModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
