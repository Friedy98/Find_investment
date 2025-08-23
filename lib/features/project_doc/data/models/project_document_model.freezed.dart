// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectDocumentModel _$ProjectDocumentModelFromJson(Map<String, dynamic> json) {
  return _ProjectDocumentModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectDocumentModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project =>
      throw _privateConstructorUsedError; // null, String, or ProjectModel
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'uploadedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get uploadedBy =>
      throw _privateConstructorUsedError; // null, String, or UserModel
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get uploadedAt => throw _privateConstructorUsedError;
  String get visibility => throw _privateConstructorUsedError;
  bool get isApproved => throw _privateConstructorUsedError;
  bool get isRejected => throw _privateConstructorUsedError;
  @JsonKey(name: 'approvedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get approvedBy =>
      throw _privateConstructorUsedError; // null, String, or UserModel
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rejectedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get rejectedBy =>
      throw _privateConstructorUsedError; // null, String, or UserModel
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get rejectedAt => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'previousVersion',
      fromJson: _previousVersionFromJson,
      toJson: _previousVersionToJson)
  dynamic get previousVersion =>
      throw _privateConstructorUsedError; // null, String, or ProjectDocumentModel
  int get downloadCount => throw _privateConstructorUsedError;
  DocumentMetadataModel? get metadata => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalDownloads', fromJson: _intFromJson)
  int? get totalDownloads => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLatestVersion', fromJson: _boolFromJson)
  bool? get isLatestVersion => throw _privateConstructorUsedError;

  /// Serializes this ProjectDocumentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectDocumentModelCopyWith<ProjectDocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDocumentModelCopyWith<$Res> {
  factory $ProjectDocumentModelCopyWith(ProjectDocumentModel value,
          $Res Function(ProjectDocumentModel) then) =
      _$ProjectDocumentModelCopyWithImpl<$Res, ProjectDocumentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      String name,
      String? description,
      String url,
      String type,
      String? category,
      int? size,
      String? rejectionReason,
      String? mimeType,
      @JsonKey(name: 'uploadedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic uploadedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? uploadedAt,
      String visibility,
      bool isApproved,
      bool isRejected,
      @JsonKey(name: 'approvedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic approvedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? approvedAt,
      @JsonKey(name: 'rejectedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic rejectedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? rejectedAt,
      int version,
      @JsonKey(
          name: 'previousVersion',
          fromJson: _previousVersionFromJson,
          toJson: _previousVersionToJson)
      dynamic previousVersion,
      int downloadCount,
      DocumentMetadataModel? metadata,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt,
      @JsonKey(name: 'totalDownloads', fromJson: _intFromJson)
      int? totalDownloads,
      @JsonKey(name: 'isLatestVersion', fromJson: _boolFromJson)
      bool? isLatestVersion});

  $DocumentMetadataModelCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$ProjectDocumentModelCopyWithImpl<$Res,
        $Val extends ProjectDocumentModel>
    implements $ProjectDocumentModelCopyWith<$Res> {
  _$ProjectDocumentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? project = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? url = null,
    Object? type = null,
    Object? category = freezed,
    Object? size = freezed,
    Object? rejectionReason = freezed,
    Object? mimeType = freezed,
    Object? uploadedBy = freezed,
    Object? uploadedAt = freezed,
    Object? visibility = null,
    Object? isApproved = null,
    Object? isRejected = null,
    Object? approvedBy = freezed,
    Object? approvedAt = freezed,
    Object? rejectedBy = freezed,
    Object? rejectedAt = freezed,
    Object? version = null,
    Object? previousVersion = freezed,
    Object? downloadCount = null,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalDownloads = freezed,
    Object? isLatestVersion = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedBy: freezed == uploadedBy
          ? _value.uploadedBy
          : uploadedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejected: null == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedBy: freezed == rejectedBy
          ? _value.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      previousVersion: freezed == previousVersion
          ? _value.previousVersion
          : previousVersion // ignore: cast_nullable_to_non_nullable
              as dynamic,
      downloadCount: null == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as DocumentMetadataModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalDownloads: freezed == totalDownloads
          ? _value.totalDownloads
          : totalDownloads // ignore: cast_nullable_to_non_nullable
              as int?,
      isLatestVersion: freezed == isLatestVersion
          ? _value.isLatestVersion
          : isLatestVersion // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of ProjectDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentMetadataModelCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $DocumentMetadataModelCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectDocumentModelImplCopyWith<$Res>
    implements $ProjectDocumentModelCopyWith<$Res> {
  factory _$$ProjectDocumentModelImplCopyWith(_$ProjectDocumentModelImpl value,
          $Res Function(_$ProjectDocumentModelImpl) then) =
      __$$ProjectDocumentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      String name,
      String? description,
      String url,
      String type,
      String? category,
      int? size,
      String? rejectionReason,
      String? mimeType,
      @JsonKey(name: 'uploadedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic uploadedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? uploadedAt,
      String visibility,
      bool isApproved,
      bool isRejected,
      @JsonKey(name: 'approvedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic approvedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? approvedAt,
      @JsonKey(name: 'rejectedBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic rejectedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? rejectedAt,
      int version,
      @JsonKey(
          name: 'previousVersion',
          fromJson: _previousVersionFromJson,
          toJson: _previousVersionToJson)
      dynamic previousVersion,
      int downloadCount,
      DocumentMetadataModel? metadata,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt,
      @JsonKey(name: 'totalDownloads', fromJson: _intFromJson)
      int? totalDownloads,
      @JsonKey(name: 'isLatestVersion', fromJson: _boolFromJson)
      bool? isLatestVersion});

  @override
  $DocumentMetadataModelCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$ProjectDocumentModelImplCopyWithImpl<$Res>
    extends _$ProjectDocumentModelCopyWithImpl<$Res, _$ProjectDocumentModelImpl>
    implements _$$ProjectDocumentModelImplCopyWith<$Res> {
  __$$ProjectDocumentModelImplCopyWithImpl(_$ProjectDocumentModelImpl _value,
      $Res Function(_$ProjectDocumentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? project = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? url = null,
    Object? type = null,
    Object? category = freezed,
    Object? size = freezed,
    Object? rejectionReason = freezed,
    Object? mimeType = freezed,
    Object? uploadedBy = freezed,
    Object? uploadedAt = freezed,
    Object? visibility = null,
    Object? isApproved = null,
    Object? isRejected = null,
    Object? approvedBy = freezed,
    Object? approvedAt = freezed,
    Object? rejectedBy = freezed,
    Object? rejectedAt = freezed,
    Object? version = null,
    Object? previousVersion = freezed,
    Object? downloadCount = null,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalDownloads = freezed,
    Object? isLatestVersion = freezed,
  }) {
    return _then(_$ProjectDocumentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedBy: freezed == uploadedBy
          ? _value.uploadedBy
          : uploadedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejected: null == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedBy: freezed == rejectedBy
          ? _value.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      previousVersion: freezed == previousVersion
          ? _value.previousVersion
          : previousVersion // ignore: cast_nullable_to_non_nullable
              as dynamic,
      downloadCount: null == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as DocumentMetadataModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalDownloads: freezed == totalDownloads
          ? _value.totalDownloads
          : totalDownloads // ignore: cast_nullable_to_non_nullable
              as int?,
      isLatestVersion: freezed == isLatestVersion
          ? _value.isLatestVersion
          : isLatestVersion // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectDocumentModelImpl extends _ProjectDocumentModel {
  _$ProjectDocumentModelImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      required this.project,
      required this.name,
      this.description,
      required this.url,
      required this.type,
      this.category,
      this.size,
      this.rejectionReason,
      this.mimeType,
      @JsonKey(name: 'uploadedBy', fromJson: _userFromJson, toJson: _userToJson)
      required this.uploadedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.uploadedAt,
      required this.visibility,
      required this.isApproved,
      required this.isRejected,
      @JsonKey(name: 'approvedBy', fromJson: _userFromJson, toJson: _userToJson)
      this.approvedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.approvedAt,
      @JsonKey(name: 'rejectedBy', fromJson: _userFromJson, toJson: _userToJson)
      this.rejectedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.rejectedAt,
      required this.version,
      @JsonKey(
          name: 'previousVersion',
          fromJson: _previousVersionFromJson,
          toJson: _previousVersionToJson)
      this.previousVersion,
      required this.downloadCount,
      this.metadata,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt,
      @JsonKey(name: 'totalDownloads', fromJson: _intFromJson)
      this.totalDownloads,
      @JsonKey(name: 'isLatestVersion', fromJson: _boolFromJson)
      this.isLatestVersion})
      : super._();

  factory _$ProjectDocumentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectDocumentModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  final dynamic project;
// null, String, or ProjectModel
  @override
  final String name;
  @override
  final String? description;
  @override
  final String url;
  @override
  final String type;
  @override
  final String? category;
  @override
  final int? size;
  @override
  final String? rejectionReason;
  @override
  final String? mimeType;
  @override
  @JsonKey(name: 'uploadedBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic uploadedBy;
// null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? uploadedAt;
  @override
  final String visibility;
  @override
  final bool isApproved;
  @override
  final bool isRejected;
  @override
  @JsonKey(name: 'approvedBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic approvedBy;
// null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? approvedAt;
  @override
  @JsonKey(name: 'rejectedBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic rejectedBy;
// null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? rejectedAt;
  @override
  final int version;
  @override
  @JsonKey(
      name: 'previousVersion',
      fromJson: _previousVersionFromJson,
      toJson: _previousVersionToJson)
  final dynamic previousVersion;
// null, String, or ProjectDocumentModel
  @override
  final int downloadCount;
  @override
  final DocumentMetadataModel? metadata;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'totalDownloads', fromJson: _intFromJson)
  final int? totalDownloads;
  @override
  @JsonKey(name: 'isLatestVersion', fromJson: _boolFromJson)
  final bool? isLatestVersion;

  @override
  String toString() {
    return 'ProjectDocumentModel(id: $id, project: $project, name: $name, description: $description, url: $url, type: $type, category: $category, size: $size, rejectionReason: $rejectionReason, mimeType: $mimeType, uploadedBy: $uploadedBy, uploadedAt: $uploadedAt, visibility: $visibility, isApproved: $isApproved, isRejected: $isRejected, approvedBy: $approvedBy, approvedAt: $approvedAt, rejectedBy: $rejectedBy, rejectedAt: $rejectedAt, version: $version, previousVersion: $previousVersion, downloadCount: $downloadCount, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt, totalDownloads: $totalDownloads, isLatestVersion: $isLatestVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDocumentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.project, project) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            const DeepCollectionEquality()
                .equals(other.uploadedBy, uploadedBy) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.isRejected, isRejected) ||
                other.isRejected == isRejected) &&
            const DeepCollectionEquality()
                .equals(other.approvedBy, approvedBy) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            const DeepCollectionEquality()
                .equals(other.rejectedBy, rejectedBy) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other.previousVersion, previousVersion) &&
            (identical(other.downloadCount, downloadCount) ||
                other.downloadCount == downloadCount) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.totalDownloads, totalDownloads) ||
                other.totalDownloads == totalDownloads) &&
            (identical(other.isLatestVersion, isLatestVersion) ||
                other.isLatestVersion == isLatestVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(project),
        name,
        description,
        url,
        type,
        category,
        size,
        rejectionReason,
        mimeType,
        const DeepCollectionEquality().hash(uploadedBy),
        uploadedAt,
        visibility,
        isApproved,
        isRejected,
        const DeepCollectionEquality().hash(approvedBy),
        approvedAt,
        const DeepCollectionEquality().hash(rejectedBy),
        rejectedAt,
        version,
        const DeepCollectionEquality().hash(previousVersion),
        downloadCount,
        metadata,
        createdAt,
        updatedAt,
        totalDownloads,
        isLatestVersion
      ]);

  /// Create a copy of ProjectDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDocumentModelImplCopyWith<_$ProjectDocumentModelImpl>
      get copyWith =>
          __$$ProjectDocumentModelImplCopyWithImpl<_$ProjectDocumentModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectDocumentModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectDocumentModel extends ProjectDocumentModel {
  factory _ProjectDocumentModel(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      required final dynamic project,
      required final String name,
      final String? description,
      required final String url,
      required final String type,
      final String? category,
      final int? size,
      final String? rejectionReason,
      final String? mimeType,
      @JsonKey(name: 'uploadedBy', fromJson: _userFromJson, toJson: _userToJson)
      required final dynamic uploadedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? uploadedAt,
      required final String visibility,
      required final bool isApproved,
      required final bool isRejected,
      @JsonKey(name: 'approvedBy', fromJson: _userFromJson, toJson: _userToJson)
      final dynamic approvedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? approvedAt,
      @JsonKey(name: 'rejectedBy', fromJson: _userFromJson, toJson: _userToJson)
      final dynamic rejectedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? rejectedAt,
      required final int version,
      @JsonKey(
          name: 'previousVersion',
          fromJson: _previousVersionFromJson,
          toJson: _previousVersionToJson)
      final dynamic previousVersion,
      required final int downloadCount,
      final DocumentMetadataModel? metadata,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt,
      @JsonKey(name: 'totalDownloads', fromJson: _intFromJson)
      final int? totalDownloads,
      @JsonKey(name: 'isLatestVersion', fromJson: _boolFromJson)
      final bool? isLatestVersion}) = _$ProjectDocumentModelImpl;
  _ProjectDocumentModel._() : super._();

  factory _ProjectDocumentModel.fromJson(Map<String, dynamic> json) =
      _$ProjectDocumentModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project; // null, String, or ProjectModel
  @override
  String get name;
  @override
  String? get description;
  @override
  String get url;
  @override
  String get type;
  @override
  String? get category;
  @override
  int? get size;
  @override
  String? get rejectionReason;
  @override
  String? get mimeType;
  @override
  @JsonKey(name: 'uploadedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get uploadedBy; // null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get uploadedAt;
  @override
  String get visibility;
  @override
  bool get isApproved;
  @override
  bool get isRejected;
  @override
  @JsonKey(name: 'approvedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get approvedBy; // null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get approvedAt;
  @override
  @JsonKey(name: 'rejectedBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get rejectedBy; // null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get rejectedAt;
  @override
  int get version;
  @override
  @JsonKey(
      name: 'previousVersion',
      fromJson: _previousVersionFromJson,
      toJson: _previousVersionToJson)
  dynamic get previousVersion; // null, String, or ProjectDocumentModel
  @override
  int get downloadCount;
  @override
  DocumentMetadataModel? get metadata;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'totalDownloads', fromJson: _intFromJson)
  int? get totalDownloads;
  @override
  @JsonKey(name: 'isLatestVersion', fromJson: _boolFromJson)
  bool? get isLatestVersion;

  /// Create a copy of ProjectDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectDocumentModelImplCopyWith<_$ProjectDocumentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DocumentMetadataModel _$DocumentMetadataModelFromJson(
    Map<String, dynamic> json) {
  return _DocumentMetadataModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentMetadataModel {
  String? get checksum => throw _privateConstructorUsedError;
  String? get originalName => throw _privateConstructorUsedError;
  String? get encoding => throw _privateConstructorUsedError;
  String? get cloudinaryPublicId => throw _privateConstructorUsedError;

  /// Serializes this DocumentMetadataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentMetadataModelCopyWith<DocumentMetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentMetadataModelCopyWith<$Res> {
  factory $DocumentMetadataModelCopyWith(DocumentMetadataModel value,
          $Res Function(DocumentMetadataModel) then) =
      _$DocumentMetadataModelCopyWithImpl<$Res, DocumentMetadataModel>;
  @useResult
  $Res call(
      {String? checksum,
      String? originalName,
      String? encoding,
      String? cloudinaryPublicId});
}

/// @nodoc
class _$DocumentMetadataModelCopyWithImpl<$Res,
        $Val extends DocumentMetadataModel>
    implements $DocumentMetadataModelCopyWith<$Res> {
  _$DocumentMetadataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checksum = freezed,
    Object? originalName = freezed,
    Object? encoding = freezed,
    Object? cloudinaryPublicId = freezed,
  }) {
    return _then(_value.copyWith(
      checksum: freezed == checksum
          ? _value.checksum
          : checksum // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
      cloudinaryPublicId: freezed == cloudinaryPublicId
          ? _value.cloudinaryPublicId
          : cloudinaryPublicId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentMetadataModelImplCopyWith<$Res>
    implements $DocumentMetadataModelCopyWith<$Res> {
  factory _$$DocumentMetadataModelImplCopyWith(
          _$DocumentMetadataModelImpl value,
          $Res Function(_$DocumentMetadataModelImpl) then) =
      __$$DocumentMetadataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? checksum,
      String? originalName,
      String? encoding,
      String? cloudinaryPublicId});
}

/// @nodoc
class __$$DocumentMetadataModelImplCopyWithImpl<$Res>
    extends _$DocumentMetadataModelCopyWithImpl<$Res,
        _$DocumentMetadataModelImpl>
    implements _$$DocumentMetadataModelImplCopyWith<$Res> {
  __$$DocumentMetadataModelImplCopyWithImpl(_$DocumentMetadataModelImpl _value,
      $Res Function(_$DocumentMetadataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checksum = freezed,
    Object? originalName = freezed,
    Object? encoding = freezed,
    Object? cloudinaryPublicId = freezed,
  }) {
    return _then(_$DocumentMetadataModelImpl(
      checksum: freezed == checksum
          ? _value.checksum
          : checksum // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
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
class _$DocumentMetadataModelImpl implements _DocumentMetadataModel {
  _$DocumentMetadataModelImpl(
      {this.checksum,
      this.originalName,
      this.encoding,
      this.cloudinaryPublicId});

  factory _$DocumentMetadataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentMetadataModelImplFromJson(json);

  @override
  final String? checksum;
  @override
  final String? originalName;
  @override
  final String? encoding;
  @override
  final String? cloudinaryPublicId;

  @override
  String toString() {
    return 'DocumentMetadataModel(checksum: $checksum, originalName: $originalName, encoding: $encoding, cloudinaryPublicId: $cloudinaryPublicId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentMetadataModelImpl &&
            (identical(other.checksum, checksum) ||
                other.checksum == checksum) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.encoding, encoding) ||
                other.encoding == encoding) &&
            (identical(other.cloudinaryPublicId, cloudinaryPublicId) ||
                other.cloudinaryPublicId == cloudinaryPublicId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, checksum, originalName, encoding, cloudinaryPublicId);

  /// Create a copy of DocumentMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentMetadataModelImplCopyWith<_$DocumentMetadataModelImpl>
      get copyWith => __$$DocumentMetadataModelImplCopyWithImpl<
          _$DocumentMetadataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentMetadataModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentMetadataModel implements DocumentMetadataModel {
  factory _DocumentMetadataModel(
      {final String? checksum,
      final String? originalName,
      final String? encoding,
      final String? cloudinaryPublicId}) = _$DocumentMetadataModelImpl;

  factory _DocumentMetadataModel.fromJson(Map<String, dynamic> json) =
      _$DocumentMetadataModelImpl.fromJson;

  @override
  String? get checksum;
  @override
  String? get originalName;
  @override
  String? get encoding;
  @override
  String? get cloudinaryPublicId;

  /// Create a copy of DocumentMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentMetadataModelImplCopyWith<_$DocumentMetadataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
