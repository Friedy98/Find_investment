// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'funding_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FundingStats _$FundingStatsFromJson(Map<String, dynamic> json) {
  return _FundingStats.fromJson(json);
}

/// @nodoc
mixin _$FundingStats {
  double get totalFunding => throw _privateConstructorUsedError;
  double get averageFunding => throw _privateConstructorUsedError;
  double get totalGoal => throw _privateConstructorUsedError;

  /// Serializes this FundingStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FundingStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FundingStatsCopyWith<FundingStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundingStatsCopyWith<$Res> {
  factory $FundingStatsCopyWith(
          FundingStats value, $Res Function(FundingStats) then) =
      _$FundingStatsCopyWithImpl<$Res, FundingStats>;
  @useResult
  $Res call({double totalFunding, double averageFunding, double totalGoal});
}

/// @nodoc
class _$FundingStatsCopyWithImpl<$Res, $Val extends FundingStats>
    implements $FundingStatsCopyWith<$Res> {
  _$FundingStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FundingStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalFunding = null,
    Object? averageFunding = null,
    Object? totalGoal = null,
  }) {
    return _then(_value.copyWith(
      totalFunding: null == totalFunding
          ? _value.totalFunding
          : totalFunding // ignore: cast_nullable_to_non_nullable
              as double,
      averageFunding: null == averageFunding
          ? _value.averageFunding
          : averageFunding // ignore: cast_nullable_to_non_nullable
              as double,
      totalGoal: null == totalGoal
          ? _value.totalGoal
          : totalGoal // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FundingStatsImplCopyWith<$Res>
    implements $FundingStatsCopyWith<$Res> {
  factory _$$FundingStatsImplCopyWith(
          _$FundingStatsImpl value, $Res Function(_$FundingStatsImpl) then) =
      __$$FundingStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double totalFunding, double averageFunding, double totalGoal});
}

/// @nodoc
class __$$FundingStatsImplCopyWithImpl<$Res>
    extends _$FundingStatsCopyWithImpl<$Res, _$FundingStatsImpl>
    implements _$$FundingStatsImplCopyWith<$Res> {
  __$$FundingStatsImplCopyWithImpl(
      _$FundingStatsImpl _value, $Res Function(_$FundingStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundingStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalFunding = null,
    Object? averageFunding = null,
    Object? totalGoal = null,
  }) {
    return _then(_$FundingStatsImpl(
      totalFunding: null == totalFunding
          ? _value.totalFunding
          : totalFunding // ignore: cast_nullable_to_non_nullable
              as double,
      averageFunding: null == averageFunding
          ? _value.averageFunding
          : averageFunding // ignore: cast_nullable_to_non_nullable
              as double,
      totalGoal: null == totalGoal
          ? _value.totalGoal
          : totalGoal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FundingStatsImpl implements _FundingStats {
  _$FundingStatsImpl(
      {this.totalFunding = 0, this.averageFunding = 0, this.totalGoal = 0});

  factory _$FundingStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FundingStatsImplFromJson(json);

  @override
  @JsonKey()
  final double totalFunding;
  @override
  @JsonKey()
  final double averageFunding;
  @override
  @JsonKey()
  final double totalGoal;

  @override
  String toString() {
    return 'FundingStats(totalFunding: $totalFunding, averageFunding: $averageFunding, totalGoal: $totalGoal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundingStatsImpl &&
            (identical(other.totalFunding, totalFunding) ||
                other.totalFunding == totalFunding) &&
            (identical(other.averageFunding, averageFunding) ||
                other.averageFunding == averageFunding) &&
            (identical(other.totalGoal, totalGoal) ||
                other.totalGoal == totalGoal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalFunding, averageFunding, totalGoal);

  /// Create a copy of FundingStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FundingStatsImplCopyWith<_$FundingStatsImpl> get copyWith =>
      __$$FundingStatsImplCopyWithImpl<_$FundingStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FundingStatsImplToJson(
      this,
    );
  }
}

abstract class _FundingStats implements FundingStats {
  factory _FundingStats(
      {final double totalFunding,
      final double averageFunding,
      final double totalGoal}) = _$FundingStatsImpl;

  factory _FundingStats.fromJson(Map<String, dynamic> json) =
      _$FundingStatsImpl.fromJson;

  @override
  double get totalFunding;
  @override
  double get averageFunding;
  @override
  double get totalGoal;

  /// Create a copy of FundingStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FundingStatsImplCopyWith<_$FundingStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
