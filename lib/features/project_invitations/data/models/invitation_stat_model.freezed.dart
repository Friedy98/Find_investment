// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation_stat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvitationStatModel _$InvitationStatModelFromJson(Map<String, dynamic> json) {
  return _InvitationStatModel.fromJson(json);
}

/// @nodoc
mixin _$InvitationStatModel {
  @JsonKey(name: 'status', defaultValue: '')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'count', defaultValue: 0)
  int get count => throw _privateConstructorUsedError;

  /// Serializes this InvitationStatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvitationStatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvitationStatModelCopyWith<InvitationStatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationStatModelCopyWith<$Res> {
  factory $InvitationStatModelCopyWith(
          InvitationStatModel value, $Res Function(InvitationStatModel) then) =
      _$InvitationStatModelCopyWithImpl<$Res, InvitationStatModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status', defaultValue: '') String category,
      @JsonKey(name: 'count', defaultValue: 0) int count});
}

/// @nodoc
class _$InvitationStatModelCopyWithImpl<$Res, $Val extends InvitationStatModel>
    implements $InvitationStatModelCopyWith<$Res> {
  _$InvitationStatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvitationStatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvitationStatModelImplCopyWith<$Res>
    implements $InvitationStatModelCopyWith<$Res> {
  factory _$$InvitationStatModelImplCopyWith(_$InvitationStatModelImpl value,
          $Res Function(_$InvitationStatModelImpl) then) =
      __$$InvitationStatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status', defaultValue: '') String category,
      @JsonKey(name: 'count', defaultValue: 0) int count});
}

/// @nodoc
class __$$InvitationStatModelImplCopyWithImpl<$Res>
    extends _$InvitationStatModelCopyWithImpl<$Res, _$InvitationStatModelImpl>
    implements _$$InvitationStatModelImplCopyWith<$Res> {
  __$$InvitationStatModelImplCopyWithImpl(_$InvitationStatModelImpl _value,
      $Res Function(_$InvitationStatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvitationStatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? count = null,
  }) {
    return _then(_$InvitationStatModelImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
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
class _$InvitationStatModelImpl implements _InvitationStatModel {
  _$InvitationStatModelImpl(
      {@JsonKey(name: 'status', defaultValue: '') required this.category,
      @JsonKey(name: 'count', defaultValue: 0) required this.count});

  factory _$InvitationStatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvitationStatModelImplFromJson(json);

  @override
  @JsonKey(name: 'status', defaultValue: '')
  final String category;
  @override
  @JsonKey(name: 'count', defaultValue: 0)
  final int count;

  @override
  String toString() {
    return 'InvitationStatModel(category: $category, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvitationStatModelImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, count);

  /// Create a copy of InvitationStatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvitationStatModelImplCopyWith<_$InvitationStatModelImpl> get copyWith =>
      __$$InvitationStatModelImplCopyWithImpl<_$InvitationStatModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvitationStatModelImplToJson(
      this,
    );
  }
}

abstract class _InvitationStatModel implements InvitationStatModel {
  factory _InvitationStatModel(
          {@JsonKey(name: 'status', defaultValue: '')
          required final String category,
          @JsonKey(name: 'count', defaultValue: 0) required final int count}) =
      _$InvitationStatModelImpl;

  factory _InvitationStatModel.fromJson(Map<String, dynamic> json) =
      _$InvitationStatModelImpl.fromJson;

  @override
  @JsonKey(name: 'status', defaultValue: '')
  String get category;
  @override
  @JsonKey(name: 'count', defaultValue: 0)
  int get count;

  /// Create a copy of InvitationStatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvitationStatModelImplCopyWith<_$InvitationStatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
