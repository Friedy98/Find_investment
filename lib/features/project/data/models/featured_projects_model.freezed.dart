// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_projects_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeaturedProjectsModel _$FeaturedProjectsModelFromJson(
    Map<String, dynamic> json) {
  return _FeaturedProjectsModel.fromJson(json);
}

/// @nodoc
mixin _$FeaturedProjectsModel {
  bool get success => throw _privateConstructorUsedError;
  FeaturedProjectsData get data => throw _privateConstructorUsedError;

  /// Serializes this FeaturedProjectsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeaturedProjectsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeaturedProjectsModelCopyWith<FeaturedProjectsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedProjectsModelCopyWith<$Res> {
  factory $FeaturedProjectsModelCopyWith(FeaturedProjectsModel value,
          $Res Function(FeaturedProjectsModel) then) =
      _$FeaturedProjectsModelCopyWithImpl<$Res, FeaturedProjectsModel>;
  @useResult
  $Res call({bool success, FeaturedProjectsData data});

  $FeaturedProjectsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$FeaturedProjectsModelCopyWithImpl<$Res,
        $Val extends FeaturedProjectsModel>
    implements $FeaturedProjectsModelCopyWith<$Res> {
  _$FeaturedProjectsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeaturedProjectsModel
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
              as FeaturedProjectsData,
    ) as $Val);
  }

  /// Create a copy of FeaturedProjectsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeaturedProjectsDataCopyWith<$Res> get data {
    return $FeaturedProjectsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeaturedProjectsModelImplCopyWith<$Res>
    implements $FeaturedProjectsModelCopyWith<$Res> {
  factory _$$FeaturedProjectsModelImplCopyWith(
          _$FeaturedProjectsModelImpl value,
          $Res Function(_$FeaturedProjectsModelImpl) then) =
      __$$FeaturedProjectsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, FeaturedProjectsData data});

  @override
  $FeaturedProjectsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$FeaturedProjectsModelImplCopyWithImpl<$Res>
    extends _$FeaturedProjectsModelCopyWithImpl<$Res,
        _$FeaturedProjectsModelImpl>
    implements _$$FeaturedProjectsModelImplCopyWith<$Res> {
  __$$FeaturedProjectsModelImplCopyWithImpl(_$FeaturedProjectsModelImpl _value,
      $Res Function(_$FeaturedProjectsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeaturedProjectsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$FeaturedProjectsModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FeaturedProjectsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturedProjectsModelImpl implements _FeaturedProjectsModel {
  _$FeaturedProjectsModelImpl({required this.success, required this.data});

  factory _$FeaturedProjectsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturedProjectsModelImplFromJson(json);

  @override
  final bool success;
  @override
  final FeaturedProjectsData data;

  @override
  String toString() {
    return 'FeaturedProjectsModel(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedProjectsModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of FeaturedProjectsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedProjectsModelImplCopyWith<_$FeaturedProjectsModelImpl>
      get copyWith => __$$FeaturedProjectsModelImplCopyWithImpl<
          _$FeaturedProjectsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturedProjectsModelImplToJson(
      this,
    );
  }
}

abstract class _FeaturedProjectsModel implements FeaturedProjectsModel {
  factory _FeaturedProjectsModel(
      {required final bool success,
      required final FeaturedProjectsData data}) = _$FeaturedProjectsModelImpl;

  factory _FeaturedProjectsModel.fromJson(Map<String, dynamic> json) =
      _$FeaturedProjectsModelImpl.fromJson;

  @override
  bool get success;
  @override
  FeaturedProjectsData get data;

  /// Create a copy of FeaturedProjectsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeaturedProjectsModelImplCopyWith<_$FeaturedProjectsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FeaturedProjectsData _$FeaturedProjectsDataFromJson(Map<String, dynamic> json) {
  return _FeaturedProjectsData.fromJson(json);
}

/// @nodoc
mixin _$FeaturedProjectsData {
  @JsonKey(name: 'projects')
  List<ProjectModel> get projects => throw _privateConstructorUsedError;

  /// Serializes this FeaturedProjectsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeaturedProjectsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeaturedProjectsDataCopyWith<FeaturedProjectsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedProjectsDataCopyWith<$Res> {
  factory $FeaturedProjectsDataCopyWith(FeaturedProjectsData value,
          $Res Function(FeaturedProjectsData) then) =
      _$FeaturedProjectsDataCopyWithImpl<$Res, FeaturedProjectsData>;
  @useResult
  $Res call({@JsonKey(name: 'projects') List<ProjectModel> projects});
}

/// @nodoc
class _$FeaturedProjectsDataCopyWithImpl<$Res,
        $Val extends FeaturedProjectsData>
    implements $FeaturedProjectsDataCopyWith<$Res> {
  _$FeaturedProjectsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeaturedProjectsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
  }) {
    return _then(_value.copyWith(
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeaturedProjectsDataImplCopyWith<$Res>
    implements $FeaturedProjectsDataCopyWith<$Res> {
  factory _$$FeaturedProjectsDataImplCopyWith(_$FeaturedProjectsDataImpl value,
          $Res Function(_$FeaturedProjectsDataImpl) then) =
      __$$FeaturedProjectsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'projects') List<ProjectModel> projects});
}

/// @nodoc
class __$$FeaturedProjectsDataImplCopyWithImpl<$Res>
    extends _$FeaturedProjectsDataCopyWithImpl<$Res, _$FeaturedProjectsDataImpl>
    implements _$$FeaturedProjectsDataImplCopyWith<$Res> {
  __$$FeaturedProjectsDataImplCopyWithImpl(_$FeaturedProjectsDataImpl _value,
      $Res Function(_$FeaturedProjectsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeaturedProjectsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
  }) {
    return _then(_$FeaturedProjectsDataImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturedProjectsDataImpl implements _FeaturedProjectsData {
  _$FeaturedProjectsDataImpl(
      {@JsonKey(name: 'projects') required final List<ProjectModel> projects})
      : _projects = projects;

  factory _$FeaturedProjectsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturedProjectsDataImplFromJson(json);

  final List<ProjectModel> _projects;
  @override
  @JsonKey(name: 'projects')
  List<ProjectModel> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  String toString() {
    return 'FeaturedProjectsData(projects: $projects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedProjectsDataImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  /// Create a copy of FeaturedProjectsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedProjectsDataImplCopyWith<_$FeaturedProjectsDataImpl>
      get copyWith =>
          __$$FeaturedProjectsDataImplCopyWithImpl<_$FeaturedProjectsDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturedProjectsDataImplToJson(
      this,
    );
  }
}

abstract class _FeaturedProjectsData implements FeaturedProjectsData {
  factory _FeaturedProjectsData(
      {@JsonKey(name: 'projects')
      required final List<ProjectModel> projects}) = _$FeaturedProjectsDataImpl;

  factory _FeaturedProjectsData.fromJson(Map<String, dynamic> json) =
      _$FeaturedProjectsDataImpl.fromJson;

  @override
  @JsonKey(name: 'projects')
  List<ProjectModel> get projects;

  /// Create a copy of FeaturedProjectsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeaturedProjectsDataImplCopyWith<_$FeaturedProjectsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
