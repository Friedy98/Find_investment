// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_count_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatCount _$StatCountFromJson(Map<String, dynamic> json) {
  return _StatCount.fromJson(json);
}

/// @nodoc
mixin _$StatCount {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this StatCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatCountCopyWith<StatCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatCountCopyWith<$Res> {
  factory $StatCountCopyWith(StatCount value, $Res Function(StatCount) then) =
      _$StatCountCopyWithImpl<$Res, StatCount>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, int count});
}

/// @nodoc
class _$StatCountCopyWithImpl<$Res, $Val extends StatCount>
    implements $StatCountCopyWith<$Res> {
  _$StatCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatCountImplCopyWith<$Res>
    implements $StatCountCopyWith<$Res> {
  factory _$$StatCountImplCopyWith(
          _$StatCountImpl value, $Res Function(_$StatCountImpl) then) =
      __$$StatCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, int count});
}

/// @nodoc
class __$$StatCountImplCopyWithImpl<$Res>
    extends _$StatCountCopyWithImpl<$Res, _$StatCountImpl>
    implements _$$StatCountImplCopyWith<$Res> {
  __$$StatCountImplCopyWithImpl(
      _$StatCountImpl _value, $Res Function(_$StatCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? count = null,
  }) {
    return _then(_$StatCountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatCountImpl implements _StatCount {
  _$StatCountImpl(
      {@JsonKey(name: '_id') required this.id, required this.count});

  factory _$StatCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatCountImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final int count;

  @override
  String toString() {
    return 'StatCount(id: $id, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatCountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, count);

  /// Create a copy of StatCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatCountImplCopyWith<_$StatCountImpl> get copyWith =>
      __$$StatCountImplCopyWithImpl<_$StatCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatCountImplToJson(
      this,
    );
  }
}

abstract class _StatCount implements StatCount {
  factory _StatCount(
      {@JsonKey(name: '_id') required final String id,
      required final int count}) = _$StatCountImpl;

  factory _StatCount.fromJson(Map<String, dynamic> json) =
      _$StatCountImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  int get count;

  /// Create a copy of StatCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatCountImplCopyWith<_$StatCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
