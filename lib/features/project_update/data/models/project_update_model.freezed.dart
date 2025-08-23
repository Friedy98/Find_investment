// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectUpdateModel _$ProjectUpdateModelFromJson(Map<String, dynamic> json) {
  return _ProjectUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectUpdateModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', defaultValue: 'general')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'attachments', defaultValue: [])
  List<AttachmentModel> get attachments => throw _privateConstructorUsedError;
  @JsonKey(name: 'publishedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get publishedBy => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPublic', defaultValue: true)
  bool get isPublic => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProjectUpdateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectUpdateModelCopyWith<ProjectUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectUpdateModelCopyWith<$Res> {
  factory $ProjectUpdateModelCopyWith(
          ProjectUpdateModel value, $Res Function(ProjectUpdateModel) then) =
      _$ProjectUpdateModelCopyWithImpl<$Res, ProjectUpdateModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      String title,
      String content,
      @JsonKey(name: 'type', defaultValue: 'general') String type,
      @JsonKey(name: 'attachments', defaultValue: [])
      List<AttachmentModel> attachments,
      @JsonKey(
          name: 'publishedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic publishedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? publishedAt,
      @JsonKey(name: 'isPublic', defaultValue: true) bool isPublic,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});
}

/// @nodoc
class _$ProjectUpdateModelCopyWithImpl<$Res, $Val extends ProjectUpdateModel>
    implements $ProjectUpdateModelCopyWith<$Res> {
  _$ProjectUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = freezed,
    Object? title = null,
    Object? content = null,
    Object? type = null,
    Object? attachments = null,
    Object? publishedBy = freezed,
    Object? publishedAt = freezed,
    Object? isPublic = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>,
      publishedBy: freezed == publishedBy
          ? _value.publishedBy
          : publishedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
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
}

/// @nodoc
abstract class _$$ProjectUpdateModelImplCopyWith<$Res>
    implements $ProjectUpdateModelCopyWith<$Res> {
  factory _$$ProjectUpdateModelImplCopyWith(_$ProjectUpdateModelImpl value,
          $Res Function(_$ProjectUpdateModelImpl) then) =
      __$$ProjectUpdateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      String title,
      String content,
      @JsonKey(name: 'type', defaultValue: 'general') String type,
      @JsonKey(name: 'attachments', defaultValue: [])
      List<AttachmentModel> attachments,
      @JsonKey(
          name: 'publishedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic publishedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? publishedAt,
      @JsonKey(name: 'isPublic', defaultValue: true) bool isPublic,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});
}

/// @nodoc
class __$$ProjectUpdateModelImplCopyWithImpl<$Res>
    extends _$ProjectUpdateModelCopyWithImpl<$Res, _$ProjectUpdateModelImpl>
    implements _$$ProjectUpdateModelImplCopyWith<$Res> {
  __$$ProjectUpdateModelImplCopyWithImpl(_$ProjectUpdateModelImpl _value,
      $Res Function(_$ProjectUpdateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = freezed,
    Object? title = null,
    Object? content = null,
    Object? type = null,
    Object? attachments = null,
    Object? publishedBy = freezed,
    Object? publishedAt = freezed,
    Object? isPublic = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProjectUpdateModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>,
      publishedBy: freezed == publishedBy
          ? _value.publishedBy
          : publishedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$ProjectUpdateModelImpl extends _ProjectUpdateModel {
  _$ProjectUpdateModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      required this.project,
      required this.title,
      required this.content,
      @JsonKey(name: 'type', defaultValue: 'general') required this.type,
      @JsonKey(name: 'attachments', defaultValue: [])
      required final List<AttachmentModel> attachments,
      @JsonKey(
          name: 'publishedBy', fromJson: _userFromJson, toJson: _userToJson)
      required this.publishedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.publishedAt,
      @JsonKey(name: 'isPublic', defaultValue: true) required this.isPublic,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt})
      : _attachments = attachments,
        super._();

  factory _$ProjectUpdateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectUpdateModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  final dynamic project;
  @override
  final String title;
  @override
  final String content;
  @override
  @JsonKey(name: 'type', defaultValue: 'general')
  final String type;
  final List<AttachmentModel> _attachments;
  @override
  @JsonKey(name: 'attachments', defaultValue: [])
  List<AttachmentModel> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  @JsonKey(name: 'publishedBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic publishedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? publishedAt;
  @override
  @JsonKey(name: 'isPublic', defaultValue: true)
  final bool isPublic;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProjectUpdateModel(id: $id, project: $project, title: $title, content: $content, type: $type, attachments: $attachments, publishedBy: $publishedBy, publishedAt: $publishedAt, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectUpdateModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.project, project) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality()
                .equals(other.publishedBy, publishedBy) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
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
      title,
      content,
      type,
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(publishedBy),
      publishedAt,
      isPublic,
      createdAt,
      updatedAt);

  /// Create a copy of ProjectUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectUpdateModelImplCopyWith<_$ProjectUpdateModelImpl> get copyWith =>
      __$$ProjectUpdateModelImplCopyWithImpl<_$ProjectUpdateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectUpdateModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectUpdateModel extends ProjectUpdateModel {
  factory _ProjectUpdateModel(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      required final dynamic project,
      required final String title,
      required final String content,
      @JsonKey(name: 'type', defaultValue: 'general')
      required final String type,
      @JsonKey(name: 'attachments', defaultValue: [])
      required final List<AttachmentModel> attachments,
      @JsonKey(
          name: 'publishedBy', fromJson: _userFromJson, toJson: _userToJson)
      required final dynamic publishedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? publishedAt,
      @JsonKey(name: 'isPublic', defaultValue: true)
      required final bool isPublic,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt}) = _$ProjectUpdateModelImpl;
  _ProjectUpdateModel._() : super._();

  factory _ProjectUpdateModel.fromJson(Map<String, dynamic> json) =
      _$ProjectUpdateModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(name: 'type', defaultValue: 'general')
  String get type;
  @override
  @JsonKey(name: 'attachments', defaultValue: [])
  List<AttachmentModel> get attachments;
  @override
  @JsonKey(name: 'publishedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get publishedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get publishedAt;
  @override
  @JsonKey(name: 'isPublic', defaultValue: true)
  bool get isPublic;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;

  /// Create a copy of ProjectUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectUpdateModelImplCopyWith<_$ProjectUpdateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttachmentModel _$AttachmentModelFromJson(Map<String, dynamic> json) {
  return _AttachmentModel.fromJson(json);
}

/// @nodoc
mixin _$AttachmentModel {
  String? get url => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get cloudinaryPublicId => throw _privateConstructorUsedError;

  /// Serializes this AttachmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttachmentModelCopyWith<AttachmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentModelCopyWith<$Res> {
  factory $AttachmentModelCopyWith(
          AttachmentModel value, $Res Function(AttachmentModel) then) =
      _$AttachmentModelCopyWithImpl<$Res, AttachmentModel>;
  @useResult
  $Res call(
      {String? url,
      String? type,
      String? description,
      String? cloudinaryPublicId});
}

/// @nodoc
class _$AttachmentModelCopyWithImpl<$Res, $Val extends AttachmentModel>
    implements $AttachmentModelCopyWith<$Res> {
  _$AttachmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? cloudinaryPublicId = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cloudinaryPublicId: freezed == cloudinaryPublicId
          ? _value.cloudinaryPublicId
          : cloudinaryPublicId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentModelImplCopyWith<$Res>
    implements $AttachmentModelCopyWith<$Res> {
  factory _$$AttachmentModelImplCopyWith(_$AttachmentModelImpl value,
          $Res Function(_$AttachmentModelImpl) then) =
      __$$AttachmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url,
      String? type,
      String? description,
      String? cloudinaryPublicId});
}

/// @nodoc
class __$$AttachmentModelImplCopyWithImpl<$Res>
    extends _$AttachmentModelCopyWithImpl<$Res, _$AttachmentModelImpl>
    implements _$$AttachmentModelImplCopyWith<$Res> {
  __$$AttachmentModelImplCopyWithImpl(
      _$AttachmentModelImpl _value, $Res Function(_$AttachmentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? cloudinaryPublicId = freezed,
  }) {
    return _then(_$AttachmentModelImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cloudinaryPublicId: freezed == cloudinaryPublicId
          ? _value.cloudinaryPublicId
          : cloudinaryPublicId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentModelImpl implements _AttachmentModel {
  const _$AttachmentModelImpl(
      {this.url, this.type, this.description, this.cloudinaryPublicId});

  factory _$AttachmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentModelImplFromJson(json);

  @override
  final String? url;
  @override
  final String? type;
  @override
  final String? description;
  @override
  final String? cloudinaryPublicId;

  @override
  String toString() {
    return 'AttachmentModel(url: $url, type: $type, description: $description, cloudinaryPublicId: $cloudinaryPublicId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cloudinaryPublicId, cloudinaryPublicId) ||
                other.cloudinaryPublicId == cloudinaryPublicId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, type, description, cloudinaryPublicId);

  /// Create a copy of AttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentModelImplCopyWith<_$AttachmentModelImpl> get copyWith =>
      __$$AttachmentModelImplCopyWithImpl<_$AttachmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentModelImplToJson(
      this,
    );
  }
}

abstract class _AttachmentModel implements AttachmentModel {
  const factory _AttachmentModel(
      {final String? url,
      final String? type,
      final String? description,
      final String? cloudinaryPublicId}) = _$AttachmentModelImpl;

  factory _AttachmentModel.fromJson(Map<String, dynamic> json) =
      _$AttachmentModelImpl.fromJson;

  @override
  String? get url;
  @override
  String? get type;
  @override
  String? get description;
  @override
  String? get cloudinaryPublicId;

  /// Create a copy of AttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttachmentModelImplCopyWith<_$AttachmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
