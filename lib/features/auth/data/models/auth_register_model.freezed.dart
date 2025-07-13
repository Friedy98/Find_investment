// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthRegisterModel _$AuthRegisterModelFromJson(Map<String, dynamic> json) {
  return _AuthRegisterModel.fromJson(json);
}

/// @nodoc
mixin _$AuthRegisterModel {
  UserModel get user => throw _privateConstructorUsedError;

  /// Serializes this AuthRegisterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthRegisterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthRegisterModelCopyWith<AuthRegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRegisterModelCopyWith<$Res> {
  factory $AuthRegisterModelCopyWith(
          AuthRegisterModel value, $Res Function(AuthRegisterModel) then) =
      _$AuthRegisterModelCopyWithImpl<$Res, AuthRegisterModel>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthRegisterModelCopyWithImpl<$Res, $Val extends AuthRegisterModel>
    implements $AuthRegisterModelCopyWith<$Res> {
  _$AuthRegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthRegisterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  /// Create a copy of AuthRegisterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthRegisterModelImplCopyWith<$Res>
    implements $AuthRegisterModelCopyWith<$Res> {
  factory _$$AuthRegisterModelImplCopyWith(_$AuthRegisterModelImpl value,
          $Res Function(_$AuthRegisterModelImpl) then) =
      __$$AuthRegisterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthRegisterModelImplCopyWithImpl<$Res>
    extends _$AuthRegisterModelCopyWithImpl<$Res, _$AuthRegisterModelImpl>
    implements _$$AuthRegisterModelImplCopyWith<$Res> {
  __$$AuthRegisterModelImplCopyWithImpl(_$AuthRegisterModelImpl _value,
      $Res Function(_$AuthRegisterModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthRegisterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthRegisterModelImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthRegisterModelImpl implements _AuthRegisterModel {
  _$AuthRegisterModelImpl({required this.user});

  factory _$AuthRegisterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthRegisterModelImplFromJson(json);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthRegisterModel(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRegisterModelImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthRegisterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRegisterModelImplCopyWith<_$AuthRegisterModelImpl> get copyWith =>
      __$$AuthRegisterModelImplCopyWithImpl<_$AuthRegisterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthRegisterModelImplToJson(
      this,
    );
  }
}

abstract class _AuthRegisterModel implements AuthRegisterModel {
  factory _AuthRegisterModel({required final UserModel user}) =
      _$AuthRegisterModelImpl;

  factory _AuthRegisterModel.fromJson(Map<String, dynamic> json) =
      _$AuthRegisterModelImpl.fromJson;

  @override
  UserModel get user;

  /// Create a copy of AuthRegisterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthRegisterModelImplCopyWith<_$AuthRegisterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
