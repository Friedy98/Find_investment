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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get uploadedBy => throw _privateConstructorUsedError;
  String get visibility => throw _privateConstructorUsedError;
  bool get isApproved => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get approvedBy => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  String? get previousVersion => throw _privateConstructorUsedError;
  int get downloadCount => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String id,
      String name,
      String? description,
      String url,
      String type,
      String? category,
      int? size,
      String? mimeType,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic uploadedBy,
      String visibility,
      bool isApproved,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic approvedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? approvedAt,
      int version,
      String? previousVersion,
      int downloadCount,
      Map<String, dynamic>? metadata});
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
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? url = null,
    Object? type = null,
    Object? category = freezed,
    Object? size = freezed,
    Object? mimeType = freezed,
    Object? uploadedBy = freezed,
    Object? visibility = null,
    Object? isApproved = null,
    Object? approvedBy = freezed,
    Object? approvedAt = freezed,
    Object? version = null,
    Object? previousVersion = freezed,
    Object? downloadCount = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedBy: freezed == uploadedBy
          ? _value.uploadedBy
          : uploadedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      previousVersion: freezed == previousVersion
          ? _value.previousVersion
          : previousVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadCount: null == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
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
      {@JsonKey(name: '_id') String id,
      String name,
      String? description,
      String url,
      String type,
      String? category,
      int? size,
      String? mimeType,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic uploadedBy,
      String visibility,
      bool isApproved,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic approvedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? approvedAt,
      int version,
      String? previousVersion,
      int downloadCount,
      Map<String, dynamic>? metadata});
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
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? url = null,
    Object? type = null,
    Object? category = freezed,
    Object? size = freezed,
    Object? mimeType = freezed,
    Object? uploadedBy = freezed,
    Object? visibility = null,
    Object? isApproved = null,
    Object? approvedBy = freezed,
    Object? approvedAt = freezed,
    Object? version = null,
    Object? previousVersion = freezed,
    Object? downloadCount = null,
    Object? metadata = freezed,
  }) {
    return _then(_$ProjectDocumentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedBy: freezed == uploadedBy
          ? _value.uploadedBy
          : uploadedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      previousVersion: freezed == previousVersion
          ? _value.previousVersion
          : previousVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadCount: null == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectDocumentModelImpl implements _ProjectDocumentModel {
  _$ProjectDocumentModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      this.description,
      required this.url,
      this.type = 'other',
      this.category,
      this.size,
      this.mimeType,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      required this.uploadedBy,
      this.visibility = 'team',
      this.isApproved = false,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) this.approvedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.approvedAt,
      this.version = 1,
      this.previousVersion,
      this.downloadCount = 0,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$ProjectDocumentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectDocumentModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String url;
  @override
  @JsonKey()
  final String type;
  @override
  final String? category;
  @override
  final int? size;
  @override
  final String? mimeType;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  final dynamic uploadedBy;
  @override
  @JsonKey()
  final String visibility;
  @override
  @JsonKey()
  final bool isApproved;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  final dynamic approvedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? approvedAt;
  @override
  @JsonKey()
  final int version;
  @override
  final String? previousVersion;
  @override
  @JsonKey()
  final int downloadCount;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ProjectDocumentModel(id: $id, name: $name, description: $description, url: $url, type: $type, category: $category, size: $size, mimeType: $mimeType, uploadedBy: $uploadedBy, visibility: $visibility, isApproved: $isApproved, approvedBy: $approvedBy, approvedAt: $approvedAt, version: $version, previousVersion: $previousVersion, downloadCount: $downloadCount, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDocumentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            const DeepCollectionEquality()
                .equals(other.uploadedBy, uploadedBy) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            const DeepCollectionEquality()
                .equals(other.approvedBy, approvedBy) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.previousVersion, previousVersion) ||
                other.previousVersion == previousVersion) &&
            (identical(other.downloadCount, downloadCount) ||
                other.downloadCount == downloadCount) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      url,
      type,
      category,
      size,
      mimeType,
      const DeepCollectionEquality().hash(uploadedBy),
      visibility,
      isApproved,
      const DeepCollectionEquality().hash(approvedBy),
      approvedAt,
      version,
      previousVersion,
      downloadCount,
      const DeepCollectionEquality().hash(_metadata));

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

abstract class _ProjectDocumentModel implements ProjectDocumentModel {
  factory _ProjectDocumentModel(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      final String? description,
      required final String url,
      final String type,
      final String? category,
      final int? size,
      final String? mimeType,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      required final dynamic uploadedBy,
      final String visibility,
      final bool isApproved,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      final dynamic approvedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? approvedAt,
      final int version,
      final String? previousVersion,
      final int downloadCount,
      final Map<String, dynamic>? metadata}) = _$ProjectDocumentModelImpl;

  factory _ProjectDocumentModel.fromJson(Map<String, dynamic> json) =
      _$ProjectDocumentModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
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
  String? get mimeType;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get uploadedBy;
  @override
  String get visibility;
  @override
  bool get isApproved;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get approvedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get approvedAt;
  @override
  int get version;
  @override
  String? get previousVersion;
  @override
  int get downloadCount;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of ProjectDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectDocumentModelImplCopyWith<_$ProjectDocumentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
