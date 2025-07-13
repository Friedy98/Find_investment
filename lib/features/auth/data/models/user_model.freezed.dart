// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  List<String>? get permissions => throw _privateConstructorUsedError;
  ProfileModel? get profile => throw _privateConstructorUsedError;
  PreferencesModel? get preferences => throw _privateConstructorUsedError;
  String? get kycStatus => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  DateTime? get lastLogin => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String email,
      String? phone,
      String role,
      List<String>? permissions,
      ProfileModel? profile,
      PreferencesModel? preferences,
      String? kycStatus,
      bool? isActive,
      bool isVerified,
      DateTime? lastLogin,
      DateTime? createdAt,
      DateTime? updatedAt});

  $ProfileModelCopyWith<$Res>? get profile;
  $PreferencesModelCopyWith<$Res>? get preferences;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = freezed,
    Object? role = null,
    Object? permissions = freezed,
    Object? profile = freezed,
    Object? preferences = freezed,
    Object? kycStatus = freezed,
    Object? isActive = freezed,
    Object? isVerified = null,
    Object? lastLogin = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as PreferencesModel?,
      kycStatus: freezed == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileModelCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreferencesModelCopyWith<$Res>? get preferences {
    if (_value.preferences == null) {
      return null;
    }

    return $PreferencesModelCopyWith<$Res>(_value.preferences!, (value) {
      return _then(_value.copyWith(preferences: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String email,
      String? phone,
      String role,
      List<String>? permissions,
      ProfileModel? profile,
      PreferencesModel? preferences,
      String? kycStatus,
      bool? isActive,
      bool isVerified,
      DateTime? lastLogin,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $ProfileModelCopyWith<$Res>? get profile;
  @override
  $PreferencesModelCopyWith<$Res>? get preferences;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = freezed,
    Object? role = null,
    Object? permissions = freezed,
    Object? profile = freezed,
    Object? preferences = freezed,
    Object? kycStatus = freezed,
    Object? isActive = freezed,
    Object? isVerified = null,
    Object? lastLogin = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: freezed == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as PreferencesModel?,
      kycStatus: freezed == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$UserModelImpl extends _UserModel {
  _$UserModelImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      this.phone,
      required this.role,
      final List<String>? permissions,
      this.profile,
      this.preferences,
      this.kycStatus,
      this.isActive,
      required this.isVerified,
      this.lastLogin,
      this.createdAt,
      this.updatedAt})
      : _permissions = permissions,
        super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String? phone;
  @override
  final String role;
  final List<String>? _permissions;
  @override
  List<String>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ProfileModel? profile;
  @override
  final PreferencesModel? preferences;
  @override
  final String? kycStatus;
  @override
  final bool? isActive;
  @override
  final bool isVerified;
  @override
  final DateTime? lastLogin;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, role: $role, permissions: $permissions, profile: $profile, preferences: $preferences, kycStatus: $kycStatus, isActive: $isActive, isVerified: $isVerified, lastLogin: $lastLogin, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences) &&
            (identical(other.kycStatus, kycStatus) ||
                other.kycStatus == kycStatus) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
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
      firstName,
      lastName,
      email,
      phone,
      role,
      const DeepCollectionEquality().hash(_permissions),
      profile,
      preferences,
      kycStatus,
      isActive,
      isVerified,
      lastLogin,
      createdAt,
      updatedAt);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  factory _UserModel(
      {required final String id,
      required final String firstName,
      required final String lastName,
      required final String email,
      final String? phone,
      required final String role,
      final List<String>? permissions,
      final ProfileModel? profile,
      final PreferencesModel? preferences,
      final String? kycStatus,
      final bool? isActive,
      required final bool isVerified,
      final DateTime? lastLogin,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$UserModelImpl;
  _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String? get phone;
  @override
  String get role;
  @override
  List<String>? get permissions;
  @override
  ProfileModel? get profile;
  @override
  PreferencesModel? get preferences;
  @override
  String? get kycStatus;
  @override
  bool? get isActive;
  @override
  bool get isVerified;
  @override
  DateTime? get lastLogin;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  String? get avatar => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  SocialLinksModel? get socialLinks => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {String? avatar,
      String? bio,
      String? location,
      String? website,
      SocialLinksModel? socialLinks,
      DateTime? dateOfBirth,
      String? gender});

  $SocialLinksModelCopyWith<$Res>? get socialLinks;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? website = freezed,
    Object? socialLinks = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      socialLinks: freezed == socialLinks
          ? _value.socialLinks
          : socialLinks // ignore: cast_nullable_to_non_nullable
              as SocialLinksModel?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinksModelCopyWith<$Res>? get socialLinks {
    if (_value.socialLinks == null) {
      return null;
    }

    return $SocialLinksModelCopyWith<$Res>(_value.socialLinks!, (value) {
      return _then(_value.copyWith(socialLinks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? avatar,
      String? bio,
      String? location,
      String? website,
      SocialLinksModel? socialLinks,
      DateTime? dateOfBirth,
      String? gender});

  @override
  $SocialLinksModelCopyWith<$Res>? get socialLinks;
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? website = freezed,
    Object? socialLinks = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      socialLinks: freezed == socialLinks
          ? _value.socialLinks
          : socialLinks // ignore: cast_nullable_to_non_nullable
              as SocialLinksModel?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl extends _ProfileModel {
  _$ProfileModelImpl(
      {this.avatar,
      this.bio,
      this.location,
      this.website,
      this.socialLinks,
      this.dateOfBirth,
      this.gender})
      : super._();

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final String? avatar;
  @override
  final String? bio;
  @override
  final String? location;
  @override
  final String? website;
  @override
  final SocialLinksModel? socialLinks;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? gender;

  @override
  String toString() {
    return 'ProfileModel(avatar: $avatar, bio: $bio, location: $location, website: $website, socialLinks: $socialLinks, dateOfBirth: $dateOfBirth, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.socialLinks, socialLinks) ||
                other.socialLinks == socialLinks) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, avatar, bio, location, website,
      socialLinks, dateOfBirth, gender);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel extends ProfileModel {
  factory _ProfileModel(
      {final String? avatar,
      final String? bio,
      final String? location,
      final String? website,
      final SocialLinksModel? socialLinks,
      final DateTime? dateOfBirth,
      final String? gender}) = _$ProfileModelImpl;
  _ProfileModel._() : super._();

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  String? get avatar;
  @override
  String? get bio;
  @override
  String? get location;
  @override
  String? get website;
  @override
  SocialLinksModel? get socialLinks;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get gender;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
class _$SocialLinksModelImpl extends _SocialLinksModel {
  _$SocialLinksModelImpl(
      {this.linkedin, this.twitter, this.facebook, this.instagram})
      : super._();

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

abstract class _SocialLinksModel extends SocialLinksModel {
  factory _SocialLinksModel(
      {final String? linkedin,
      final String? twitter,
      final String? facebook,
      final String? instagram}) = _$SocialLinksModelImpl;
  _SocialLinksModel._() : super._();

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

PreferencesModel _$PreferencesModelFromJson(Map<String, dynamic> json) {
  return _PreferencesModel.fromJson(json);
}

/// @nodoc
mixin _$PreferencesModel {
  String? get language => throw _privateConstructorUsedError;
  NotificationsModel? get notifications => throw _privateConstructorUsedError;
  PrivacyModel? get privacy => throw _privateConstructorUsedError;

  /// Serializes this PreferencesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferencesModelCopyWith<PreferencesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesModelCopyWith<$Res> {
  factory $PreferencesModelCopyWith(
          PreferencesModel value, $Res Function(PreferencesModel) then) =
      _$PreferencesModelCopyWithImpl<$Res, PreferencesModel>;
  @useResult
  $Res call(
      {String? language,
      NotificationsModel? notifications,
      PrivacyModel? privacy});

  $NotificationsModelCopyWith<$Res>? get notifications;
  $PrivacyModelCopyWith<$Res>? get privacy;
}

/// @nodoc
class _$PreferencesModelCopyWithImpl<$Res, $Val extends PreferencesModel>
    implements $PreferencesModelCopyWith<$Res> {
  _$PreferencesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? notifications = freezed,
    Object? privacy = freezed,
  }) {
    return _then(_value.copyWith(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as NotificationsModel?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as PrivacyModel?,
    ) as $Val);
  }

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationsModelCopyWith<$Res>? get notifications {
    if (_value.notifications == null) {
      return null;
    }

    return $NotificationsModelCopyWith<$Res>(_value.notifications!, (value) {
      return _then(_value.copyWith(notifications: value) as $Val);
    });
  }

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrivacyModelCopyWith<$Res>? get privacy {
    if (_value.privacy == null) {
      return null;
    }

    return $PrivacyModelCopyWith<$Res>(_value.privacy!, (value) {
      return _then(_value.copyWith(privacy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreferencesModelImplCopyWith<$Res>
    implements $PreferencesModelCopyWith<$Res> {
  factory _$$PreferencesModelImplCopyWith(_$PreferencesModelImpl value,
          $Res Function(_$PreferencesModelImpl) then) =
      __$$PreferencesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? language,
      NotificationsModel? notifications,
      PrivacyModel? privacy});

  @override
  $NotificationsModelCopyWith<$Res>? get notifications;
  @override
  $PrivacyModelCopyWith<$Res>? get privacy;
}

/// @nodoc
class __$$PreferencesModelImplCopyWithImpl<$Res>
    extends _$PreferencesModelCopyWithImpl<$Res, _$PreferencesModelImpl>
    implements _$$PreferencesModelImplCopyWith<$Res> {
  __$$PreferencesModelImplCopyWithImpl(_$PreferencesModelImpl _value,
      $Res Function(_$PreferencesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? notifications = freezed,
    Object? privacy = freezed,
  }) {
    return _then(_$PreferencesModelImpl(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as NotificationsModel?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as PrivacyModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferencesModelImpl extends _PreferencesModel {
  _$PreferencesModelImpl({this.language, this.notifications, this.privacy})
      : super._();

  factory _$PreferencesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferencesModelImplFromJson(json);

  @override
  final String? language;
  @override
  final NotificationsModel? notifications;
  @override
  final PrivacyModel? privacy;

  @override
  String toString() {
    return 'PreferencesModel(language: $language, notifications: $notifications, privacy: $privacy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesModelImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.privacy, privacy) || other.privacy == privacy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, language, notifications, privacy);

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesModelImplCopyWith<_$PreferencesModelImpl> get copyWith =>
      __$$PreferencesModelImplCopyWithImpl<_$PreferencesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferencesModelImplToJson(
      this,
    );
  }
}

abstract class _PreferencesModel extends PreferencesModel {
  factory _PreferencesModel(
      {final String? language,
      final NotificationsModel? notifications,
      final PrivacyModel? privacy}) = _$PreferencesModelImpl;
  _PreferencesModel._() : super._();

  factory _PreferencesModel.fromJson(Map<String, dynamic> json) =
      _$PreferencesModelImpl.fromJson;

  @override
  String? get language;
  @override
  NotificationsModel? get notifications;
  @override
  PrivacyModel? get privacy;

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferencesModelImplCopyWith<_$PreferencesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationsModel _$NotificationsModelFromJson(Map<String, dynamic> json) {
  return _NotificationsModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationsModel {
  bool? get email => throw _privateConstructorUsedError;
  bool? get push => throw _privateConstructorUsedError;
  bool? get sms => throw _privateConstructorUsedError;

  /// Serializes this NotificationsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsModelCopyWith<NotificationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsModelCopyWith<$Res> {
  factory $NotificationsModelCopyWith(
          NotificationsModel value, $Res Function(NotificationsModel) then) =
      _$NotificationsModelCopyWithImpl<$Res, NotificationsModel>;
  @useResult
  $Res call({bool? email, bool? push, bool? sms});
}

/// @nodoc
class _$NotificationsModelCopyWithImpl<$Res, $Val extends NotificationsModel>
    implements $NotificationsModelCopyWith<$Res> {
  _$NotificationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? push = freezed,
    Object? sms = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as bool?,
      push: freezed == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as bool?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationsModelImplCopyWith<$Res>
    implements $NotificationsModelCopyWith<$Res> {
  factory _$$NotificationsModelImplCopyWith(_$NotificationsModelImpl value,
          $Res Function(_$NotificationsModelImpl) then) =
      __$$NotificationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? email, bool? push, bool? sms});
}

/// @nodoc
class __$$NotificationsModelImplCopyWithImpl<$Res>
    extends _$NotificationsModelCopyWithImpl<$Res, _$NotificationsModelImpl>
    implements _$$NotificationsModelImplCopyWith<$Res> {
  __$$NotificationsModelImplCopyWithImpl(_$NotificationsModelImpl _value,
      $Res Function(_$NotificationsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? push = freezed,
    Object? sms = freezed,
  }) {
    return _then(_$NotificationsModelImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as bool?,
      push: freezed == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as bool?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationsModelImpl extends _NotificationsModel {
  _$NotificationsModelImpl({this.email, this.push, this.sms}) : super._();

  factory _$NotificationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationsModelImplFromJson(json);

  @override
  final bool? email;
  @override
  final bool? push;
  @override
  final bool? sms;

  @override
  String toString() {
    return 'NotificationsModel(email: $email, push: $push, sms: $sms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.push, push) || other.push == push) &&
            (identical(other.sms, sms) || other.sms == sms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, push, sms);

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsModelImplCopyWith<_$NotificationsModelImpl> get copyWith =>
      __$$NotificationsModelImplCopyWithImpl<_$NotificationsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationsModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationsModel extends NotificationsModel {
  factory _NotificationsModel(
      {final bool? email,
      final bool? push,
      final bool? sms}) = _$NotificationsModelImpl;
  _NotificationsModel._() : super._();

  factory _NotificationsModel.fromJson(Map<String, dynamic> json) =
      _$NotificationsModelImpl.fromJson;

  @override
  bool? get email;
  @override
  bool? get push;
  @override
  bool? get sms;

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsModelImplCopyWith<_$NotificationsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrivacyModel _$PrivacyModelFromJson(Map<String, dynamic> json) {
  return _PrivacyModel.fromJson(json);
}

/// @nodoc
mixin _$PrivacyModel {
  String? get profileVisibility => throw _privateConstructorUsedError;
  bool? get showEmail => throw _privateConstructorUsedError;
  bool? get showPhone => throw _privateConstructorUsedError;

  /// Serializes this PrivacyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivacyModelCopyWith<PrivacyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacyModelCopyWith<$Res> {
  factory $PrivacyModelCopyWith(
          PrivacyModel value, $Res Function(PrivacyModel) then) =
      _$PrivacyModelCopyWithImpl<$Res, PrivacyModel>;
  @useResult
  $Res call({String? profileVisibility, bool? showEmail, bool? showPhone});
}

/// @nodoc
class _$PrivacyModelCopyWithImpl<$Res, $Val extends PrivacyModel>
    implements $PrivacyModelCopyWith<$Res> {
  _$PrivacyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileVisibility = freezed,
    Object? showEmail = freezed,
    Object? showPhone = freezed,
  }) {
    return _then(_value.copyWith(
      profileVisibility: freezed == profileVisibility
          ? _value.profileVisibility
          : profileVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      showEmail: freezed == showEmail
          ? _value.showEmail
          : showEmail // ignore: cast_nullable_to_non_nullable
              as bool?,
      showPhone: freezed == showPhone
          ? _value.showPhone
          : showPhone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivacyModelImplCopyWith<$Res>
    implements $PrivacyModelCopyWith<$Res> {
  factory _$$PrivacyModelImplCopyWith(
          _$PrivacyModelImpl value, $Res Function(_$PrivacyModelImpl) then) =
      __$$PrivacyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? profileVisibility, bool? showEmail, bool? showPhone});
}

/// @nodoc
class __$$PrivacyModelImplCopyWithImpl<$Res>
    extends _$PrivacyModelCopyWithImpl<$Res, _$PrivacyModelImpl>
    implements _$$PrivacyModelImplCopyWith<$Res> {
  __$$PrivacyModelImplCopyWithImpl(
      _$PrivacyModelImpl _value, $Res Function(_$PrivacyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileVisibility = freezed,
    Object? showEmail = freezed,
    Object? showPhone = freezed,
  }) {
    return _then(_$PrivacyModelImpl(
      profileVisibility: freezed == profileVisibility
          ? _value.profileVisibility
          : profileVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      showEmail: freezed == showEmail
          ? _value.showEmail
          : showEmail // ignore: cast_nullable_to_non_nullable
              as bool?,
      showPhone: freezed == showPhone
          ? _value.showPhone
          : showPhone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivacyModelImpl extends _PrivacyModel {
  _$PrivacyModelImpl({this.profileVisibility, this.showEmail, this.showPhone})
      : super._();

  factory _$PrivacyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivacyModelImplFromJson(json);

  @override
  final String? profileVisibility;
  @override
  final bool? showEmail;
  @override
  final bool? showPhone;

  @override
  String toString() {
    return 'PrivacyModel(profileVisibility: $profileVisibility, showEmail: $showEmail, showPhone: $showPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacyModelImpl &&
            (identical(other.profileVisibility, profileVisibility) ||
                other.profileVisibility == profileVisibility) &&
            (identical(other.showEmail, showEmail) ||
                other.showEmail == showEmail) &&
            (identical(other.showPhone, showPhone) ||
                other.showPhone == showPhone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, profileVisibility, showEmail, showPhone);

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacyModelImplCopyWith<_$PrivacyModelImpl> get copyWith =>
      __$$PrivacyModelImplCopyWithImpl<_$PrivacyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivacyModelImplToJson(
      this,
    );
  }
}

abstract class _PrivacyModel extends PrivacyModel {
  factory _PrivacyModel(
      {final String? profileVisibility,
      final bool? showEmail,
      final bool? showPhone}) = _$PrivacyModelImpl;
  _PrivacyModel._() : super._();

  factory _PrivacyModel.fromJson(Map<String, dynamic> json) =
      _$PrivacyModelImpl.fromJson;

  @override
  String? get profileVisibility;
  @override
  bool? get showEmail;
  @override
  bool? get showPhone;

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivacyModelImplCopyWith<_$PrivacyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
