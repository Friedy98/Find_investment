// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectStatsModel _$ProjectStatsModelFromJson(Map<String, dynamic> json) {
  return _ProjectStatsModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectStatsModel {
  bool get success => throw _privateConstructorUsedError;
  ProjectStatsData get data => throw _privateConstructorUsedError;

  /// Serializes this ProjectStatsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectStatsModelCopyWith<ProjectStatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStatsModelCopyWith<$Res> {
  factory $ProjectStatsModelCopyWith(
          ProjectStatsModel value, $Res Function(ProjectStatsModel) then) =
      _$ProjectStatsModelCopyWithImpl<$Res, ProjectStatsModel>;
  @useResult
  $Res call({bool success, ProjectStatsData data});

  $ProjectStatsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ProjectStatsModelCopyWithImpl<$Res, $Val extends ProjectStatsModel>
    implements $ProjectStatsModelCopyWith<$Res> {
  _$ProjectStatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProjectStatsData,
    ) as $Val);
  }

  /// Create a copy of ProjectStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectStatsDataCopyWith<$Res> get data {
    return $ProjectStatsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectStatsModelImplCopyWith<$Res>
    implements $ProjectStatsModelCopyWith<$Res> {
  factory _$$ProjectStatsModelImplCopyWith(_$ProjectStatsModelImpl value,
          $Res Function(_$ProjectStatsModelImpl) then) =
      __$$ProjectStatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, ProjectStatsData data});

  @override
  $ProjectStatsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ProjectStatsModelImplCopyWithImpl<$Res>
    extends _$ProjectStatsModelCopyWithImpl<$Res, _$ProjectStatsModelImpl>
    implements _$$ProjectStatsModelImplCopyWith<$Res> {
  __$$ProjectStatsModelImplCopyWithImpl(_$ProjectStatsModelImpl _value,
      $Res Function(_$ProjectStatsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$ProjectStatsModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProjectStatsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectStatsModelImpl implements _ProjectStatsModel {
  _$ProjectStatsModelImpl({required this.success, required this.data});

  factory _$ProjectStatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectStatsModelImplFromJson(json);

  @override
  final bool success;
  @override
  final ProjectStatsData data;

  @override
  String toString() {
    return 'ProjectStatsModel(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStatsModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of ProjectStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectStatsModelImplCopyWith<_$ProjectStatsModelImpl> get copyWith =>
      __$$ProjectStatsModelImplCopyWithImpl<_$ProjectStatsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectStatsModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectStatsModel implements ProjectStatsModel {
  factory _ProjectStatsModel(
      {required final bool success,
      required final ProjectStatsData data}) = _$ProjectStatsModelImpl;

  factory _ProjectStatsModel.fromJson(Map<String, dynamic> json) =
      _$ProjectStatsModelImpl.fromJson;

  @override
  bool get success;
  @override
  ProjectStatsData get data;

  /// Create a copy of ProjectStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectStatsModelImplCopyWith<_$ProjectStatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
