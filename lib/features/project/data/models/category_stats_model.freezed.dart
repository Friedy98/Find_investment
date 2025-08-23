// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryStat _$CategoryStatFromJson(Map<String, dynamic> json) {
  return _CategoryStat.fromJson(json);
}

/// @nodoc
mixin _$CategoryStat {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  double get totalFunding => throw _privateConstructorUsedError;
  List<dynamic>? get categoryInfo => throw _privateConstructorUsedError;

  /// Serializes this CategoryStat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryStatCopyWith<CategoryStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStatCopyWith<$Res> {
  factory $CategoryStatCopyWith(
          CategoryStat value, $Res Function(CategoryStat) then) =
      _$CategoryStatCopyWithImpl<$Res, CategoryStat>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      int count,
      double totalFunding,
      List<dynamic>? categoryInfo});
}

/// @nodoc
class _$CategoryStatCopyWithImpl<$Res, $Val extends CategoryStat>
    implements $CategoryStatCopyWith<$Res> {
  _$CategoryStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? count = null,
    Object? totalFunding = null,
    Object? categoryInfo = freezed,
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
      totalFunding: null == totalFunding
          ? _value.totalFunding
          : totalFunding // ignore: cast_nullable_to_non_nullable
              as double,
      categoryInfo: freezed == categoryInfo
          ? _value.categoryInfo
          : categoryInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryStatImplCopyWith<$Res>
    implements $CategoryStatCopyWith<$Res> {
  factory _$$CategoryStatImplCopyWith(
          _$CategoryStatImpl value, $Res Function(_$CategoryStatImpl) then) =
      __$$CategoryStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      int count,
      double totalFunding,
      List<dynamic>? categoryInfo});
}

/// @nodoc
class __$$CategoryStatImplCopyWithImpl<$Res>
    extends _$CategoryStatCopyWithImpl<$Res, _$CategoryStatImpl>
    implements _$$CategoryStatImplCopyWith<$Res> {
  __$$CategoryStatImplCopyWithImpl(
      _$CategoryStatImpl _value, $Res Function(_$CategoryStatImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? count = null,
    Object? totalFunding = null,
    Object? categoryInfo = freezed,
  }) {
    return _then(_$CategoryStatImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalFunding: null == totalFunding
          ? _value.totalFunding
          : totalFunding // ignore: cast_nullable_to_non_nullable
              as double,
      categoryInfo: freezed == categoryInfo
          ? _value._categoryInfo
          : categoryInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryStatImpl implements _CategoryStat {
  _$CategoryStatImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.count,
      required this.totalFunding,
      final List<dynamic>? categoryInfo})
      : _categoryInfo = categoryInfo;

  factory _$CategoryStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryStatImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final int count;
  @override
  final double totalFunding;
  final List<dynamic>? _categoryInfo;
  @override
  List<dynamic>? get categoryInfo {
    final value = _categoryInfo;
    if (value == null) return null;
    if (_categoryInfo is EqualUnmodifiableListView) return _categoryInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryStat(id: $id, count: $count, totalFunding: $totalFunding, categoryInfo: $categoryInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalFunding, totalFunding) ||
                other.totalFunding == totalFunding) &&
            const DeepCollectionEquality()
                .equals(other._categoryInfo, _categoryInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, count, totalFunding,
      const DeepCollectionEquality().hash(_categoryInfo));

  /// Create a copy of CategoryStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStatImplCopyWith<_$CategoryStatImpl> get copyWith =>
      __$$CategoryStatImplCopyWithImpl<_$CategoryStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryStatImplToJson(
      this,
    );
  }
}

abstract class _CategoryStat implements CategoryStat {
  factory _CategoryStat(
      {@JsonKey(name: '_id') required final String id,
      required final int count,
      required final double totalFunding,
      final List<dynamic>? categoryInfo}) = _$CategoryStatImpl;

  factory _CategoryStat.fromJson(Map<String, dynamic> json) =
      _$CategoryStatImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  int get count;
  @override
  double get totalFunding;
  @override
  List<dynamic>? get categoryInfo;

  /// Create a copy of CategoryStat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryStatImplCopyWith<_$CategoryStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
