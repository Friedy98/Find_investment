// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_register_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthRegisterResponseModel _$AuthRegisterResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AuthRegisterResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AuthRegisterResponseModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  AuthRegisterModel get data => throw _privateConstructorUsedError;

  /// Serializes this AuthRegisterResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthRegisterResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthRegisterResponseModelCopyWith<AuthRegisterResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRegisterResponseModelCopyWith<$Res> {
  factory $AuthRegisterResponseModelCopyWith(AuthRegisterResponseModel value,
          $Res Function(AuthRegisterResponseModel) then) =
      _$AuthRegisterResponseModelCopyWithImpl<$Res, AuthRegisterResponseModel>;
  @useResult
  $Res call({bool success, String message, AuthRegisterModel data});

  $AuthRegisterModelCopyWith<$Res> get data;
}

/// @nodoc
class _$AuthRegisterResponseModelCopyWithImpl<$Res,
        $Val extends AuthRegisterResponseModel>
    implements $AuthRegisterResponseModelCopyWith<$Res> {
  _$AuthRegisterResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthRegisterResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthRegisterModel,
    ) as $Val);
  }

  /// Create a copy of AuthRegisterResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthRegisterModelCopyWith<$Res> get data {
    return $AuthRegisterModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthRegisterResponseModelImplCopyWith<$Res>
    implements $AuthRegisterResponseModelCopyWith<$Res> {
  factory _$$AuthRegisterResponseModelImplCopyWith(
          _$AuthRegisterResponseModelImpl value,
          $Res Function(_$AuthRegisterResponseModelImpl) then) =
      __$$AuthRegisterResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, AuthRegisterModel data});

  @override
  $AuthRegisterModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$AuthRegisterResponseModelImplCopyWithImpl<$Res>
    extends _$AuthRegisterResponseModelCopyWithImpl<$Res,
        _$AuthRegisterResponseModelImpl>
    implements _$$AuthRegisterResponseModelImplCopyWith<$Res> {
  __$$AuthRegisterResponseModelImplCopyWithImpl(
      _$AuthRegisterResponseModelImpl _value,
      $Res Function(_$AuthRegisterResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthRegisterResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AuthRegisterResponseModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthRegisterModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthRegisterResponseModelImpl implements _AuthRegisterResponseModel {
  _$AuthRegisterResponseModelImpl(
      {required this.success, required this.message, required this.data});

  factory _$AuthRegisterResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthRegisterResponseModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final AuthRegisterModel data;

  @override
  String toString() {
    return 'AuthRegisterResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRegisterResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of AuthRegisterResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRegisterResponseModelImplCopyWith<_$AuthRegisterResponseModelImpl>
      get copyWith => __$$AuthRegisterResponseModelImplCopyWithImpl<
          _$AuthRegisterResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthRegisterResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AuthRegisterResponseModel implements AuthRegisterResponseModel {
  factory _AuthRegisterResponseModel(
      {required final bool success,
      required final String message,
      required final AuthRegisterModel data}) = _$AuthRegisterResponseModelImpl;

  factory _AuthRegisterResponseModel.fromJson(Map<String, dynamic> json) =
      _$AuthRegisterResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  AuthRegisterModel get data;

  /// Create a copy of AuthRegisterResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthRegisterResponseModelImplCopyWith<_$AuthRegisterResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
