// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetPasswordResponseModel _$ResetPasswordResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ResetPasswordResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordResponseModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ResetPasswordResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordResponseModelCopyWith<ResetPasswordResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordResponseModelCopyWith<$Res> {
  factory $ResetPasswordResponseModelCopyWith(ResetPasswordResponseModel value,
          $Res Function(ResetPasswordResponseModel) then) =
      _$ResetPasswordResponseModelCopyWithImpl<$Res,
          ResetPasswordResponseModel>;
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class _$ResetPasswordResponseModelCopyWithImpl<$Res,
        $Val extends ResetPasswordResponseModel>
    implements $ResetPasswordResponseModelCopyWith<$Res> {
  _$ResetPasswordResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordResponseModel
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
abstract class _$$ResetPasswordResponseModelImplCopyWith<$Res>
    implements $ResetPasswordResponseModelCopyWith<$Res> {
  factory _$$ResetPasswordResponseModelImplCopyWith(
          _$ResetPasswordResponseModelImpl value,
          $Res Function(_$ResetPasswordResponseModelImpl) then) =
      __$$ResetPasswordResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class __$$ResetPasswordResponseModelImplCopyWithImpl<$Res>
    extends _$ResetPasswordResponseModelCopyWithImpl<$Res,
        _$ResetPasswordResponseModelImpl>
    implements _$$ResetPasswordResponseModelImplCopyWith<$Res> {
  __$$ResetPasswordResponseModelImplCopyWithImpl(
      _$ResetPasswordResponseModelImpl _value,
      $Res Function(_$ResetPasswordResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_$ResetPasswordResponseModelImpl(
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
class _$ResetPasswordResponseModelImpl implements _ResetPasswordResponseModel {
  _$ResetPasswordResponseModelImpl(
      {required this.success, required this.message});

  factory _$ResetPasswordResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResetPasswordResponseModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;

  @override
  String toString() {
    return 'ResetPasswordResponseModel(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  /// Create a copy of ResetPasswordResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordResponseModelImplCopyWith<_$ResetPasswordResponseModelImpl>
      get copyWith => __$$ResetPasswordResponseModelImplCopyWithImpl<
          _$ResetPasswordResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordResponseModel
    implements ResetPasswordResponseModel {
  factory _ResetPasswordResponseModel(
      {required final bool success,
      required final String message}) = _$ResetPasswordResponseModelImpl;

  factory _ResetPasswordResponseModel.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;

  /// Create a copy of ResetPasswordResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordResponseModelImplCopyWith<_$ResetPasswordResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
