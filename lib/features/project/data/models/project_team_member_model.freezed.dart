// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_team_member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectTeamMemberModel _$ProjectTeamMemberModelFromJson(
    Map<String, dynamic> json) {
  return _ProjectTeamMemberModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectTeamMemberModel {
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get user => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  List<String> get permissions => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get joinedAt => throw _privateConstructorUsedError;

  /// Serializes this ProjectTeamMemberModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectTeamMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectTeamMemberModelCopyWith<ProjectTeamMemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectTeamMemberModelCopyWith<$Res> {
  factory $ProjectTeamMemberModelCopyWith(ProjectTeamMemberModel value,
          $Res Function(ProjectTeamMemberModel) then) =
      _$ProjectTeamMemberModelCopyWithImpl<$Res, ProjectTeamMemberModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic user,
      String? role,
      List<String> permissions,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? joinedAt});
}

/// @nodoc
class _$ProjectTeamMemberModelCopyWithImpl<$Res,
        $Val extends ProjectTeamMemberModel>
    implements $ProjectTeamMemberModelCopyWith<$Res> {
  _$ProjectTeamMemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectTeamMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? role = freezed,
    Object? permissions = null,
    Object? joinedAt = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectTeamMemberModelImplCopyWith<$Res>
    implements $ProjectTeamMemberModelCopyWith<$Res> {
  factory _$$ProjectTeamMemberModelImplCopyWith(
          _$ProjectTeamMemberModelImpl value,
          $Res Function(_$ProjectTeamMemberModelImpl) then) =
      __$$ProjectTeamMemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic user,
      String? role,
      List<String> permissions,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? joinedAt});
}

/// @nodoc
class __$$ProjectTeamMemberModelImplCopyWithImpl<$Res>
    extends _$ProjectTeamMemberModelCopyWithImpl<$Res,
        _$ProjectTeamMemberModelImpl>
    implements _$$ProjectTeamMemberModelImplCopyWith<$Res> {
  __$$ProjectTeamMemberModelImplCopyWithImpl(
      _$ProjectTeamMemberModelImpl _value,
      $Res Function(_$ProjectTeamMemberModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectTeamMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? role = freezed,
    Object? permissions = null,
    Object? joinedAt = freezed,
  }) {
    return _then(_$ProjectTeamMemberModelImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectTeamMemberModelImpl implements _ProjectTeamMemberModel {
  _$ProjectTeamMemberModelImpl(
      {@JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      required this.user,
      this.role,
      final List<String> permissions = const [],
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.joinedAt})
      : _permissions = permissions;

  factory _$ProjectTeamMemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectTeamMemberModelImplFromJson(json);

  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  final dynamic user;
  @override
  final String? role;
  final List<String> _permissions;
  @override
  @JsonKey()
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? joinedAt;

  @override
  String toString() {
    return 'ProjectTeamMemberModel(user: $user, role: $role, permissions: $permissions, joinedAt: $joinedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectTeamMemberModelImpl &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      role,
      const DeepCollectionEquality().hash(_permissions),
      joinedAt);

  /// Create a copy of ProjectTeamMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectTeamMemberModelImplCopyWith<_$ProjectTeamMemberModelImpl>
      get copyWith => __$$ProjectTeamMemberModelImplCopyWithImpl<
          _$ProjectTeamMemberModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectTeamMemberModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectTeamMemberModel implements ProjectTeamMemberModel {
  factory _ProjectTeamMemberModel(
      {@JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      required final dynamic user,
      final String? role,
      final List<String> permissions,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? joinedAt}) = _$ProjectTeamMemberModelImpl;

  factory _ProjectTeamMemberModel.fromJson(Map<String, dynamic> json) =
      _$ProjectTeamMemberModelImpl.fromJson;

  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get user;
  @override
  String? get role;
  @override
  List<String> get permissions;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get joinedAt;

  /// Create a copy of ProjectTeamMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectTeamMemberModelImplCopyWith<_$ProjectTeamMemberModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
