// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SingleProjectModel _$SingleProjectModelFromJson(Map<String, dynamic> json) {
  return _SingleProjectModel.fromJson(json);
}

/// @nodoc
mixin _$SingleProjectModel {
  bool get success => throw _privateConstructorUsedError;
  SingleProjectData get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this SingleProjectModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SingleProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleProjectModelCopyWith<SingleProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleProjectModelCopyWith<$Res> {
  factory $SingleProjectModelCopyWith(
          SingleProjectModel value, $Res Function(SingleProjectModel) then) =
      _$SingleProjectModelCopyWithImpl<$Res, SingleProjectModel>;
  @useResult
  $Res call({bool success, SingleProjectData data, String? message});

  $SingleProjectDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SingleProjectModelCopyWithImpl<$Res, $Val extends SingleProjectModel>
    implements $SingleProjectModelCopyWith<$Res> {
  _$SingleProjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SingleProjectData,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SingleProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SingleProjectDataCopyWith<$Res> get data {
    return $SingleProjectDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SingleProjectModelImplCopyWith<$Res>
    implements $SingleProjectModelCopyWith<$Res> {
  factory _$$SingleProjectModelImplCopyWith(_$SingleProjectModelImpl value,
          $Res Function(_$SingleProjectModelImpl) then) =
      __$$SingleProjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, SingleProjectData data, String? message});

  @override
  $SingleProjectDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SingleProjectModelImplCopyWithImpl<$Res>
    extends _$SingleProjectModelCopyWithImpl<$Res, _$SingleProjectModelImpl>
    implements _$$SingleProjectModelImplCopyWith<$Res> {
  __$$SingleProjectModelImplCopyWithImpl(_$SingleProjectModelImpl _value,
      $Res Function(_$SingleProjectModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$SingleProjectModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SingleProjectData,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleProjectModelImpl implements _SingleProjectModel {
  _$SingleProjectModelImpl(
      {required this.success, required this.data, this.message});

  factory _$SingleProjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleProjectModelImplFromJson(json);

  @override
  final bool success;
  @override
  final SingleProjectData data;
  @override
  final String? message;

  @override
  String toString() {
    return 'SingleProjectModel(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleProjectModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  /// Create a copy of SingleProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleProjectModelImplCopyWith<_$SingleProjectModelImpl> get copyWith =>
      __$$SingleProjectModelImplCopyWithImpl<_$SingleProjectModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleProjectModelImplToJson(
      this,
    );
  }
}

abstract class _SingleProjectModel implements SingleProjectModel {
  factory _SingleProjectModel(
      {required final bool success,
      required final SingleProjectData data,
      final String? message}) = _$SingleProjectModelImpl;

  factory _SingleProjectModel.fromJson(Map<String, dynamic> json) =
      _$SingleProjectModelImpl.fromJson;

  @override
  bool get success;
  @override
  SingleProjectData get data;
  @override
  String? get message;

  /// Create a copy of SingleProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleProjectModelImplCopyWith<_$SingleProjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SingleProjectData _$SingleProjectDataFromJson(Map<String, dynamic> json) {
  return _SingleProjectData.fromJson(json);
}

/// @nodoc
mixin _$SingleProjectData {
  ProjectModel get project => throw _privateConstructorUsedError;

  /// Serializes this SingleProjectData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SingleProjectData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleProjectDataCopyWith<SingleProjectData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleProjectDataCopyWith<$Res> {
  factory $SingleProjectDataCopyWith(
          SingleProjectData value, $Res Function(SingleProjectData) then) =
      _$SingleProjectDataCopyWithImpl<$Res, SingleProjectData>;
  @useResult
  $Res call({ProjectModel project});

  $ProjectModelCopyWith<$Res> get project;
}

/// @nodoc
class _$SingleProjectDataCopyWithImpl<$Res, $Val extends SingleProjectData>
    implements $SingleProjectDataCopyWith<$Res> {
  _$SingleProjectDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleProjectData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_value.copyWith(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as ProjectModel,
    ) as $Val);
  }

  /// Create a copy of SingleProjectData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectModelCopyWith<$Res> get project {
    return $ProjectModelCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SingleProjectDataImplCopyWith<$Res>
    implements $SingleProjectDataCopyWith<$Res> {
  factory _$$SingleProjectDataImplCopyWith(_$SingleProjectDataImpl value,
          $Res Function(_$SingleProjectDataImpl) then) =
      __$$SingleProjectDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectModel project});

  @override
  $ProjectModelCopyWith<$Res> get project;
}

/// @nodoc
class __$$SingleProjectDataImplCopyWithImpl<$Res>
    extends _$SingleProjectDataCopyWithImpl<$Res, _$SingleProjectDataImpl>
    implements _$$SingleProjectDataImplCopyWith<$Res> {
  __$$SingleProjectDataImplCopyWithImpl(_$SingleProjectDataImpl _value,
      $Res Function(_$SingleProjectDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleProjectData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_$SingleProjectDataImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as ProjectModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleProjectDataImpl implements _SingleProjectData {
  _$SingleProjectDataImpl({required this.project});

  factory _$SingleProjectDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleProjectDataImplFromJson(json);

  @override
  final ProjectModel project;

  @override
  String toString() {
    return 'SingleProjectData(project: $project)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleProjectDataImpl &&
            (identical(other.project, project) || other.project == project));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, project);

  /// Create a copy of SingleProjectData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleProjectDataImplCopyWith<_$SingleProjectDataImpl> get copyWith =>
      __$$SingleProjectDataImplCopyWithImpl<_$SingleProjectDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleProjectDataImplToJson(
      this,
    );
  }
}

abstract class _SingleProjectData implements SingleProjectData {
  factory _SingleProjectData({required final ProjectModel project}) =
      _$SingleProjectDataImpl;

  factory _SingleProjectData.fromJson(Map<String, dynamic> json) =
      _$SingleProjectDataImpl.fromJson;

  @override
  ProjectModel get project;

  /// Create a copy of SingleProjectData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleProjectDataImplCopyWith<_$SingleProjectDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
