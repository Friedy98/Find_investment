// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectReportModel _$ProjectReportModelFromJson(Map<String, dynamic> json) {
  return _ProjectReportModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectReportModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'period', fromJson: _periodFromJson, toJson: _periodToJson)
  PeriodModel get period => throw _privateConstructorUsedError;
  @JsonKey(name: 'metrics', fromJson: _metricsFromJson, toJson: _metricsToJson)
  MetricsModel get metrics => throw _privateConstructorUsedError;
  @JsonKey(name: 'attachments', defaultValue: [])
  List<AttachmentModel> get attachments => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: 'draft')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProjectReportModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectReportModelCopyWith<ProjectReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectReportModelCopyWith<$Res> {
  factory $ProjectReportModelCopyWith(
          ProjectReportModel value, $Res Function(ProjectReportModel) then) =
      _$ProjectReportModelCopyWithImpl<$Res, ProjectReportModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      String title,
      String content,
      String type,
      @JsonKey(name: 'period', fromJson: _periodFromJson, toJson: _periodToJson)
      PeriodModel period,
      @JsonKey(
          name: 'metrics', fromJson: _metricsFromJson, toJson: _metricsToJson)
      MetricsModel metrics,
      @JsonKey(name: 'attachments', defaultValue: [])
      List<AttachmentModel> attachments,
      @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic createdBy,
      @JsonKey(name: 'status', defaultValue: 'draft') String status,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});

  $PeriodModelCopyWith<$Res> get period;
  $MetricsModelCopyWith<$Res> get metrics;
}

/// @nodoc
class _$ProjectReportModelCopyWithImpl<$Res, $Val extends ProjectReportModel>
    implements $ProjectReportModelCopyWith<$Res> {
  _$ProjectReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = freezed,
    Object? title = null,
    Object? content = null,
    Object? type = null,
    Object? period = null,
    Object? metrics = null,
    Object? attachments = null,
    Object? createdBy = freezed,
    Object? status = null,
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
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as PeriodModel,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as MetricsModel,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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

  /// Create a copy of ProjectReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodModelCopyWith<$Res> get period {
    return $PeriodModelCopyWith<$Res>(_value.period, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }

  /// Create a copy of ProjectReportModel
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
abstract class _$$ProjectReportModelImplCopyWith<$Res>
    implements $ProjectReportModelCopyWith<$Res> {
  factory _$$ProjectReportModelImplCopyWith(_$ProjectReportModelImpl value,
          $Res Function(_$ProjectReportModelImpl) then) =
      __$$ProjectReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      String title,
      String content,
      String type,
      @JsonKey(name: 'period', fromJson: _periodFromJson, toJson: _periodToJson)
      PeriodModel period,
      @JsonKey(
          name: 'metrics', fromJson: _metricsFromJson, toJson: _metricsToJson)
      MetricsModel metrics,
      @JsonKey(name: 'attachments', defaultValue: [])
      List<AttachmentModel> attachments,
      @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
      dynamic createdBy,
      @JsonKey(name: 'status', defaultValue: 'draft') String status,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});

  @override
  $PeriodModelCopyWith<$Res> get period;
  @override
  $MetricsModelCopyWith<$Res> get metrics;
}

/// @nodoc
class __$$ProjectReportModelImplCopyWithImpl<$Res>
    extends _$ProjectReportModelCopyWithImpl<$Res, _$ProjectReportModelImpl>
    implements _$$ProjectReportModelImplCopyWith<$Res> {
  __$$ProjectReportModelImplCopyWithImpl(_$ProjectReportModelImpl _value,
      $Res Function(_$ProjectReportModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = freezed,
    Object? title = null,
    Object? content = null,
    Object? type = null,
    Object? period = null,
    Object? metrics = null,
    Object? attachments = null,
    Object? createdBy = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProjectReportModelImpl(
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
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as PeriodModel,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as MetricsModel,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$ProjectReportModelImpl extends _ProjectReportModel {
  _$ProjectReportModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      required this.project,
      required this.title,
      required this.content,
      required this.type,
      @JsonKey(name: 'period', fromJson: _periodFromJson, toJson: _periodToJson)
      required this.period,
      @JsonKey(
          name: 'metrics', fromJson: _metricsFromJson, toJson: _metricsToJson)
      required this.metrics,
      @JsonKey(name: 'attachments', defaultValue: [])
      required final List<AttachmentModel> attachments,
      @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
      required this.createdBy,
      @JsonKey(name: 'status', defaultValue: 'draft') required this.status,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt})
      : _attachments = attachments,
        super._();

  factory _$ProjectReportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectReportModelImplFromJson(json);

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
  final String type;
  @override
  @JsonKey(name: 'period', fromJson: _periodFromJson, toJson: _periodToJson)
  final PeriodModel period;
  @override
  @JsonKey(name: 'metrics', fromJson: _metricsFromJson, toJson: _metricsToJson)
  final MetricsModel metrics;
  final List<AttachmentModel> _attachments;
  @override
  @JsonKey(name: 'attachments', defaultValue: [])
  List<AttachmentModel> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic createdBy;
  @override
  @JsonKey(name: 'status', defaultValue: 'draft')
  final String status;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProjectReportModel(id: $id, project: $project, title: $title, content: $content, type: $type, period: $period, metrics: $metrics, attachments: $attachments, createdBy: $createdBy, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectReportModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.project, project) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.metrics, metrics) || other.metrics == metrics) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            (identical(other.status, status) || other.status == status) &&
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
      period,
      metrics,
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(createdBy),
      status,
      createdAt,
      updatedAt);

  /// Create a copy of ProjectReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectReportModelImplCopyWith<_$ProjectReportModelImpl> get copyWith =>
      __$$ProjectReportModelImplCopyWithImpl<_$ProjectReportModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectReportModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectReportModel extends ProjectReportModel {
  factory _ProjectReportModel(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      required final dynamic project,
      required final String title,
      required final String content,
      required final String type,
      @JsonKey(name: 'period', fromJson: _periodFromJson, toJson: _periodToJson)
      required final PeriodModel period,
      @JsonKey(
          name: 'metrics', fromJson: _metricsFromJson, toJson: _metricsToJson)
      required final MetricsModel metrics,
      @JsonKey(name: 'attachments', defaultValue: [])
      required final List<AttachmentModel> attachments,
      @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
      required final dynamic createdBy,
      @JsonKey(name: 'status', defaultValue: 'draft')
      required final String status,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt}) = _$ProjectReportModelImpl;
  _ProjectReportModel._() : super._();

  factory _ProjectReportModel.fromJson(Map<String, dynamic> json) =
      _$ProjectReportModelImpl.fromJson;

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
  String get type;
  @override
  @JsonKey(name: 'period', fromJson: _periodFromJson, toJson: _periodToJson)
  PeriodModel get period;
  @override
  @JsonKey(name: 'metrics', fromJson: _metricsFromJson, toJson: _metricsToJson)
  MetricsModel get metrics;
  @override
  @JsonKey(name: 'attachments', defaultValue: [])
  List<AttachmentModel> get attachments;
  @override
  @JsonKey(name: 'createdBy', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get createdBy;
  @override
  @JsonKey(name: 'status', defaultValue: 'draft')
  String get status;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;

  /// Create a copy of ProjectReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectReportModelImplCopyWith<_$ProjectReportModelImpl> get copyWith =>
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

PeriodModel _$PeriodModelFromJson(Map<String, dynamic> json) {
  return _PeriodModel.fromJson(json);
}

/// @nodoc
mixin _$PeriodModel {
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get start => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get end => throw _privateConstructorUsedError;

  /// Serializes this PeriodModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeriodModelCopyWith<PeriodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodModelCopyWith<$Res> {
  factory $PeriodModelCopyWith(
          PeriodModel value, $Res Function(PeriodModel) then) =
      _$PeriodModelCopyWithImpl<$Res, PeriodModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? start,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? end});
}

/// @nodoc
class _$PeriodModelCopyWithImpl<$Res, $Val extends PeriodModel>
    implements $PeriodModelCopyWith<$Res> {
  _$PeriodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodModelImplCopyWith<$Res>
    implements $PeriodModelCopyWith<$Res> {
  factory _$$PeriodModelImplCopyWith(
          _$PeriodModelImpl value, $Res Function(_$PeriodModelImpl) then) =
      __$$PeriodModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? start,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? end});
}

/// @nodoc
class __$$PeriodModelImplCopyWithImpl<$Res>
    extends _$PeriodModelCopyWithImpl<$Res, _$PeriodModelImpl>
    implements _$$PeriodModelImplCopyWith<$Res> {
  __$$PeriodModelImplCopyWithImpl(
      _$PeriodModelImpl _value, $Res Function(_$PeriodModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$PeriodModelImpl(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodModelImpl implements _PeriodModel {
  const _$PeriodModelImpl(
      {@JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.start,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.end});

  factory _$PeriodModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodModelImplFromJson(json);

  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? start;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? end;

  @override
  String toString() {
    return 'PeriodModel(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodModelImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodModelImplCopyWith<_$PeriodModelImpl> get copyWith =>
      __$$PeriodModelImplCopyWithImpl<_$PeriodModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodModelImplToJson(
      this,
    );
  }
}

abstract class _PeriodModel implements PeriodModel {
  const factory _PeriodModel(
      {@JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime? start,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime? end}) = _$PeriodModelImpl;

  factory _PeriodModel.fromJson(Map<String, dynamic> json) =
      _$PeriodModelImpl.fromJson;

  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get start;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get end;

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodModelImplCopyWith<_$PeriodModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetricsModel _$MetricsModelFromJson(Map<String, dynamic> json) {
  return _MetricsModel.fromJson(json);
}

/// @nodoc
mixin _$MetricsModel {
  @JsonKey(name: 'revenue', defaultValue: null)
  double? get revenue => throw _privateConstructorUsedError;
  @JsonKey(name: 'expenses', defaultValue: null)
  double? get expenses => throw _privateConstructorUsedError;
  @JsonKey(name: 'impactMetrics', defaultValue: [])
  List<ImpactMetricModel> get impactMetrics =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'revenue', defaultValue: null) double? revenue,
      @JsonKey(name: 'expenses', defaultValue: null) double? expenses,
      @JsonKey(name: 'impactMetrics', defaultValue: [])
      List<ImpactMetricModel> impactMetrics});
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
    Object? revenue = freezed,
    Object? expenses = freezed,
    Object? impactMetrics = null,
  }) {
    return _then(_value.copyWith(
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      expenses: freezed == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as double?,
      impactMetrics: null == impactMetrics
          ? _value.impactMetrics
          : impactMetrics // ignore: cast_nullable_to_non_nullable
              as List<ImpactMetricModel>,
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
  $Res call(
      {@JsonKey(name: 'revenue', defaultValue: null) double? revenue,
      @JsonKey(name: 'expenses', defaultValue: null) double? expenses,
      @JsonKey(name: 'impactMetrics', defaultValue: [])
      List<ImpactMetricModel> impactMetrics});
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
    Object? revenue = freezed,
    Object? expenses = freezed,
    Object? impactMetrics = null,
  }) {
    return _then(_$MetricsModelImpl(
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      expenses: freezed == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as double?,
      impactMetrics: null == impactMetrics
          ? _value._impactMetrics
          : impactMetrics // ignore: cast_nullable_to_non_nullable
              as List<ImpactMetricModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetricsModelImpl implements _MetricsModel {
  const _$MetricsModelImpl(
      {@JsonKey(name: 'revenue', defaultValue: null) this.revenue,
      @JsonKey(name: 'expenses', defaultValue: null) this.expenses,
      @JsonKey(name: 'impactMetrics', defaultValue: [])
      required final List<ImpactMetricModel> impactMetrics})
      : _impactMetrics = impactMetrics;

  factory _$MetricsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetricsModelImplFromJson(json);

  @override
  @JsonKey(name: 'revenue', defaultValue: null)
  final double? revenue;
  @override
  @JsonKey(name: 'expenses', defaultValue: null)
  final double? expenses;
  final List<ImpactMetricModel> _impactMetrics;
  @override
  @JsonKey(name: 'impactMetrics', defaultValue: [])
  List<ImpactMetricModel> get impactMetrics {
    if (_impactMetrics is EqualUnmodifiableListView) return _impactMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_impactMetrics);
  }

  @override
  String toString() {
    return 'MetricsModel(revenue: $revenue, expenses: $expenses, impactMetrics: $impactMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetricsModelImpl &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.expenses, expenses) ||
                other.expenses == expenses) &&
            const DeepCollectionEquality()
                .equals(other._impactMetrics, _impactMetrics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, revenue, expenses,
      const DeepCollectionEquality().hash(_impactMetrics));

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
          {@JsonKey(name: 'revenue', defaultValue: null) final double? revenue,
          @JsonKey(name: 'expenses', defaultValue: null) final double? expenses,
          @JsonKey(name: 'impactMetrics', defaultValue: [])
          required final List<ImpactMetricModel> impactMetrics}) =
      _$MetricsModelImpl;

  factory _MetricsModel.fromJson(Map<String, dynamic> json) =
      _$MetricsModelImpl.fromJson;

  @override
  @JsonKey(name: 'revenue', defaultValue: null)
  double? get revenue;
  @override
  @JsonKey(name: 'expenses', defaultValue: null)
  double? get expenses;
  @override
  @JsonKey(name: 'impactMetrics', defaultValue: [])
  List<ImpactMetricModel> get impactMetrics;

  /// Create a copy of MetricsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetricsModelImplCopyWith<_$MetricsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImpactMetricModel _$ImpactMetricModelFromJson(Map<String, dynamic> json) {
  return _ImpactMetricModel.fromJson(json);
}

/// @nodoc
mixin _$ImpactMetricModel {
  String get name => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  /// Serializes this ImpactMetricModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImpactMetricModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImpactMetricModelCopyWith<ImpactMetricModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImpactMetricModelCopyWith<$Res> {
  factory $ImpactMetricModelCopyWith(
          ImpactMetricModel value, $Res Function(ImpactMetricModel) then) =
      _$ImpactMetricModelCopyWithImpl<$Res, ImpactMetricModel>;
  @useResult
  $Res call({String name, double value, String unit});
}

/// @nodoc
class _$ImpactMetricModelCopyWithImpl<$Res, $Val extends ImpactMetricModel>
    implements $ImpactMetricModelCopyWith<$Res> {
  _$ImpactMetricModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImpactMetricModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImpactMetricModelImplCopyWith<$Res>
    implements $ImpactMetricModelCopyWith<$Res> {
  factory _$$ImpactMetricModelImplCopyWith(_$ImpactMetricModelImpl value,
          $Res Function(_$ImpactMetricModelImpl) then) =
      __$$ImpactMetricModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double value, String unit});
}

/// @nodoc
class __$$ImpactMetricModelImplCopyWithImpl<$Res>
    extends _$ImpactMetricModelCopyWithImpl<$Res, _$ImpactMetricModelImpl>
    implements _$$ImpactMetricModelImplCopyWith<$Res> {
  __$$ImpactMetricModelImplCopyWithImpl(_$ImpactMetricModelImpl _value,
      $Res Function(_$ImpactMetricModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImpactMetricModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_$ImpactMetricModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImpactMetricModelImpl implements _ImpactMetricModel {
  const _$ImpactMetricModelImpl(
      {required this.name, required this.value, required this.unit});

  factory _$ImpactMetricModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImpactMetricModelImplFromJson(json);

  @override
  final String name;
  @override
  final double value;
  @override
  final String unit;

  @override
  String toString() {
    return 'ImpactMetricModel(name: $name, value: $value, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImpactMetricModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, value, unit);

  /// Create a copy of ImpactMetricModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImpactMetricModelImplCopyWith<_$ImpactMetricModelImpl> get copyWith =>
      __$$ImpactMetricModelImplCopyWithImpl<_$ImpactMetricModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImpactMetricModelImplToJson(
      this,
    );
  }
}

abstract class _ImpactMetricModel implements ImpactMetricModel {
  const factory _ImpactMetricModel(
      {required final String name,
      required final double value,
      required final String unit}) = _$ImpactMetricModelImpl;

  factory _ImpactMetricModel.fromJson(Map<String, dynamic> json) =
      _$ImpactMetricModelImpl.fromJson;

  @override
  String get name;
  @override
  double get value;
  @override
  String get unit;

  /// Create a copy of ImpactMetricModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImpactMetricModelImplCopyWith<_$ImpactMetricModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
