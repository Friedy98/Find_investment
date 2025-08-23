// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_stats_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectStatsData _$ProjectStatsDataFromJson(Map<String, dynamic> json) {
  return _ProjectStatsData.fromJson(json);
}

/// @nodoc
mixin _$ProjectStatsData {
  int get total => throw _privateConstructorUsedError;
  int get active => throw _privateConstructorUsedError;
  int get funded => throw _privateConstructorUsedError;
  int get completed => throw _privateConstructorUsedError;
  List<StatCount> get byStatus => throw _privateConstructorUsedError;
  List<CategoryStat> get byCategory => throw _privateConstructorUsedError;
  List<TimelineStat> get timeline => throw _privateConstructorUsedError;
  FundingStats get funding => throw _privateConstructorUsedError;

  /// Serializes this ProjectStatsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectStatsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectStatsDataCopyWith<ProjectStatsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStatsDataCopyWith<$Res> {
  factory $ProjectStatsDataCopyWith(
          ProjectStatsData value, $Res Function(ProjectStatsData) then) =
      _$ProjectStatsDataCopyWithImpl<$Res, ProjectStatsData>;
  @useResult
  $Res call(
      {int total,
      int active,
      int funded,
      int completed,
      List<StatCount> byStatus,
      List<CategoryStat> byCategory,
      List<TimelineStat> timeline,
      FundingStats funding});

  $FundingStatsCopyWith<$Res> get funding;
}

/// @nodoc
class _$ProjectStatsDataCopyWithImpl<$Res, $Val extends ProjectStatsData>
    implements $ProjectStatsDataCopyWith<$Res> {
  _$ProjectStatsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectStatsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? active = null,
    Object? funded = null,
    Object? completed = null,
    Object? byStatus = null,
    Object? byCategory = null,
    Object? timeline = null,
    Object? funding = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      funded: null == funded
          ? _value.funded
          : funded // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int,
      byStatus: null == byStatus
          ? _value.byStatus
          : byStatus // ignore: cast_nullable_to_non_nullable
              as List<StatCount>,
      byCategory: null == byCategory
          ? _value.byCategory
          : byCategory // ignore: cast_nullable_to_non_nullable
              as List<CategoryStat>,
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as List<TimelineStat>,
      funding: null == funding
          ? _value.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as FundingStats,
    ) as $Val);
  }

  /// Create a copy of ProjectStatsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FundingStatsCopyWith<$Res> get funding {
    return $FundingStatsCopyWith<$Res>(_value.funding, (value) {
      return _then(_value.copyWith(funding: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectStatsDataImplCopyWith<$Res>
    implements $ProjectStatsDataCopyWith<$Res> {
  factory _$$ProjectStatsDataImplCopyWith(_$ProjectStatsDataImpl value,
          $Res Function(_$ProjectStatsDataImpl) then) =
      __$$ProjectStatsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int active,
      int funded,
      int completed,
      List<StatCount> byStatus,
      List<CategoryStat> byCategory,
      List<TimelineStat> timeline,
      FundingStats funding});

  @override
  $FundingStatsCopyWith<$Res> get funding;
}

/// @nodoc
class __$$ProjectStatsDataImplCopyWithImpl<$Res>
    extends _$ProjectStatsDataCopyWithImpl<$Res, _$ProjectStatsDataImpl>
    implements _$$ProjectStatsDataImplCopyWith<$Res> {
  __$$ProjectStatsDataImplCopyWithImpl(_$ProjectStatsDataImpl _value,
      $Res Function(_$ProjectStatsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectStatsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? active = null,
    Object? funded = null,
    Object? completed = null,
    Object? byStatus = null,
    Object? byCategory = null,
    Object? timeline = null,
    Object? funding = null,
  }) {
    return _then(_$ProjectStatsDataImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      funded: null == funded
          ? _value.funded
          : funded // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int,
      byStatus: null == byStatus
          ? _value._byStatus
          : byStatus // ignore: cast_nullable_to_non_nullable
              as List<StatCount>,
      byCategory: null == byCategory
          ? _value._byCategory
          : byCategory // ignore: cast_nullable_to_non_nullable
              as List<CategoryStat>,
      timeline: null == timeline
          ? _value._timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as List<TimelineStat>,
      funding: null == funding
          ? _value.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as FundingStats,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectStatsDataImpl implements _ProjectStatsData {
  _$ProjectStatsDataImpl(
      {required this.total,
      required this.active,
      required this.funded,
      required this.completed,
      required final List<StatCount> byStatus,
      required final List<CategoryStat> byCategory,
      required final List<TimelineStat> timeline,
      required this.funding})
      : _byStatus = byStatus,
        _byCategory = byCategory,
        _timeline = timeline;

  factory _$ProjectStatsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectStatsDataImplFromJson(json);

  @override
  final int total;
  @override
  final int active;
  @override
  final int funded;
  @override
  final int completed;
  final List<StatCount> _byStatus;
  @override
  List<StatCount> get byStatus {
    if (_byStatus is EqualUnmodifiableListView) return _byStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_byStatus);
  }

  final List<CategoryStat> _byCategory;
  @override
  List<CategoryStat> get byCategory {
    if (_byCategory is EqualUnmodifiableListView) return _byCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_byCategory);
  }

  final List<TimelineStat> _timeline;
  @override
  List<TimelineStat> get timeline {
    if (_timeline is EqualUnmodifiableListView) return _timeline;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeline);
  }

  @override
  final FundingStats funding;

  @override
  String toString() {
    return 'ProjectStatsData(total: $total, active: $active, funded: $funded, completed: $completed, byStatus: $byStatus, byCategory: $byCategory, timeline: $timeline, funding: $funding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStatsDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.funded, funded) || other.funded == funded) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            const DeepCollectionEquality().equals(other._byStatus, _byStatus) &&
            const DeepCollectionEquality()
                .equals(other._byCategory, _byCategory) &&
            const DeepCollectionEquality().equals(other._timeline, _timeline) &&
            (identical(other.funding, funding) || other.funding == funding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      total,
      active,
      funded,
      completed,
      const DeepCollectionEquality().hash(_byStatus),
      const DeepCollectionEquality().hash(_byCategory),
      const DeepCollectionEquality().hash(_timeline),
      funding);

  /// Create a copy of ProjectStatsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectStatsDataImplCopyWith<_$ProjectStatsDataImpl> get copyWith =>
      __$$ProjectStatsDataImplCopyWithImpl<_$ProjectStatsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectStatsDataImplToJson(
      this,
    );
  }
}

abstract class _ProjectStatsData implements ProjectStatsData {
  factory _ProjectStatsData(
      {required final int total,
      required final int active,
      required final int funded,
      required final int completed,
      required final List<StatCount> byStatus,
      required final List<CategoryStat> byCategory,
      required final List<TimelineStat> timeline,
      required final FundingStats funding}) = _$ProjectStatsDataImpl;

  factory _ProjectStatsData.fromJson(Map<String, dynamic> json) =
      _$ProjectStatsDataImpl.fromJson;

  @override
  int get total;
  @override
  int get active;
  @override
  int get funded;
  @override
  int get completed;
  @override
  List<StatCount> get byStatus;
  @override
  List<CategoryStat> get byCategory;
  @override
  List<TimelineStat> get timeline;
  @override
  FundingStats get funding;

  /// Create a copy of ProjectStatsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectStatsDataImplCopyWith<_$ProjectStatsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
