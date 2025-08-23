// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineStat _$TimelineStatFromJson(Map<String, dynamic> json) {
  return _TimelineStat.fromJson(json);
}

/// @nodoc
mixin _$TimelineStat {
  @JsonKey(name: '_id')
  String get date => throw _privateConstructorUsedError; // format "YYYY-MM"
  int get count => throw _privateConstructorUsedError;
  double get totalFunding => throw _privateConstructorUsedError;

  /// Serializes this TimelineStat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineStatCopyWith<TimelineStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineStatCopyWith<$Res> {
  factory $TimelineStatCopyWith(
          TimelineStat value, $Res Function(TimelineStat) then) =
      _$TimelineStatCopyWithImpl<$Res, TimelineStat>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String date, int count, double totalFunding});
}

/// @nodoc
class _$TimelineStatCopyWithImpl<$Res, $Val extends TimelineStat>
    implements $TimelineStatCopyWith<$Res> {
  _$TimelineStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? count = null,
    Object? totalFunding = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalFunding: null == totalFunding
          ? _value.totalFunding
          : totalFunding // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimelineStatImplCopyWith<$Res>
    implements $TimelineStatCopyWith<$Res> {
  factory _$$TimelineStatImplCopyWith(
          _$TimelineStatImpl value, $Res Function(_$TimelineStatImpl) then) =
      __$$TimelineStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String date, int count, double totalFunding});
}

/// @nodoc
class __$$TimelineStatImplCopyWithImpl<$Res>
    extends _$TimelineStatCopyWithImpl<$Res, _$TimelineStatImpl>
    implements _$$TimelineStatImplCopyWith<$Res> {
  __$$TimelineStatImplCopyWithImpl(
      _$TimelineStatImpl _value, $Res Function(_$TimelineStatImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? count = null,
    Object? totalFunding = null,
  }) {
    return _then(_$TimelineStatImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalFunding: null == totalFunding
          ? _value.totalFunding
          : totalFunding // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineStatImpl implements _TimelineStat {
  _$TimelineStatImpl(
      {@JsonKey(name: '_id') required this.date,
      required this.count,
      required this.totalFunding});

  factory _$TimelineStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineStatImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String date;
// format "YYYY-MM"
  @override
  final int count;
  @override
  final double totalFunding;

  @override
  String toString() {
    return 'TimelineStat(date: $date, count: $count, totalFunding: $totalFunding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineStatImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalFunding, totalFunding) ||
                other.totalFunding == totalFunding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, count, totalFunding);

  /// Create a copy of TimelineStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineStatImplCopyWith<_$TimelineStatImpl> get copyWith =>
      __$$TimelineStatImplCopyWithImpl<_$TimelineStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineStatImplToJson(
      this,
    );
  }
}

abstract class _TimelineStat implements TimelineStat {
  factory _TimelineStat(
      {@JsonKey(name: '_id') required final String date,
      required final int count,
      required final double totalFunding}) = _$TimelineStatImpl;

  factory _TimelineStat.fromJson(Map<String, dynamic> json) =
      _$TimelineStatImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get date; // format "YYYY-MM"
  @override
  int get count;
  @override
  double get totalFunding;

  /// Create a copy of TimelineStat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineStatImplCopyWith<_$TimelineStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
