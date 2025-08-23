// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_links_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocialLinksModel _$SocialLinksModelFromJson(Map<String, dynamic> json) {
  return _SocialLinksModel.fromJson(json);
}

/// @nodoc
mixin _$SocialLinksModel {
  String? get linkedin => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError;

  /// Serializes this SocialLinksModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialLinksModelCopyWith<SocialLinksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLinksModelCopyWith<$Res> {
  factory $SocialLinksModelCopyWith(
          SocialLinksModel value, $Res Function(SocialLinksModel) then) =
      _$SocialLinksModelCopyWithImpl<$Res, SocialLinksModel>;
  @useResult
  $Res call(
      {String? linkedin, String? twitter, String? facebook, String? instagram});
}

/// @nodoc
class _$SocialLinksModelCopyWithImpl<$Res, $Val extends SocialLinksModel>
    implements $SocialLinksModelCopyWith<$Res> {
  _$SocialLinksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkedin = freezed,
    Object? twitter = freezed,
    Object? facebook = freezed,
    Object? instagram = freezed,
  }) {
    return _then(_value.copyWith(
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialLinksModelImplCopyWith<$Res>
    implements $SocialLinksModelCopyWith<$Res> {
  factory _$$SocialLinksModelImplCopyWith(_$SocialLinksModelImpl value,
          $Res Function(_$SocialLinksModelImpl) then) =
      __$$SocialLinksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? linkedin, String? twitter, String? facebook, String? instagram});
}

/// @nodoc
class __$$SocialLinksModelImplCopyWithImpl<$Res>
    extends _$SocialLinksModelCopyWithImpl<$Res, _$SocialLinksModelImpl>
    implements _$$SocialLinksModelImplCopyWith<$Res> {
  __$$SocialLinksModelImplCopyWithImpl(_$SocialLinksModelImpl _value,
      $Res Function(_$SocialLinksModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkedin = freezed,
    Object? twitter = freezed,
    Object? facebook = freezed,
    Object? instagram = freezed,
  }) {
    return _then(_$SocialLinksModelImpl(
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialLinksModelImpl implements _SocialLinksModel {
  _$SocialLinksModelImpl(
      {this.linkedin, this.twitter, this.facebook, this.instagram});

  factory _$SocialLinksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialLinksModelImplFromJson(json);

  @override
  final String? linkedin;
  @override
  final String? twitter;
  @override
  final String? facebook;
  @override
  final String? instagram;

  @override
  String toString() {
    return 'SocialLinksModel(linkedin: $linkedin, twitter: $twitter, facebook: $facebook, instagram: $instagram)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialLinksModelImpl &&
            (identical(other.linkedin, linkedin) ||
                other.linkedin == linkedin) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, linkedin, twitter, facebook, instagram);

  /// Create a copy of SocialLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialLinksModelImplCopyWith<_$SocialLinksModelImpl> get copyWith =>
      __$$SocialLinksModelImplCopyWithImpl<_$SocialLinksModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialLinksModelImplToJson(
      this,
    );
  }
}

abstract class _SocialLinksModel implements SocialLinksModel {
  factory _SocialLinksModel(
      {final String? linkedin,
      final String? twitter,
      final String? facebook,
      final String? instagram}) = _$SocialLinksModelImpl;

  factory _SocialLinksModel.fromJson(Map<String, dynamic> json) =
      _$SocialLinksModelImpl.fromJson;

  @override
  String? get linkedin;
  @override
  String? get twitter;
  @override
  String? get facebook;
  @override
  String? get instagram;

  /// Create a copy of SocialLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialLinksModelImplCopyWith<_$SocialLinksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
