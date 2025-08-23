// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metrics_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetricsSummaryModel _$MetricsSummaryModelFromJson(Map<String, dynamic> json) {
  return _MetricsSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$MetricsSummaryModel {
  @JsonKey(name: 'totalRevenue', defaultValue: 0.0)
  double get totalRevenue => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalExpenses', defaultValue: 0.0)
  double get totalExpenses => throw _privateConstructorUsedError;
  @JsonKey(name: 'impactMetrics', defaultValue: [])
  List<ImpactMetricModel> get impactMetrics =>
      throw _privateConstructorUsedError;

  /// Serializes this MetricsSummaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetricsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetricsSummaryModelCopyWith<MetricsSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricsSummaryModelCopyWith<$Res> {
  factory $MetricsSummaryModelCopyWith(
          MetricsSummaryModel value, $Res Function(MetricsSummaryModel) then) =
      _$MetricsSummaryModelCopyWithImpl<$Res, MetricsSummaryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'totalRevenue', defaultValue: 0.0) double totalRevenue,
      @JsonKey(name: 'totalExpenses', defaultValue: 0.0) double totalExpenses,
      @JsonKey(name: 'impactMetrics', defaultValue: [])
      List<ImpactMetricModel> impactMetrics});
}

/// @nodoc
class _$MetricsSummaryModelCopyWithImpl<$Res, $Val extends MetricsSummaryModel>
    implements $MetricsSummaryModelCopyWith<$Res> {
  _$MetricsSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetricsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalRevenue = null,
    Object? totalExpenses = null,
    Object? impactMetrics = null,
  }) {
    return _then(_value.copyWith(
      totalRevenue: null == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double,
      totalExpenses: null == totalExpenses
          ? _value.totalExpenses
          : totalExpenses // ignore: cast_nullable_to_non_nullable
              as double,
      impactMetrics: null == impactMetrics
          ? _value.impactMetrics
          : impactMetrics // ignore: cast_nullable_to_non_nullable
              as List<ImpactMetricModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetricsSummaryModelImplCopyWith<$Res>
    implements $MetricsSummaryModelCopyWith<$Res> {
  factory _$$MetricsSummaryModelImplCopyWith(_$MetricsSummaryModelImpl value,
          $Res Function(_$MetricsSummaryModelImpl) then) =
      __$$MetricsSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'totalRevenue', defaultValue: 0.0) double totalRevenue,
      @JsonKey(name: 'totalExpenses', defaultValue: 0.0) double totalExpenses,
      @JsonKey(name: 'impactMetrics', defaultValue: [])
      List<ImpactMetricModel> impactMetrics});
}

/// @nodoc
class __$$MetricsSummaryModelImplCopyWithImpl<$Res>
    extends _$MetricsSummaryModelCopyWithImpl<$Res, _$MetricsSummaryModelImpl>
    implements _$$MetricsSummaryModelImplCopyWith<$Res> {
  __$$MetricsSummaryModelImplCopyWithImpl(_$MetricsSummaryModelImpl _value,
      $Res Function(_$MetricsSummaryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalRevenue = null,
    Object? totalExpenses = null,
    Object? impactMetrics = null,
  }) {
    return _then(_$MetricsSummaryModelImpl(
      totalRevenue: null == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double,
      totalExpenses: null == totalExpenses
          ? _value.totalExpenses
          : totalExpenses // ignore: cast_nullable_to_non_nullable
              as double,
      impactMetrics: null == impactMetrics
          ? _value._impactMetrics
          : impactMetrics // ignore: cast_nullable_to_non_nullable
              as List<ImpactMetricModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetricsSummaryModelImpl implements _MetricsSummaryModel {
  const _$MetricsSummaryModelImpl(
      {@JsonKey(name: 'totalRevenue', defaultValue: 0.0)
      required this.totalRevenue,
      @JsonKey(name: 'totalExpenses', defaultValue: 0.0)
      required this.totalExpenses,
      @JsonKey(name: 'impactMetrics', defaultValue: [])
      required final List<ImpactMetricModel> impactMetrics})
      : _impactMetrics = impactMetrics;

  factory _$MetricsSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetricsSummaryModelImplFromJson(json);

  @override
  @JsonKey(name: 'totalRevenue', defaultValue: 0.0)
  final double totalRevenue;
  @override
  @JsonKey(name: 'totalExpenses', defaultValue: 0.0)
  final double totalExpenses;
  final List<ImpactMetricModel> _impactMetrics;
  @override
  @JsonKey(name: 'impactMetrics', defaultValue: [])
  List<ImpactMetricModel> get impactMetrics {
    if (_impactMetrics is EqualUnmodifiableListView) return _impactMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_impactMetrics);
  }

  @override
  String toString() {
    return 'MetricsSummaryModel(totalRevenue: $totalRevenue, totalExpenses: $totalExpenses, impactMetrics: $impactMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetricsSummaryModelImpl &&
            (identical(other.totalRevenue, totalRevenue) ||
                other.totalRevenue == totalRevenue) &&
            (identical(other.totalExpenses, totalExpenses) ||
                other.totalExpenses == totalExpenses) &&
            const DeepCollectionEquality()
                .equals(other._impactMetrics, _impactMetrics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalRevenue, totalExpenses,
      const DeepCollectionEquality().hash(_impactMetrics));

  /// Create a copy of MetricsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetricsSummaryModelImplCopyWith<_$MetricsSummaryModelImpl> get copyWith =>
      __$$MetricsSummaryModelImplCopyWithImpl<_$MetricsSummaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetricsSummaryModelImplToJson(
      this,
    );
  }
}

abstract class _MetricsSummaryModel implements MetricsSummaryModel {
  const factory _MetricsSummaryModel(
          {@JsonKey(name: 'totalRevenue', defaultValue: 0.0)
          required final double totalRevenue,
          @JsonKey(name: 'totalExpenses', defaultValue: 0.0)
          required final double totalExpenses,
          @JsonKey(name: 'impactMetrics', defaultValue: [])
          required final List<ImpactMetricModel> impactMetrics}) =
      _$MetricsSummaryModelImpl;

  factory _MetricsSummaryModel.fromJson(Map<String, dynamic> json) =
      _$MetricsSummaryModelImpl.fromJson;

  @override
  @JsonKey(name: 'totalRevenue', defaultValue: 0.0)
  double get totalRevenue;
  @override
  @JsonKey(name: 'totalExpenses', defaultValue: 0.0)
  double get totalExpenses;
  @override
  @JsonKey(name: 'impactMetrics', defaultValue: [])
  List<ImpactMetricModel> get impactMetrics;

  /// Create a copy of MetricsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetricsSummaryModelImplCopyWith<_$MetricsSummaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
