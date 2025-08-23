// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'privacy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrivacyModel _$PrivacyModelFromJson(Map<String, dynamic> json) {
  return _PrivacyModel.fromJson(json);
}

/// @nodoc
mixin _$PrivacyModel {
  String? get profileVisibility => throw _privateConstructorUsedError;
  bool? get showEmail => throw _privateConstructorUsedError;
  bool? get showPhone => throw _privateConstructorUsedError;

  /// Serializes this PrivacyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivacyModelCopyWith<PrivacyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacyModelCopyWith<$Res> {
  factory $PrivacyModelCopyWith(
          PrivacyModel value, $Res Function(PrivacyModel) then) =
      _$PrivacyModelCopyWithImpl<$Res, PrivacyModel>;
  @useResult
  $Res call({String? profileVisibility, bool? showEmail, bool? showPhone});
}

/// @nodoc
class _$PrivacyModelCopyWithImpl<$Res, $Val extends PrivacyModel>
    implements $PrivacyModelCopyWith<$Res> {
  _$PrivacyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileVisibility = freezed,
    Object? showEmail = freezed,
    Object? showPhone = freezed,
  }) {
    return _then(_value.copyWith(
      profileVisibility: freezed == profileVisibility
          ? _value.profileVisibility
          : profileVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      showEmail: freezed == showEmail
          ? _value.showEmail
          : showEmail // ignore: cast_nullable_to_non_nullable
              as bool?,
      showPhone: freezed == showPhone
          ? _value.showPhone
          : showPhone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivacyModelImplCopyWith<$Res>
    implements $PrivacyModelCopyWith<$Res> {
  factory _$$PrivacyModelImplCopyWith(
          _$PrivacyModelImpl value, $Res Function(_$PrivacyModelImpl) then) =
      __$$PrivacyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? profileVisibility, bool? showEmail, bool? showPhone});
}

/// @nodoc
class __$$PrivacyModelImplCopyWithImpl<$Res>
    extends _$PrivacyModelCopyWithImpl<$Res, _$PrivacyModelImpl>
    implements _$$PrivacyModelImplCopyWith<$Res> {
  __$$PrivacyModelImplCopyWithImpl(
      _$PrivacyModelImpl _value, $Res Function(_$PrivacyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileVisibility = freezed,
    Object? showEmail = freezed,
    Object? showPhone = freezed,
  }) {
    return _then(_$PrivacyModelImpl(
      profileVisibility: freezed == profileVisibility
          ? _value.profileVisibility
          : profileVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      showEmail: freezed == showEmail
          ? _value.showEmail
          : showEmail // ignore: cast_nullable_to_non_nullable
              as bool?,
      showPhone: freezed == showPhone
          ? _value.showPhone
          : showPhone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivacyModelImpl implements _PrivacyModel {
  _$PrivacyModelImpl({this.profileVisibility, this.showEmail, this.showPhone});

  factory _$PrivacyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivacyModelImplFromJson(json);

  @override
  final String? profileVisibility;
  @override
  final bool? showEmail;
  @override
  final bool? showPhone;

  @override
  String toString() {
    return 'PrivacyModel(profileVisibility: $profileVisibility, showEmail: $showEmail, showPhone: $showPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacyModelImpl &&
            (identical(other.profileVisibility, profileVisibility) ||
                other.profileVisibility == profileVisibility) &&
            (identical(other.showEmail, showEmail) ||
                other.showEmail == showEmail) &&
            (identical(other.showPhone, showPhone) ||
                other.showPhone == showPhone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, profileVisibility, showEmail, showPhone);

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacyModelImplCopyWith<_$PrivacyModelImpl> get copyWith =>
      __$$PrivacyModelImplCopyWithImpl<_$PrivacyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivacyModelImplToJson(
      this,
    );
  }
}

abstract class _PrivacyModel implements PrivacyModel {
  factory _PrivacyModel(
      {final String? profileVisibility,
      final bool? showEmail,
      final bool? showPhone}) = _$PrivacyModelImpl;

  factory _PrivacyModel.fromJson(Map<String, dynamic> json) =
      _$PrivacyModelImpl.fromJson;

  @override
  String? get profileVisibility;
  @override
  bool? get showEmail;
  @override
  bool? get showPhone;

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivacyModelImplCopyWith<_$PrivacyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
