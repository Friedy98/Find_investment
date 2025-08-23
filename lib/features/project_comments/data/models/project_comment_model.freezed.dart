// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectCommentModel _$ProjectCommentModelFromJson(Map<String, dynamic> json) {
  return _ProjectCommentModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectCommentModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project => throw _privateConstructorUsedError;
  @JsonKey(name: 'author', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
  dynamic get parent => throw _privateConstructorUsedError;
  @JsonKey(name: 'isModerated', defaultValue: false)
  bool get isModerated => throw _privateConstructorUsedError;
  @JsonKey(name: 'isApproved', defaultValue: true)
  bool get isApproved => throw _privateConstructorUsedError;
  @JsonKey(name: 'moderatedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get moderatedBy => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get moderatedAt => throw _privateConstructorUsedError;
  String? get moderationReason => throw _privateConstructorUsedError;
  MetricsModel get metrics => throw _privateConstructorUsedError;
  @JsonKey(name: 'flags', defaultValue: [])
  List<FlagModel> get flags => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProjectCommentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectCommentModelCopyWith<ProjectCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCommentModelCopyWith<$Res> {
  factory $ProjectCommentModelCopyWith(
          ProjectCommentModel value, $Res Function(ProjectCommentModel) then) =
      _$ProjectCommentModelCopyWithImpl<$Res, ProjectCommentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      @JsonKey(name: 'author', fromJson: _userFromJson, toJson: _userToJson)
      dynamic author,
      String content,
      @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
      dynamic parent,
      @JsonKey(name: 'isModerated', defaultValue: false) bool isModerated,
      @JsonKey(name: 'isApproved', defaultValue: true) bool isApproved,
      @JsonKey(
          name: 'moderatedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic moderatedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? moderatedAt,
      String? moderationReason,
      MetricsModel metrics,
      @JsonKey(name: 'flags', defaultValue: []) List<FlagModel> flags,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});

  $MetricsModelCopyWith<$Res> get metrics;
}

/// @nodoc
class _$ProjectCommentModelCopyWithImpl<$Res, $Val extends ProjectCommentModel>
    implements $ProjectCommentModelCopyWith<$Res> {
  _$ProjectCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = freezed,
    Object? author = freezed,
    Object? content = null,
    Object? parent = freezed,
    Object? isModerated = null,
    Object? isApproved = null,
    Object? moderatedBy = freezed,
    Object? moderatedAt = freezed,
    Object? moderationReason = freezed,
    Object? metrics = null,
    Object? flags = null,
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
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as dynamic,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isModerated: null == isModerated
          ? _value.isModerated
          : isModerated // ignore: cast_nullable_to_non_nullable
              as bool,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      moderatedBy: freezed == moderatedBy
          ? _value.moderatedBy
          : moderatedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      moderatedAt: freezed == moderatedAt
          ? _value.moderatedAt
          : moderatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      moderationReason: freezed == moderationReason
          ? _value.moderationReason
          : moderationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as MetricsModel,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<FlagModel>,
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

  /// Create a copy of ProjectCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetricsModelCopyWith<$Res> get metrics {
    return $MetricsModelCopyWith<$Res>(_value.metrics, (value) {
      return _then(_value.copyWith(metrics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectCommentModelImplCopyWith<$Res>
    implements $ProjectCommentModelCopyWith<$Res> {
  factory _$$ProjectCommentModelImplCopyWith(_$ProjectCommentModelImpl value,
          $Res Function(_$ProjectCommentModelImpl) then) =
      __$$ProjectCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      @JsonKey(name: 'author', fromJson: _userFromJson, toJson: _userToJson)
      dynamic author,
      String content,
      @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
      dynamic parent,
      @JsonKey(name: 'isModerated', defaultValue: false) bool isModerated,
      @JsonKey(name: 'isApproved', defaultValue: true) bool isApproved,
      @JsonKey(
          name: 'moderatedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic moderatedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? moderatedAt,
      String? moderationReason,
      MetricsModel metrics,
      @JsonKey(name: 'flags', defaultValue: []) List<FlagModel> flags,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});

  @override
  $MetricsModelCopyWith<$Res> get metrics;
}

/// @nodoc
class __$$ProjectCommentModelImplCopyWithImpl<$Res>
    extends _$ProjectCommentModelCopyWithImpl<$Res, _$ProjectCommentModelImpl>
    implements _$$ProjectCommentModelImplCopyWith<$Res> {
  __$$ProjectCommentModelImplCopyWithImpl(_$ProjectCommentModelImpl _value,
      $Res Function(_$ProjectCommentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = freezed,
    Object? author = freezed,
    Object? content = null,
    Object? parent = freezed,
    Object? isModerated = null,
    Object? isApproved = null,
    Object? moderatedBy = freezed,
    Object? moderatedAt = freezed,
    Object? moderationReason = freezed,
    Object? metrics = null,
    Object? flags = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProjectCommentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as dynamic,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as dynamic,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isModerated: null == isModerated
          ? _value.isModerated
          : isModerated // ignore: cast_nullable_to_non_nullable
              as bool,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      moderatedBy: freezed == moderatedBy
          ? _value.moderatedBy
          : moderatedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      moderatedAt: freezed == moderatedAt
          ? _value.moderatedAt
          : moderatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      moderationReason: freezed == moderationReason
          ? _value.moderationReason
          : moderationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as MetricsModel,
      flags: null == flags
          ? _value._flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<FlagModel>,
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
class _$ProjectCommentModelImpl extends _ProjectCommentModel {
  _$ProjectCommentModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      required this.project,
      @JsonKey(name: 'author', fromJson: _userFromJson, toJson: _userToJson)
      required this.author,
      required this.content,
      @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
      this.parent,
      @JsonKey(name: 'isModerated', defaultValue: false)
      required this.isModerated,
      @JsonKey(name: 'isApproved', defaultValue: true) required this.isApproved,
      @JsonKey(
          name: 'moderatedBy', fromJson: _userFromJson, toJson: _userToJson)
      this.moderatedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.moderatedAt,
      this.moderationReason,
      required this.metrics,
      @JsonKey(name: 'flags', defaultValue: [])
      required final List<FlagModel> flags,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt})
      : _flags = flags,
        super._();

  factory _$ProjectCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectCommentModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  final dynamic project;
  @override
  @JsonKey(name: 'author', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic author;
  @override
  final String content;
  @override
  @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
  final dynamic parent;
  @override
  @JsonKey(name: 'isModerated', defaultValue: false)
  final bool isModerated;
  @override
  @JsonKey(name: 'isApproved', defaultValue: true)
  final bool isApproved;
  @override
  @JsonKey(name: 'moderatedBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic moderatedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? moderatedAt;
  @override
  final String? moderationReason;
  @override
  final MetricsModel metrics;
  final List<FlagModel> _flags;
  @override
  @JsonKey(name: 'flags', defaultValue: [])
  List<FlagModel> get flags {
    if (_flags is EqualUnmodifiableListView) return _flags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flags);
  }

  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProjectCommentModel(id: $id, project: $project, author: $author, content: $content, parent: $parent, isModerated: $isModerated, isApproved: $isApproved, moderatedBy: $moderatedBy, moderatedAt: $moderatedAt, moderationReason: $moderationReason, metrics: $metrics, flags: $flags, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectCommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.project, project) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other.parent, parent) &&
            (identical(other.isModerated, isModerated) ||
                other.isModerated == isModerated) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            const DeepCollectionEquality()
                .equals(other.moderatedBy, moderatedBy) &&
            (identical(other.moderatedAt, moderatedAt) ||
                other.moderatedAt == moderatedAt) &&
            (identical(other.moderationReason, moderationReason) ||
                other.moderationReason == moderationReason) &&
            (identical(other.metrics, metrics) || other.metrics == metrics) &&
            const DeepCollectionEquality().equals(other._flags, _flags) &&
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
      const DeepCollectionEquality().hash(author),
      content,
      const DeepCollectionEquality().hash(parent),
      isModerated,
      isApproved,
      const DeepCollectionEquality().hash(moderatedBy),
      moderatedAt,
      moderationReason,
      metrics,
      const DeepCollectionEquality().hash(_flags),
      createdAt,
      updatedAt);

  /// Create a copy of ProjectCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectCommentModelImplCopyWith<_$ProjectCommentModelImpl> get copyWith =>
      __$$ProjectCommentModelImplCopyWithImpl<_$ProjectCommentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectCommentModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectCommentModel extends ProjectCommentModel {
  factory _ProjectCommentModel(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      required final dynamic project,
      @JsonKey(name: 'author', fromJson: _userFromJson, toJson: _userToJson)
      required final dynamic author,
      required final String content,
      @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
      final dynamic parent,
      @JsonKey(name: 'isModerated', defaultValue: false)
      required final bool isModerated,
      @JsonKey(name: 'isApproved', defaultValue: true)
      required final bool isApproved,
      @JsonKey(
          name: 'moderatedBy', fromJson: _userFromJson, toJson: _userToJson)
      final dynamic moderatedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? moderatedAt,
      final String? moderationReason,
      required final MetricsModel metrics,
      @JsonKey(name: 'flags', defaultValue: [])
      required final List<FlagModel> flags,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt}) = _$ProjectCommentModelImpl;
  _ProjectCommentModel._() : super._();

  factory _ProjectCommentModel.fromJson(Map<String, dynamic> json) =
      _$ProjectCommentModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project;
  @override
  @JsonKey(name: 'author', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get author;
  @override
  String get content;
  @override
  @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
  dynamic get parent;
  @override
  @JsonKey(name: 'isModerated', defaultValue: false)
  bool get isModerated;
  @override
  @JsonKey(name: 'isApproved', defaultValue: true)
  bool get isApproved;
  @override
  @JsonKey(name: 'moderatedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get moderatedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get moderatedAt;
  @override
  String? get moderationReason;
  @override
  MetricsModel get metrics;
  @override
  @JsonKey(name: 'flags', defaultValue: [])
  List<FlagModel> get flags;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;

  /// Create a copy of ProjectCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectCommentModelImplCopyWith<_$ProjectCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlagModel _$FlagModelFromJson(Map<String, dynamic> json) {
  return _FlagModel.fromJson(json);
}

/// @nodoc
mixin _$FlagModel {
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get user => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get flaggedAt => throw _privateConstructorUsedError;

  /// Serializes this FlagModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlagModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlagModelCopyWith<FlagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagModelCopyWith<$Res> {
  factory $FlagModelCopyWith(FlagModel value, $Res Function(FlagModel) then) =
      _$FlagModelCopyWithImpl<$Res, FlagModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      dynamic user,
      String reason,
      String? description,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? flaggedAt});
}

/// @nodoc
class _$FlagModelCopyWithImpl<$Res, $Val extends FlagModel>
    implements $FlagModelCopyWith<$Res> {
  _$FlagModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlagModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? reason = null,
    Object? description = freezed,
    Object? flaggedAt = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      flaggedAt: freezed == flaggedAt
          ? _value.flaggedAt
          : flaggedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlagModelImplCopyWith<$Res>
    implements $FlagModelCopyWith<$Res> {
  factory _$$FlagModelImplCopyWith(
          _$FlagModelImpl value, $Res Function(_$FlagModelImpl) then) =
      __$$FlagModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      dynamic user,
      String reason,
      String? description,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? flaggedAt});
}

/// @nodoc
class __$$FlagModelImplCopyWithImpl<$Res>
    extends _$FlagModelCopyWithImpl<$Res, _$FlagModelImpl>
    implements _$$FlagModelImplCopyWith<$Res> {
  __$$FlagModelImplCopyWithImpl(
      _$FlagModelImpl _value, $Res Function(_$FlagModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlagModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? reason = null,
    Object? description = freezed,
    Object? flaggedAt = freezed,
  }) {
    return _then(_$FlagModelImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      flaggedAt: freezed == flaggedAt
          ? _value.flaggedAt
          : flaggedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlagModelImpl implements _FlagModel {
  const _$FlagModelImpl(
      {@JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      required this.user,
      required this.reason,
      this.description,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.flaggedAt});

  factory _$FlagModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlagModelImplFromJson(json);

  @override
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic user;
  @override
  final String reason;
  @override
  final String? description;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? flaggedAt;

  @override
  String toString() {
    return 'FlagModel(user: $user, reason: $reason, description: $description, flaggedAt: $flaggedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlagModelImpl &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.flaggedAt, flaggedAt) ||
                other.flaggedAt == flaggedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      reason,
      description,
      flaggedAt);

  /// Create a copy of FlagModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlagModelImplCopyWith<_$FlagModelImpl> get copyWith =>
      __$$FlagModelImplCopyWithImpl<_$FlagModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlagModelImplToJson(
      this,
    );
  }
}

abstract class _FlagModel implements FlagModel {
  const factory _FlagModel(
      {@JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      required final dynamic user,
      required final String reason,
      final String? description,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? flaggedAt}) = _$FlagModelImpl;

  factory _FlagModel.fromJson(Map<String, dynamic> json) =
      _$FlagModelImpl.fromJson;

  @override
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get user;
  @override
  String get reason;
  @override
  String? get description;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get flaggedAt;

  /// Create a copy of FlagModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlagModelImplCopyWith<_$FlagModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetricsModel _$MetricsModelFromJson(Map<String, dynamic> json) {
  return _MetricsModel.fromJson(json);
}

/// @nodoc
mixin _$MetricsModel {
  double get likes => throw _privateConstructorUsedError;
  double get replies => throw _privateConstructorUsedError;

  /// Serializes this MetricsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetricsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetricsModelCopyWith<MetricsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricsModelCopyWith<$Res> {
  factory $MetricsModelCopyWith(
          MetricsModel value, $Res Function(MetricsModel) then) =
      _$MetricsModelCopyWithImpl<$Res, MetricsModel>;
  @useResult
  $Res call({double likes, double replies});
}

/// @nodoc
class _$MetricsModelCopyWithImpl<$Res, $Val extends MetricsModel>
    implements $MetricsModelCopyWith<$Res> {
  _$MetricsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetricsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = null,
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as double,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetricsModelImplCopyWith<$Res>
    implements $MetricsModelCopyWith<$Res> {
  factory _$$MetricsModelImplCopyWith(
          _$MetricsModelImpl value, $Res Function(_$MetricsModelImpl) then) =
      __$$MetricsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double likes, double replies});
}

/// @nodoc
class __$$MetricsModelImplCopyWithImpl<$Res>
    extends _$MetricsModelCopyWithImpl<$Res, _$MetricsModelImpl>
    implements _$$MetricsModelImplCopyWith<$Res> {
  __$$MetricsModelImplCopyWithImpl(
      _$MetricsModelImpl _value, $Res Function(_$MetricsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = null,
    Object? replies = null,
  }) {
    return _then(_$MetricsModelImpl(
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as double,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetricsModelImpl implements _MetricsModel {
  const _$MetricsModelImpl({required this.likes, required this.replies});

  factory _$MetricsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetricsModelImplFromJson(json);

  @override
  final double likes;
  @override
  final double replies;

  @override
  String toString() {
    return 'MetricsModel(likes: $likes, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetricsModelImpl &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.replies, replies) || other.replies == replies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, likes, replies);

  /// Create a copy of MetricsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetricsModelImplCopyWith<_$MetricsModelImpl> get copyWith =>
      __$$MetricsModelImplCopyWithImpl<_$MetricsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetricsModelImplToJson(
      this,
    );
  }
}

abstract class _MetricsModel implements MetricsModel {
  const factory _MetricsModel(
      {required final double likes,
      required final double replies}) = _$MetricsModelImpl;

  factory _MetricsModel.fromJson(Map<String, dynamic> json) =
      _$MetricsModelImpl.fromJson;

  @override
  double get likes;
  @override
  double get replies;

  /// Create a copy of MetricsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetricsModelImplCopyWith<_$MetricsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
