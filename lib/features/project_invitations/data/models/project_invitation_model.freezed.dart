// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_invitation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectInvitationModel _$ProjectInvitationModelFromJson(
    Map<String, dynamic> json) {
  return _ProjectInvitationModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectInvitationModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project => throw _privateConstructorUsedError;
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get user => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  PermissionsaModel get permissions => throw _privateConstructorUsedError;
  @JsonKey(name: 'invitedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get invitedBy => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get invitedAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'skills', defaultValue: [])
  List<String> get skills => throw _privateConstructorUsedError;
  String? get motivation => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get respondedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  String? get invitationToken => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProjectInvitationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectInvitationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectInvitationModelCopyWith<ProjectInvitationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectInvitationModelCopyWith<$Res> {
  factory $ProjectInvitationModelCopyWith(ProjectInvitationModel value,
          $Res Function(ProjectInvitationModel) then) =
      _$ProjectInvitationModelCopyWithImpl<$Res, ProjectInvitationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      dynamic user,
      String? email,
      String role,
      PermissionsaModel permissions,
      @JsonKey(name: 'invitedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic invitedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? invitedAt,
      String status,
      String? message,
      @JsonKey(name: 'skills', defaultValue: []) List<String> skills,
      String? motivation,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? respondedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? expiresAt,
      String? invitationToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});

  $PermissionsaModelCopyWith<$Res> get permissions;
}

/// @nodoc
class _$ProjectInvitationModelCopyWithImpl<$Res,
        $Val extends ProjectInvitationModel>
    implements $ProjectInvitationModelCopyWith<$Res> {
  _$ProjectInvitationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectInvitationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = freezed,
    Object? user = freezed,
    Object? email = freezed,
    Object? role = null,
    Object? permissions = null,
    Object? invitedBy = freezed,
    Object? invitedAt = freezed,
    Object? status = null,
    Object? message = freezed,
    Object? skills = null,
    Object? motivation = freezed,
    Object? respondedAt = freezed,
    Object? expiresAt = freezed,
    Object? invitationToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as PermissionsaModel,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      invitedAt: freezed == invitedAt
          ? _value.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      motivation: freezed == motivation
          ? _value.motivation
          : motivation // ignore: cast_nullable_to_non_nullable
              as String?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      invitationToken: freezed == invitationToken
          ? _value.invitationToken
          : invitationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of ProjectInvitationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionsaModelCopyWith<$Res> get permissions {
    return $PermissionsaModelCopyWith<$Res>(_value.permissions, (value) {
      return _then(_value.copyWith(permissions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectInvitationModelImplCopyWith<$Res>
    implements $ProjectInvitationModelCopyWith<$Res> {
  factory _$$ProjectInvitationModelImplCopyWith(
          _$ProjectInvitationModelImpl value,
          $Res Function(_$ProjectInvitationModelImpl) then) =
      __$$ProjectInvitationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      dynamic user,
      String? email,
      String role,
      PermissionsaModel permissions,
      @JsonKey(name: 'invitedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic invitedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? invitedAt,
      String status,
      String? message,
      @JsonKey(name: 'skills', defaultValue: []) List<String> skills,
      String? motivation,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? respondedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? expiresAt,
      String? invitationToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});

  @override
  $PermissionsaModelCopyWith<$Res> get permissions;
}

/// @nodoc
class __$$ProjectInvitationModelImplCopyWithImpl<$Res>
    extends _$ProjectInvitationModelCopyWithImpl<$Res,
        _$ProjectInvitationModelImpl>
    implements _$$ProjectInvitationModelImplCopyWith<$Res> {
  __$$ProjectInvitationModelImplCopyWithImpl(
      _$ProjectInvitationModelImpl _value,
      $Res Function(_$ProjectInvitationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectInvitationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = freezed,
    Object? user = freezed,
    Object? email = freezed,
    Object? role = null,
    Object? permissions = null,
    Object? invitedBy = freezed,
    Object? invitedAt = freezed,
    Object? status = null,
    Object? message = freezed,
    Object? skills = null,
    Object? motivation = freezed,
    Object? respondedAt = freezed,
    Object? expiresAt = freezed,
    Object? invitationToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProjectInvitationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as PermissionsaModel,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      invitedAt: freezed == invitedAt
          ? _value.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      skills: null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      motivation: freezed == motivation
          ? _value.motivation
          : motivation // ignore: cast_nullable_to_non_nullable
              as String?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      invitationToken: freezed == invitationToken
          ? _value.invitationToken
          : invitationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectInvitationModelImpl extends _ProjectInvitationModel {
  _$ProjectInvitationModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      required this.project,
      @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      this.user,
      this.email,
      required this.role,
      required this.permissions,
      @JsonKey(name: 'invitedBy', fromJson: _userFromJson, toJson: _userToJson)
      required this.invitedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.invitedAt,
      required this.status,
      this.message,
      @JsonKey(name: 'skills', defaultValue: [])
      required final List<String> skills,
      this.motivation,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.respondedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.expiresAt,
      this.invitationToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt})
      : _skills = skills,
        super._();

  factory _$ProjectInvitationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectInvitationModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  final dynamic project;
  @override
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic user;
  @override
  final String? email;
  @override
  final String role;
  @override
  final PermissionsaModel permissions;
  @override
  @JsonKey(name: 'invitedBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic invitedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? invitedAt;
  @override
  final String status;
  @override
  final String? message;
  final List<String> _skills;
  @override
  @JsonKey(name: 'skills', defaultValue: [])
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  final String? motivation;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? respondedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? expiresAt;
  @override
  final String? invitationToken;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProjectInvitationModel(id: $id, project: $project, user: $user, email: $email, role: $role, permissions: $permissions, invitedBy: $invitedBy, invitedAt: $invitedAt, status: $status, message: $message, skills: $skills, motivation: $motivation, respondedAt: $respondedAt, expiresAt: $expiresAt, invitationToken: $invitationToken, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectInvitationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.project, project) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.permissions, permissions) ||
                other.permissions == permissions) &&
            const DeepCollectionEquality().equals(other.invitedBy, invitedBy) &&
            (identical(other.invitedAt, invitedAt) ||
                other.invitedAt == invitedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.motivation, motivation) ||
                other.motivation == motivation) &&
            (identical(other.respondedAt, respondedAt) ||
                other.respondedAt == respondedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.invitationToken, invitationToken) ||
                other.invitationToken == invitationToken) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(project),
      const DeepCollectionEquality().hash(user),
      email,
      role,
      permissions,
      const DeepCollectionEquality().hash(invitedBy),
      invitedAt,
      status,
      message,
      const DeepCollectionEquality().hash(_skills),
      motivation,
      respondedAt,
      expiresAt,
      invitationToken,
      createdAt,
      updatedAt);

  /// Create a copy of ProjectInvitationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectInvitationModelImplCopyWith<_$ProjectInvitationModelImpl>
      get copyWith => __$$ProjectInvitationModelImplCopyWithImpl<
          _$ProjectInvitationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectInvitationModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectInvitationModel extends ProjectInvitationModel {
  factory _ProjectInvitationModel(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      required final dynamic project,
      @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      final dynamic user,
      final String? email,
      required final String role,
      required final PermissionsaModel permissions,
      @JsonKey(name: 'invitedBy', fromJson: _userFromJson, toJson: _userToJson)
      required final dynamic invitedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? invitedAt,
      required final String status,
      final String? message,
      @JsonKey(name: 'skills', defaultValue: [])
      required final List<String> skills,
      final String? motivation,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? respondedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? expiresAt,
      final String? invitationToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt}) = _$ProjectInvitationModelImpl;
  _ProjectInvitationModel._() : super._();

  factory _ProjectInvitationModel.fromJson(Map<String, dynamic> json) =
      _$ProjectInvitationModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project;
  @override
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get user;
  @override
  String? get email;
  @override
  String get role;
  @override
  PermissionsaModel get permissions;
  @override
  @JsonKey(name: 'invitedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get invitedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get invitedAt;
  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(name: 'skills', defaultValue: [])
  List<String> get skills;
  @override
  String? get motivation;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get respondedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get expiresAt;
  @override
  String? get invitationToken;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;

  /// Create a copy of ProjectInvitationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectInvitationModelImplCopyWith<_$ProjectInvitationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PermissionsaModel _$PermissionsaModelFromJson(Map<String, dynamic> json) {
  return _PermissionsaModel.fromJson(json);
}

/// @nodoc
mixin _$PermissionsaModel {
  bool get canEdit => throw _privateConstructorUsedError;
  bool get canManageTeam => throw _privateConstructorUsedError;
  bool get canViewFinancials => throw _privateConstructorUsedError;
  bool get canPostUpdates => throw _privateConstructorUsedError;

  /// Serializes this PermissionsaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PermissionsaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PermissionsaModelCopyWith<PermissionsaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsaModelCopyWith<$Res> {
  factory $PermissionsaModelCopyWith(
          PermissionsaModel value, $Res Function(PermissionsaModel) then) =
      _$PermissionsaModelCopyWithImpl<$Res, PermissionsaModel>;
  @useResult
  $Res call(
      {bool canEdit,
      bool canManageTeam,
      bool canViewFinancials,
      bool canPostUpdates});
}

/// @nodoc
class _$PermissionsaModelCopyWithImpl<$Res, $Val extends PermissionsaModel>
    implements $PermissionsaModelCopyWith<$Res> {
  _$PermissionsaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PermissionsaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canEdit = null,
    Object? canManageTeam = null,
    Object? canViewFinancials = null,
    Object? canPostUpdates = null,
  }) {
    return _then(_value.copyWith(
      canEdit: null == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageTeam: null == canManageTeam
          ? _value.canManageTeam
          : canManageTeam // ignore: cast_nullable_to_non_nullable
              as bool,
      canViewFinancials: null == canViewFinancials
          ? _value.canViewFinancials
          : canViewFinancials // ignore: cast_nullable_to_non_nullable
              as bool,
      canPostUpdates: null == canPostUpdates
          ? _value.canPostUpdates
          : canPostUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionsaModelImplCopyWith<$Res>
    implements $PermissionsaModelCopyWith<$Res> {
  factory _$$PermissionsaModelImplCopyWith(_$PermissionsaModelImpl value,
          $Res Function(_$PermissionsaModelImpl) then) =
      __$$PermissionsaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool canEdit,
      bool canManageTeam,
      bool canViewFinancials,
      bool canPostUpdates});
}

/// @nodoc
class __$$PermissionsaModelImplCopyWithImpl<$Res>
    extends _$PermissionsaModelCopyWithImpl<$Res, _$PermissionsaModelImpl>
    implements _$$PermissionsaModelImplCopyWith<$Res> {
  __$$PermissionsaModelImplCopyWithImpl(_$PermissionsaModelImpl _value,
      $Res Function(_$PermissionsaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionsaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canEdit = null,
    Object? canManageTeam = null,
    Object? canViewFinancials = null,
    Object? canPostUpdates = null,
  }) {
    return _then(_$PermissionsaModelImpl(
      canEdit: null == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageTeam: null == canManageTeam
          ? _value.canManageTeam
          : canManageTeam // ignore: cast_nullable_to_non_nullable
              as bool,
      canViewFinancials: null == canViewFinancials
          ? _value.canViewFinancials
          : canViewFinancials // ignore: cast_nullable_to_non_nullable
              as bool,
      canPostUpdates: null == canPostUpdates
          ? _value.canPostUpdates
          : canPostUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionsaModelImpl implements _PermissionsaModel {
  _$PermissionsaModelImpl(
      {required this.canEdit,
      required this.canManageTeam,
      required this.canViewFinancials,
      required this.canPostUpdates});

  factory _$PermissionsaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionsaModelImplFromJson(json);

  @override
  final bool canEdit;
  @override
  final bool canManageTeam;
  @override
  final bool canViewFinancials;
  @override
  final bool canPostUpdates;

  @override
  String toString() {
    return 'PermissionsaModel(canEdit: $canEdit, canManageTeam: $canManageTeam, canViewFinancials: $canViewFinancials, canPostUpdates: $canPostUpdates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsaModelImpl &&
            (identical(other.canEdit, canEdit) || other.canEdit == canEdit) &&
            (identical(other.canManageTeam, canManageTeam) ||
                other.canManageTeam == canManageTeam) &&
            (identical(other.canViewFinancials, canViewFinancials) ||
                other.canViewFinancials == canViewFinancials) &&
            (identical(other.canPostUpdates, canPostUpdates) ||
                other.canPostUpdates == canPostUpdates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, canEdit, canManageTeam, canViewFinancials, canPostUpdates);

  /// Create a copy of PermissionsaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionsaModelImplCopyWith<_$PermissionsaModelImpl> get copyWith =>
      __$$PermissionsaModelImplCopyWithImpl<_$PermissionsaModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionsaModelImplToJson(
      this,
    );
  }
}

abstract class _PermissionsaModel implements PermissionsaModel {
  factory _PermissionsaModel(
      {required final bool canEdit,
      required final bool canManageTeam,
      required final bool canViewFinancials,
      required final bool canPostUpdates}) = _$PermissionsaModelImpl;

  factory _PermissionsaModel.fromJson(Map<String, dynamic> json) =
      _$PermissionsaModelImpl.fromJson;

  @override
  bool get canEdit;
  @override
  bool get canManageTeam;
  @override
  bool get canViewFinancials;
  @override
  bool get canPostUpdates;

  /// Create a copy of PermissionsaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionsaModelImplCopyWith<_$PermissionsaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
