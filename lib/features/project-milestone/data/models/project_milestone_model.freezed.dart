// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_milestone_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectMilestoneModel _$ProjectMilestoneModelFromJson(
    Map<String, dynamic> json) {
  return _ProjectMilestoneModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectMilestoneModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project =>
      throw _privateConstructorUsedError; // null, String, or ProjectModel
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get dueDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;
  @JsonKey(name: 'deliverables')
  List<DeliverableModel>? get deliverables =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get createdBy =>
      throw _privateConstructorUsedError; // null, String, or UserModel
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get completedDate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'daysUntilDue')
  int? get daysUntilDue => throw _privateConstructorUsedError;

  /// Serializes this ProjectMilestoneModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectMilestoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectMilestoneModelCopyWith<ProjectMilestoneModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectMilestoneModelCopyWith<$Res> {
  factory $ProjectMilestoneModelCopyWith(ProjectMilestoneModel value,
          $Res Function(ProjectMilestoneModel) then) =
      _$ProjectMilestoneModelCopyWithImpl<$Res, ProjectMilestoneModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      String title,
      String? description,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? dueDate,
      String status,
      int progress,
      @JsonKey(name: 'deliverables') List<DeliverableModel>? deliverables,
      @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic createdBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? completedDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt,
      @JsonKey(name: 'daysUntilDue') int? daysUntilDue});
}

/// @nodoc
class _$ProjectMilestoneModelCopyWithImpl<$Res,
        $Val extends ProjectMilestoneModel>
    implements $ProjectMilestoneModelCopyWith<$Res> {
  _$ProjectMilestoneModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectMilestoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? dueDate = freezed,
    Object? status = null,
    Object? progress = null,
    Object? deliverables = freezed,
    Object? createdBy = freezed,
    Object? completedDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? daysUntilDue = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      deliverables: freezed == deliverables
          ? _value.deliverables
          : deliverables // ignore: cast_nullable_to_non_nullable
              as List<DeliverableModel>?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      daysUntilDue: freezed == daysUntilDue
          ? _value.daysUntilDue
          : daysUntilDue // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectMilestoneModelImplCopyWith<$Res>
    implements $ProjectMilestoneModelCopyWith<$Res> {
  factory _$$ProjectMilestoneModelImplCopyWith(
          _$ProjectMilestoneModelImpl value,
          $Res Function(_$ProjectMilestoneModelImpl) then) =
      __$$ProjectMilestoneModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      String title,
      String? description,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? dueDate,
      String status,
      int progress,
      @JsonKey(name: 'deliverables') List<DeliverableModel>? deliverables,
      @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic createdBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? completedDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt,
      @JsonKey(name: 'daysUntilDue') int? daysUntilDue});
}

/// @nodoc
class __$$ProjectMilestoneModelImplCopyWithImpl<$Res>
    extends _$ProjectMilestoneModelCopyWithImpl<$Res,
        _$ProjectMilestoneModelImpl>
    implements _$$ProjectMilestoneModelImplCopyWith<$Res> {
  __$$ProjectMilestoneModelImplCopyWithImpl(_$ProjectMilestoneModelImpl _value,
      $Res Function(_$ProjectMilestoneModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectMilestoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? dueDate = freezed,
    Object? status = null,
    Object? progress = null,
    Object? deliverables = freezed,
    Object? createdBy = freezed,
    Object? completedDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? daysUntilDue = freezed,
  }) {
    return _then(_$ProjectMilestoneModelImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      deliverables: freezed == deliverables
          ? _value._deliverables
          : deliverables // ignore: cast_nullable_to_non_nullable
              as List<DeliverableModel>?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      daysUntilDue: freezed == daysUntilDue
          ? _value.daysUntilDue
          : daysUntilDue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectMilestoneModelImpl extends _ProjectMilestoneModel {
  _$ProjectMilestoneModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      required this.project,
      required this.title,
      this.description,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.dueDate,
      required this.status,
      required this.progress,
      @JsonKey(name: 'deliverables')
      final List<DeliverableModel>? deliverables = const [],
      @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
      this.createdBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.completedDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt,
      @JsonKey(name: 'daysUntilDue') this.daysUntilDue})
      : _deliverables = deliverables,
        super._();

  factory _$ProjectMilestoneModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectMilestoneModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  final dynamic project;
// null, String, or ProjectModel
  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? dueDate;
  @override
  final String status;
  @override
  final int progress;
  final List<DeliverableModel>? _deliverables;
  @override
  @JsonKey(name: 'deliverables')
  List<DeliverableModel>? get deliverables {
    final value = _deliverables;
    if (value == null) return null;
    if (_deliverables is EqualUnmodifiableListView) return _deliverables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic createdBy;
// null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? completedDate;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'daysUntilDue')
  final int? daysUntilDue;

  @override
  String toString() {
    return 'ProjectMilestoneModel(id: $id, project: $project, title: $title, description: $description, dueDate: $dueDate, status: $status, progress: $progress, deliverables: $deliverables, createdBy: $createdBy, completedDate: $completedDate, createdAt: $createdAt, updatedAt: $updatedAt, daysUntilDue: $daysUntilDue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectMilestoneModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.project, project) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality()
                .equals(other._deliverables, _deliverables) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            (identical(other.completedDate, completedDate) ||
                other.completedDate == completedDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.daysUntilDue, daysUntilDue) ||
                other.daysUntilDue == daysUntilDue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(project),
      title,
      description,
      dueDate,
      status,
      progress,
      const DeepCollectionEquality().hash(_deliverables),
      const DeepCollectionEquality().hash(createdBy),
      completedDate,
      createdAt,
      updatedAt,
      daysUntilDue);

  /// Create a copy of ProjectMilestoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectMilestoneModelImplCopyWith<_$ProjectMilestoneModelImpl>
      get copyWith => __$$ProjectMilestoneModelImplCopyWithImpl<
          _$ProjectMilestoneModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectMilestoneModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectMilestoneModel extends ProjectMilestoneModel {
  factory _ProjectMilestoneModel(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      required final dynamic project,
      required final String title,
      final String? description,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime? dueDate,
      required final String status,
      required final int progress,
      @JsonKey(name: 'deliverables') final List<DeliverableModel>? deliverables,
      @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
      final dynamic createdBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? completedDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt,
      @JsonKey(name: 'daysUntilDue')
      final int? daysUntilDue}) = _$ProjectMilestoneModelImpl;
  _ProjectMilestoneModel._() : super._();

  factory _ProjectMilestoneModel.fromJson(Map<String, dynamic> json) =
      _$ProjectMilestoneModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project; // null, String, or ProjectModel
  @override
  String get title;
  @override
  String? get description;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get dueDate;
  @override
  String get status;
  @override
  int get progress;
  @override
  @JsonKey(name: 'deliverables')
  List<DeliverableModel>? get deliverables;
  @override
  @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get createdBy; // null, String, or UserModel
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get completedDate;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'daysUntilDue')
  int? get daysUntilDue;

  /// Create a copy of ProjectMilestoneModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectMilestoneModelImplCopyWith<_$ProjectMilestoneModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeliverableModel _$DeliverableModelFromJson(Map<String, dynamic> json) {
  return _DeliverableModel.fromJson(json);
}

/// @nodoc
mixin _$DeliverableModel {
  String get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get cloudinaryPublicId => throw _privateConstructorUsedError;

  /// Serializes this DeliverableModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliverableModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliverableModelCopyWith<DeliverableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliverableModelCopyWith<$Res> {
  factory $DeliverableModelCopyWith(
          DeliverableModel value, $Res Function(DeliverableModel) then) =
      _$DeliverableModelCopyWithImpl<$Res, DeliverableModel>;
  @useResult
  $Res call(
      {String name,
      String? url,
      String? description,
      String? cloudinaryPublicId});
}

/// @nodoc
class _$DeliverableModelCopyWithImpl<$Res, $Val extends DeliverableModel>
    implements $DeliverableModelCopyWith<$Res> {
  _$DeliverableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliverableModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
    Object? description = freezed,
    Object? cloudinaryPublicId = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DeliverableModelImplCopyWith<$Res>
    implements $DeliverableModelCopyWith<$Res> {
  factory _$$DeliverableModelImplCopyWith(_$DeliverableModelImpl value,
          $Res Function(_$DeliverableModelImpl) then) =
      __$$DeliverableModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? url,
      String? description,
      String? cloudinaryPublicId});
}

/// @nodoc
class __$$DeliverableModelImplCopyWithImpl<$Res>
    extends _$DeliverableModelCopyWithImpl<$Res, _$DeliverableModelImpl>
    implements _$$DeliverableModelImplCopyWith<$Res> {
  __$$DeliverableModelImplCopyWithImpl(_$DeliverableModelImpl _value,
      $Res Function(_$DeliverableModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliverableModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
    Object? description = freezed,
    Object? cloudinaryPublicId = freezed,
  }) {
    return _then(_$DeliverableModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
class _$DeliverableModelImpl implements _DeliverableModel {
  const _$DeliverableModelImpl(
      {required this.name,
      this.url,
      this.description,
      this.cloudinaryPublicId});

  factory _$DeliverableModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliverableModelImplFromJson(json);

  @override
  final String name;
  @override
  final String? url;
  @override
  final String? description;
  @override
  final String? cloudinaryPublicId;

  @override
  String toString() {
    return 'DeliverableModel(name: $name, url: $url, description: $description, cloudinaryPublicId: $cloudinaryPublicId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliverableModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cloudinaryPublicId, cloudinaryPublicId) ||
                other.cloudinaryPublicId == cloudinaryPublicId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, url, description, cloudinaryPublicId);

  /// Create a copy of DeliverableModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliverableModelImplCopyWith<_$DeliverableModelImpl> get copyWith =>
      __$$DeliverableModelImplCopyWithImpl<_$DeliverableModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliverableModelImplToJson(
      this,
    );
  }
}

abstract class _DeliverableModel implements DeliverableModel {
  const factory _DeliverableModel(
      {required final String name,
      final String? url,
      final String? description,
      final String? cloudinaryPublicId}) = _$DeliverableModelImpl;

  factory _DeliverableModel.fromJson(Map<String, dynamic> json) =
      _$DeliverableModelImpl.fromJson;

  @override
  String get name;
  @override
  String? get url;
  @override
  String? get description;
  @override
  String? get cloudinaryPublicId;

  /// Create a copy of DeliverableModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliverableModelImplCopyWith<_$DeliverableModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgressStatsModel _$ProgressStatsModelFromJson(Map<String, dynamic> json) {
  return _ProgressStatsModel.fromJson(json);
}

/// @nodoc
mixin _$ProgressStatsModel {
  @JsonKey(name: 'averageProgress', defaultValue: 0.0)
  double get averageProgress => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalMilestones', defaultValue: 0)
  int get totalMilestones => throw _privateConstructorUsedError;

  /// Serializes this ProgressStatsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgressStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressStatsModelCopyWith<ProgressStatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressStatsModelCopyWith<$Res> {
  factory $ProgressStatsModelCopyWith(
          ProgressStatsModel value, $Res Function(ProgressStatsModel) then) =
      _$ProgressStatsModelCopyWithImpl<$Res, ProgressStatsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'averageProgress', defaultValue: 0.0)
      double averageProgress,
      @JsonKey(name: 'totalMilestones', defaultValue: 0) int totalMilestones});
}

/// @nodoc
class _$ProgressStatsModelCopyWithImpl<$Res, $Val extends ProgressStatsModel>
    implements $ProgressStatsModelCopyWith<$Res> {
  _$ProgressStatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageProgress = null,
    Object? totalMilestones = null,
  }) {
    return _then(_value.copyWith(
      averageProgress: null == averageProgress
          ? _value.averageProgress
          : averageProgress // ignore: cast_nullable_to_non_nullable
              as double,
      totalMilestones: null == totalMilestones
          ? _value.totalMilestones
          : totalMilestones // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressStatsModelImplCopyWith<$Res>
    implements $ProgressStatsModelCopyWith<$Res> {
  factory _$$ProgressStatsModelImplCopyWith(_$ProgressStatsModelImpl value,
          $Res Function(_$ProgressStatsModelImpl) then) =
      __$$ProgressStatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'averageProgress', defaultValue: 0.0)
      double averageProgress,
      @JsonKey(name: 'totalMilestones', defaultValue: 0) int totalMilestones});
}

/// @nodoc
class __$$ProgressStatsModelImplCopyWithImpl<$Res>
    extends _$ProgressStatsModelCopyWithImpl<$Res, _$ProgressStatsModelImpl>
    implements _$$ProgressStatsModelImplCopyWith<$Res> {
  __$$ProgressStatsModelImplCopyWithImpl(_$ProgressStatsModelImpl _value,
      $Res Function(_$ProgressStatsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgressStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageProgress = null,
    Object? totalMilestones = null,
  }) {
    return _then(_$ProgressStatsModelImpl(
      averageProgress: null == averageProgress
          ? _value.averageProgress
          : averageProgress // ignore: cast_nullable_to_non_nullable
              as double,
      totalMilestones: null == totalMilestones
          ? _value.totalMilestones
          : totalMilestones // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressStatsModelImpl implements _ProgressStatsModel {
  const _$ProgressStatsModelImpl(
      {@JsonKey(name: 'averageProgress', defaultValue: 0.0)
      required this.averageProgress,
      @JsonKey(name: 'totalMilestones', defaultValue: 0)
      required this.totalMilestones});

  factory _$ProgressStatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressStatsModelImplFromJson(json);

  @override
  @JsonKey(name: 'averageProgress', defaultValue: 0.0)
  final double averageProgress;
  @override
  @JsonKey(name: 'totalMilestones', defaultValue: 0)
  final int totalMilestones;

  @override
  String toString() {
    return 'ProgressStatsModel(averageProgress: $averageProgress, totalMilestones: $totalMilestones)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressStatsModelImpl &&
            (identical(other.averageProgress, averageProgress) ||
                other.averageProgress == averageProgress) &&
            (identical(other.totalMilestones, totalMilestones) ||
                other.totalMilestones == totalMilestones));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, averageProgress, totalMilestones);

  /// Create a copy of ProgressStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressStatsModelImplCopyWith<_$ProgressStatsModelImpl> get copyWith =>
      __$$ProgressStatsModelImplCopyWithImpl<_$ProgressStatsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressStatsModelImplToJson(
      this,
    );
  }
}

abstract class _ProgressStatsModel implements ProgressStatsModel {
  const factory _ProgressStatsModel(
      {@JsonKey(name: 'averageProgress', defaultValue: 0.0)
      required final double averageProgress,
      @JsonKey(name: 'totalMilestones', defaultValue: 0)
      required final int totalMilestones}) = _$ProgressStatsModelImpl;

  factory _ProgressStatsModel.fromJson(Map<String, dynamic> json) =
      _$ProgressStatsModelImpl.fromJson;

  @override
  @JsonKey(name: 'averageProgress', defaultValue: 0.0)
  double get averageProgress;
  @override
  @JsonKey(name: 'totalMilestones', defaultValue: 0)
  int get totalMilestones;

  /// Create a copy of ProgressStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressStatsModelImplCopyWith<_$ProgressStatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusStatsModel _$StatusStatsModelFromJson(Map<String, dynamic> json) {
  return _StatusStatsModel.fromJson(json);
}

/// @nodoc
mixin _$StatusStatsModel {
  @JsonKey(name: 'status', defaultValue: '')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'count', defaultValue: 0)
  int get count => throw _privateConstructorUsedError;

  /// Serializes this StatusStatsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatusStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusStatsModelCopyWith<StatusStatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusStatsModelCopyWith<$Res> {
  factory $StatusStatsModelCopyWith(
          StatusStatsModel value, $Res Function(StatusStatsModel) then) =
      _$StatusStatsModelCopyWithImpl<$Res, StatusStatsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status', defaultValue: '') String status,
      @JsonKey(name: 'count', defaultValue: 0) int count});
}

/// @nodoc
class _$StatusStatsModelCopyWithImpl<$Res, $Val extends StatusStatsModel>
    implements $StatusStatsModelCopyWith<$Res> {
  _$StatusStatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatusStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusStatsModelImplCopyWith<$Res>
    implements $StatusStatsModelCopyWith<$Res> {
  factory _$$StatusStatsModelImplCopyWith(_$StatusStatsModelImpl value,
          $Res Function(_$StatusStatsModelImpl) then) =
      __$$StatusStatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status', defaultValue: '') String status,
      @JsonKey(name: 'count', defaultValue: 0) int count});
}

/// @nodoc
class __$$StatusStatsModelImplCopyWithImpl<$Res>
    extends _$StatusStatsModelCopyWithImpl<$Res, _$StatusStatsModelImpl>
    implements _$$StatusStatsModelImplCopyWith<$Res> {
  __$$StatusStatsModelImplCopyWithImpl(_$StatusStatsModelImpl _value,
      $Res Function(_$StatusStatsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatusStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? count = null,
  }) {
    return _then(_$StatusStatsModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$StatusStatsModelImpl implements _StatusStatsModel {
  const _$StatusStatsModelImpl(
      {@JsonKey(name: 'status', defaultValue: '') required this.status,
      @JsonKey(name: 'count', defaultValue: 0) required this.count});

  factory _$StatusStatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusStatsModelImplFromJson(json);

  @override
  @JsonKey(name: 'status', defaultValue: '')
  final String status;
  @override
  @JsonKey(name: 'count', defaultValue: 0)
  final int count;

  @override
  String toString() {
    return 'StatusStatsModel(status: $status, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusStatsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, count);

  /// Create a copy of StatusStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusStatsModelImplCopyWith<_$StatusStatsModelImpl> get copyWith =>
      __$$StatusStatsModelImplCopyWithImpl<_$StatusStatsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusStatsModelImplToJson(
      this,
    );
  }
}

abstract class _StatusStatsModel implements StatusStatsModel {
  const factory _StatusStatsModel(
      {@JsonKey(name: 'status', defaultValue: '') required final String status,
      @JsonKey(name: 'count', defaultValue: 0)
      required final int count}) = _$StatusStatsModelImpl;

  factory _StatusStatsModel.fromJson(Map<String, dynamic> json) =
      _$StatusStatsModelImpl.fromJson;

  @override
  @JsonKey(name: 'status', defaultValue: '')
  String get status;
  @override
  @JsonKey(name: 'count', defaultValue: 0)
  int get count;

  /// Create a copy of StatusStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusStatsModelImplCopyWith<_$StatusStatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
