// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteProjectModel _$DeleteProjectModelFromJson(Map<String, dynamic> json) {
  return _DeleteProjectModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteProjectModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this DeleteProjectModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteProjectModelCopyWith<DeleteProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProjectModelCopyWith<$Res> {
  factory $DeleteProjectModelCopyWith(
          DeleteProjectModel value, $Res Function(DeleteProjectModel) then) =
      _$DeleteProjectModelCopyWithImpl<$Res, DeleteProjectModel>;
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class _$DeleteProjectModelCopyWithImpl<$Res, $Val extends DeleteProjectModel>
    implements $DeleteProjectModelCopyWith<$Res> {
  _$DeleteProjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteProjectModelImplCopyWith<$Res>
    implements $DeleteProjectModelCopyWith<$Res> {
  factory _$$DeleteProjectModelImplCopyWith(_$DeleteProjectModelImpl value,
          $Res Function(_$DeleteProjectModelImpl) then) =
      __$$DeleteProjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class __$$DeleteProjectModelImplCopyWithImpl<$Res>
    extends _$DeleteProjectModelCopyWithImpl<$Res, _$DeleteProjectModelImpl>
    implements _$$DeleteProjectModelImplCopyWith<$Res> {
  __$$DeleteProjectModelImplCopyWithImpl(_$DeleteProjectModelImpl _value,
      $Res Function(_$DeleteProjectModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_$DeleteProjectModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteProjectModelImpl implements _DeleteProjectModel {
  _$DeleteProjectModelImpl({required this.success, required this.message});

  factory _$DeleteProjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteProjectModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;

  @override
  String toString() {
    return 'DeleteProjectModel(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProjectModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  /// Create a copy of DeleteProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProjectModelImplCopyWith<_$DeleteProjectModelImpl> get copyWith =>
      __$$DeleteProjectModelImplCopyWithImpl<_$DeleteProjectModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteProjectModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteProjectModel implements DeleteProjectModel {
  factory _DeleteProjectModel(
      {required final bool success,
      required final String message}) = _$DeleteProjectModelImpl;

  factory _DeleteProjectModel.fromJson(Map<String, dynamic> json) =
      _$DeleteProjectModelImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;

  /// Create a copy of DeleteProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProjectModelImplCopyWith<_$DeleteProjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
