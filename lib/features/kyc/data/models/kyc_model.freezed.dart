// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KycModel _$KycModelFromJson(Map<String, dynamic> json) {
  return _KycModel.fromJson(json);
}

/// @nodoc
mixin _$KycModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: 'not_submitted')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get submittedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get rejectedAt => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents', defaultValue: [])
  List<DocumentModel> get documents => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'verification',
      fromJson: _verificationFromJson,
      toJson: _verificationToJson)
  VerificationModel get verification => throw _privateConstructorUsedError;
  @JsonKey(name: 'auditLog', defaultValue: [])
  List<AuditLogModel> get auditLog => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this KycModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KycModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycModelCopyWith<KycModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycModelCopyWith<$Res> {
  factory $KycModelCopyWith(KycModel value, $Res Function(KycModel) then) =
      _$KycModelCopyWithImpl<$Res, KycModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      dynamic user,
      @JsonKey(name: 'status', defaultValue: 'not_submitted') String status,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? submittedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? approvedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? rejectedAt,
      String? rejectionReason,
      @JsonKey(name: 'documents', defaultValue: [])
      List<DocumentModel> documents,
      @JsonKey(
          name: 'verification',
          fromJson: _verificationFromJson,
          toJson: _verificationToJson)
      VerificationModel verification,
      @JsonKey(name: 'auditLog', defaultValue: []) List<AuditLogModel> auditLog,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});

  $VerificationModelCopyWith<$Res> get verification;
}

/// @nodoc
class _$KycModelCopyWithImpl<$Res, $Val extends KycModel>
    implements $KycModelCopyWith<$Res> {
  _$KycModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? status = null,
    Object? submittedAt = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? rejectionReason = freezed,
    Object? documents = null,
    Object? verification = null,
    Object? auditLog = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<DocumentModel>,
      verification: null == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as VerificationModel,
      auditLog: null == auditLog
          ? _value.auditLog
          : auditLog // ignore: cast_nullable_to_non_nullable
              as List<AuditLogModel>,
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

  /// Create a copy of KycModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerificationModelCopyWith<$Res> get verification {
    return $VerificationModelCopyWith<$Res>(_value.verification, (value) {
      return _then(_value.copyWith(verification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KycModelImplCopyWith<$Res>
    implements $KycModelCopyWith<$Res> {
  factory _$$KycModelImplCopyWith(
          _$KycModelImpl value, $Res Function(_$KycModelImpl) then) =
      __$$KycModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      dynamic user,
      @JsonKey(name: 'status', defaultValue: 'not_submitted') String status,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? submittedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? approvedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? rejectedAt,
      String? rejectionReason,
      @JsonKey(name: 'documents', defaultValue: [])
      List<DocumentModel> documents,
      @JsonKey(
          name: 'verification',
          fromJson: _verificationFromJson,
          toJson: _verificationToJson)
      VerificationModel verification,
      @JsonKey(name: 'auditLog', defaultValue: []) List<AuditLogModel> auditLog,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});

  @override
  $VerificationModelCopyWith<$Res> get verification;
}

/// @nodoc
class __$$KycModelImplCopyWithImpl<$Res>
    extends _$KycModelCopyWithImpl<$Res, _$KycModelImpl>
    implements _$$KycModelImplCopyWith<$Res> {
  __$$KycModelImplCopyWithImpl(
      _$KycModelImpl _value, $Res Function(_$KycModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? status = null,
    Object? submittedAt = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? rejectionReason = freezed,
    Object? documents = null,
    Object? verification = null,
    Object? auditLog = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$KycModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<DocumentModel>,
      verification: null == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as VerificationModel,
      auditLog: null == auditLog
          ? _value._auditLog
          : auditLog // ignore: cast_nullable_to_non_nullable
              as List<AuditLogModel>,
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
class _$KycModelImpl extends _KycModel {
  _$KycModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      required this.user,
      @JsonKey(name: 'status', defaultValue: 'not_submitted')
      required this.status,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.submittedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.approvedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.rejectedAt,
      this.rejectionReason,
      @JsonKey(name: 'documents', defaultValue: [])
      required final List<DocumentModel> documents,
      @JsonKey(
          name: 'verification',
          fromJson: _verificationFromJson,
          toJson: _verificationToJson)
      required this.verification,
      @JsonKey(name: 'auditLog', defaultValue: [])
      required final List<AuditLogModel> auditLog,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt})
      : _documents = documents,
        _auditLog = auditLog,
        super._();

  factory _$KycModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic user;
  @override
  @JsonKey(name: 'status', defaultValue: 'not_submitted')
  final String status;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? submittedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? approvedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? rejectedAt;
  @override
  final String? rejectionReason;
  final List<DocumentModel> _documents;
  @override
  @JsonKey(name: 'documents', defaultValue: [])
  List<DocumentModel> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  @JsonKey(
      name: 'verification',
      fromJson: _verificationFromJson,
      toJson: _verificationToJson)
  final VerificationModel verification;
  final List<AuditLogModel> _auditLog;
  @override
  @JsonKey(name: 'auditLog', defaultValue: [])
  List<AuditLogModel> get auditLog {
    if (_auditLog is EqualUnmodifiableListView) return _auditLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_auditLog);
  }

  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'KycModel(id: $id, user: $user, status: $status, submittedAt: $submittedAt, approvedAt: $approvedAt, rejectedAt: $rejectedAt, rejectionReason: $rejectionReason, documents: $documents, verification: $verification, auditLog: $auditLog, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.verification, verification) ||
                other.verification == verification) &&
            const DeepCollectionEquality().equals(other._auditLog, _auditLog) &&
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
      const DeepCollectionEquality().hash(user),
      status,
      submittedAt,
      approvedAt,
      rejectedAt,
      rejectionReason,
      const DeepCollectionEquality().hash(_documents),
      verification,
      const DeepCollectionEquality().hash(_auditLog),
      createdAt,
      updatedAt);

  /// Create a copy of KycModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycModelImplCopyWith<_$KycModelImpl> get copyWith =>
      __$$KycModelImplCopyWithImpl<_$KycModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycModelImplToJson(
      this,
    );
  }
}

abstract class _KycModel extends KycModel {
  factory _KycModel(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      required final dynamic user,
      @JsonKey(name: 'status', defaultValue: 'not_submitted')
      required final String status,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? submittedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? approvedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? rejectedAt,
      final String? rejectionReason,
      @JsonKey(name: 'documents', defaultValue: [])
      required final List<DocumentModel> documents,
      @JsonKey(
          name: 'verification',
          fromJson: _verificationFromJson,
          toJson: _verificationToJson)
      required final VerificationModel verification,
      @JsonKey(name: 'auditLog', defaultValue: [])
      required final List<AuditLogModel> auditLog,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt}) = _$KycModelImpl;
  _KycModel._() : super._();

  factory _KycModel.fromJson(Map<String, dynamic> json) =
      _$KycModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get user;
  @override
  @JsonKey(name: 'status', defaultValue: 'not_submitted')
  String get status;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get submittedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get approvedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get rejectedAt;
  @override
  String? get rejectionReason;
  @override
  @JsonKey(name: 'documents', defaultValue: [])
  List<DocumentModel> get documents;
  @override
  @JsonKey(
      name: 'verification',
      fromJson: _verificationFromJson,
      toJson: _verificationToJson)
  VerificationModel get verification;
  @override
  @JsonKey(name: 'auditLog', defaultValue: [])
  List<AuditLogModel> get auditLog;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;

  /// Create a copy of KycModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycModelImplCopyWith<_$KycModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DocumentModel _$DocumentModelFromJson(Map<String, dynamic> json) {
  return _DocumentModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category', defaultValue: 'kyc')
  String get category => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_id')
  String? get publicId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get uploadedAt => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get verified => throw _privateConstructorUsedError;

  /// Serializes this DocumentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentModelCopyWith<DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentModelCopyWith<$Res> {
  factory $DocumentModelCopyWith(
          DocumentModel value, $Res Function(DocumentModel) then) =
      _$DocumentModelCopyWithImpl<$Res, DocumentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'category', defaultValue: 'kyc') String category,
      String type,
      String url,
      String? filename,
      @JsonKey(name: 'public_id') String? publicId,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? uploadedAt,
      @JsonKey(defaultValue: false) bool verified});
}

/// @nodoc
class _$DocumentModelCopyWithImpl<$Res, $Val extends DocumentModel>
    implements $DocumentModelCopyWith<$Res> {
  _$DocumentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? type = null,
    Object? url = null,
    Object? filename = freezed,
    Object? publicId = freezed,
    Object? uploadedAt = freezed,
    Object? verified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      publicId: freezed == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentModelImplCopyWith<$Res>
    implements $DocumentModelCopyWith<$Res> {
  factory _$$DocumentModelImplCopyWith(
          _$DocumentModelImpl value, $Res Function(_$DocumentModelImpl) then) =
      __$$DocumentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'category', defaultValue: 'kyc') String category,
      String type,
      String url,
      String? filename,
      @JsonKey(name: 'public_id') String? publicId,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? uploadedAt,
      @JsonKey(defaultValue: false) bool verified});
}

/// @nodoc
class __$$DocumentModelImplCopyWithImpl<$Res>
    extends _$DocumentModelCopyWithImpl<$Res, _$DocumentModelImpl>
    implements _$$DocumentModelImplCopyWith<$Res> {
  __$$DocumentModelImplCopyWithImpl(
      _$DocumentModelImpl _value, $Res Function(_$DocumentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? type = null,
    Object? url = null,
    Object? filename = freezed,
    Object? publicId = freezed,
    Object? uploadedAt = freezed,
    Object? verified = null,
  }) {
    return _then(_$DocumentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      publicId: freezed == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentModelImpl implements _DocumentModel {
  const _$DocumentModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'category', defaultValue: 'kyc') required this.category,
      required this.type,
      required this.url,
      this.filename,
      @JsonKey(name: 'public_id') this.publicId,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.uploadedAt,
      @JsonKey(defaultValue: false) required this.verified});

  factory _$DocumentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'category', defaultValue: 'kyc')
  final String category;
  @override
  final String type;
  @override
  final String url;
  @override
  final String? filename;
  @override
  @JsonKey(name: 'public_id')
  final String? publicId;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? uploadedAt;
  @override
  @JsonKey(defaultValue: false)
  final bool verified;

  @override
  String toString() {
    return 'DocumentModel(id: $id, category: $category, type: $type, url: $url, filename: $filename, publicId: $publicId, uploadedAt: $uploadedAt, verified: $verified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.publicId, publicId) ||
                other.publicId == publicId) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, category, type, url,
      filename, publicId, uploadedAt, verified);

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentModelImplCopyWith<_$DocumentModelImpl> get copyWith =>
      __$$DocumentModelImplCopyWithImpl<_$DocumentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentModel implements DocumentModel {
  const factory _DocumentModel(
          {@JsonKey(name: '_id') required final String id,
          @JsonKey(name: 'category', defaultValue: 'kyc')
          required final String category,
          required final String type,
          required final String url,
          final String? filename,
          @JsonKey(name: 'public_id') final String? publicId,
          @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
          final DateTime? uploadedAt,
          @JsonKey(defaultValue: false) required final bool verified}) =
      _$DocumentModelImpl;

  factory _DocumentModel.fromJson(Map<String, dynamic> json) =
      _$DocumentModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'category', defaultValue: 'kyc')
  String get category;
  @override
  String get type;
  @override
  String get url;
  @override
  String? get filename;
  @override
  @JsonKey(name: 'public_id')
  String? get publicId;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get uploadedAt;
  @override
  @JsonKey(defaultValue: false)
  bool get verified;

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentModelImplCopyWith<_$DocumentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerificationModel _$VerificationModelFromJson(Map<String, dynamic> json) {
  return _VerificationModel.fromJson(json);
}

/// @nodoc
mixin _$VerificationModel {
  @JsonKey(
      name: 'identity',
      fromJson: _identityVerificationFromJson,
      toJson: _identityVerificationToJson)
  IdentityVerificationModel get identity => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'background',
      fromJson: _backgroundVerificationFromJson,
      toJson: _backgroundVerificationToJson)
  BackgroundVerificationModel get background =>
      throw _privateConstructorUsedError;

  /// Serializes this VerificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationModelCopyWith<VerificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationModelCopyWith<$Res> {
  factory $VerificationModelCopyWith(
          VerificationModel value, $Res Function(VerificationModel) then) =
      _$VerificationModelCopyWithImpl<$Res, VerificationModel>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'identity',
          fromJson: _identityVerificationFromJson,
          toJson: _identityVerificationToJson)
      IdentityVerificationModel identity,
      @JsonKey(
          name: 'background',
          fromJson: _backgroundVerificationFromJson,
          toJson: _backgroundVerificationToJson)
      BackgroundVerificationModel background});

  $IdentityVerificationModelCopyWith<$Res> get identity;
  $BackgroundVerificationModelCopyWith<$Res> get background;
}

/// @nodoc
class _$VerificationModelCopyWithImpl<$Res, $Val extends VerificationModel>
    implements $VerificationModelCopyWith<$Res> {
  _$VerificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identity = null,
    Object? background = null,
  }) {
    return _then(_value.copyWith(
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as IdentityVerificationModel,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as BackgroundVerificationModel,
    ) as $Val);
  }

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdentityVerificationModelCopyWith<$Res> get identity {
    return $IdentityVerificationModelCopyWith<$Res>(_value.identity, (value) {
      return _then(_value.copyWith(identity: value) as $Val);
    });
  }

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundVerificationModelCopyWith<$Res> get background {
    return $BackgroundVerificationModelCopyWith<$Res>(_value.background,
        (value) {
      return _then(_value.copyWith(background: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationModelImplCopyWith<$Res>
    implements $VerificationModelCopyWith<$Res> {
  factory _$$VerificationModelImplCopyWith(_$VerificationModelImpl value,
          $Res Function(_$VerificationModelImpl) then) =
      __$$VerificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'identity',
          fromJson: _identityVerificationFromJson,
          toJson: _identityVerificationToJson)
      IdentityVerificationModel identity,
      @JsonKey(
          name: 'background',
          fromJson: _backgroundVerificationFromJson,
          toJson: _backgroundVerificationToJson)
      BackgroundVerificationModel background});

  @override
  $IdentityVerificationModelCopyWith<$Res> get identity;
  @override
  $BackgroundVerificationModelCopyWith<$Res> get background;
}

/// @nodoc
class __$$VerificationModelImplCopyWithImpl<$Res>
    extends _$VerificationModelCopyWithImpl<$Res, _$VerificationModelImpl>
    implements _$$VerificationModelImplCopyWith<$Res> {
  __$$VerificationModelImplCopyWithImpl(_$VerificationModelImpl _value,
      $Res Function(_$VerificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identity = null,
    Object? background = null,
  }) {
    return _then(_$VerificationModelImpl(
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as IdentityVerificationModel,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as BackgroundVerificationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationModelImpl implements _VerificationModel {
  const _$VerificationModelImpl(
      {@JsonKey(
          name: 'identity',
          fromJson: _identityVerificationFromJson,
          toJson: _identityVerificationToJson)
      required this.identity,
      @JsonKey(
          name: 'background',
          fromJson: _backgroundVerificationFromJson,
          toJson: _backgroundVerificationToJson)
      required this.background});

  factory _$VerificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationModelImplFromJson(json);

  @override
  @JsonKey(
      name: 'identity',
      fromJson: _identityVerificationFromJson,
      toJson: _identityVerificationToJson)
  final IdentityVerificationModel identity;
  @override
  @JsonKey(
      name: 'background',
      fromJson: _backgroundVerificationFromJson,
      toJson: _backgroundVerificationToJson)
  final BackgroundVerificationModel background;

  @override
  String toString() {
    return 'VerificationModel(identity: $identity, background: $background)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationModelImpl &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.background, background) ||
                other.background == background));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identity, background);

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationModelImplCopyWith<_$VerificationModelImpl> get copyWith =>
      __$$VerificationModelImplCopyWithImpl<_$VerificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationModelImplToJson(
      this,
    );
  }
}

abstract class _VerificationModel implements VerificationModel {
  const factory _VerificationModel(
          {@JsonKey(
              name: 'identity',
              fromJson: _identityVerificationFromJson,
              toJson: _identityVerificationToJson)
          required final IdentityVerificationModel identity,
          @JsonKey(
              name: 'background',
              fromJson: _backgroundVerificationFromJson,
              toJson: _backgroundVerificationToJson)
          required final BackgroundVerificationModel background}) =
      _$VerificationModelImpl;

  factory _VerificationModel.fromJson(Map<String, dynamic> json) =
      _$VerificationModelImpl.fromJson;

  @override
  @JsonKey(
      name: 'identity',
      fromJson: _identityVerificationFromJson,
      toJson: _identityVerificationToJson)
  IdentityVerificationModel get identity;
  @override
  @JsonKey(
      name: 'background',
      fromJson: _backgroundVerificationFromJson,
      toJson: _backgroundVerificationToJson)
  BackgroundVerificationModel get background;

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationModelImplCopyWith<_$VerificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IdentityVerificationModel _$IdentityVerificationModelFromJson(
    Map<String, dynamic> json) {
  return _IdentityVerificationModel.fromJson(json);
}

/// @nodoc
mixin _$IdentityVerificationModel {
  @JsonKey(defaultValue: false)
  bool get verified => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get verifiedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get verifiedBy => throw _privateConstructorUsedError;

  /// Serializes this IdentityVerificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IdentityVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdentityVerificationModelCopyWith<IdentityVerificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityVerificationModelCopyWith<$Res> {
  factory $IdentityVerificationModelCopyWith(IdentityVerificationModel value,
          $Res Function(IdentityVerificationModel) then) =
      _$IdentityVerificationModelCopyWithImpl<$Res, IdentityVerificationModel>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: false) bool verified,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? verifiedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      dynamic verifiedBy});
}

/// @nodoc
class _$IdentityVerificationModelCopyWithImpl<$Res,
        $Val extends IdentityVerificationModel>
    implements $IdentityVerificationModelCopyWith<$Res> {
  _$IdentityVerificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdentityVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verified = null,
    Object? verifiedAt = freezed,
    Object? verifiedBy = freezed,
  }) {
    return _then(_value.copyWith(
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedBy: freezed == verifiedBy
          ? _value.verifiedBy
          : verifiedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdentityVerificationModelImplCopyWith<$Res>
    implements $IdentityVerificationModelCopyWith<$Res> {
  factory _$$IdentityVerificationModelImplCopyWith(
          _$IdentityVerificationModelImpl value,
          $Res Function(_$IdentityVerificationModelImpl) then) =
      __$$IdentityVerificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: false) bool verified,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? verifiedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      dynamic verifiedBy});
}

/// @nodoc
class __$$IdentityVerificationModelImplCopyWithImpl<$Res>
    extends _$IdentityVerificationModelCopyWithImpl<$Res,
        _$IdentityVerificationModelImpl>
    implements _$$IdentityVerificationModelImplCopyWith<$Res> {
  __$$IdentityVerificationModelImplCopyWithImpl(
      _$IdentityVerificationModelImpl _value,
      $Res Function(_$IdentityVerificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdentityVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verified = null,
    Object? verifiedAt = freezed,
    Object? verifiedBy = freezed,
  }) {
    return _then(_$IdentityVerificationModelImpl(
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedBy: freezed == verifiedBy
          ? _value.verifiedBy
          : verifiedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdentityVerificationModelImpl implements _IdentityVerificationModel {
  const _$IdentityVerificationModelImpl(
      {@JsonKey(defaultValue: false) required this.verified,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.verifiedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) this.verifiedBy});

  factory _$IdentityVerificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentityVerificationModelImplFromJson(json);

  @override
  @JsonKey(defaultValue: false)
  final bool verified;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? verifiedAt;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  final dynamic verifiedBy;

  @override
  String toString() {
    return 'IdentityVerificationModel(verified: $verified, verifiedAt: $verifiedAt, verifiedBy: $verifiedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentityVerificationModelImpl &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            const DeepCollectionEquality()
                .equals(other.verifiedBy, verifiedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, verified, verifiedAt,
      const DeepCollectionEquality().hash(verifiedBy));

  /// Create a copy of IdentityVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentityVerificationModelImplCopyWith<_$IdentityVerificationModelImpl>
      get copyWith => __$$IdentityVerificationModelImplCopyWithImpl<
          _$IdentityVerificationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentityVerificationModelImplToJson(
      this,
    );
  }
}

abstract class _IdentityVerificationModel implements IdentityVerificationModel {
  const factory _IdentityVerificationModel(
      {@JsonKey(defaultValue: false) required final bool verified,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? verifiedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      final dynamic verifiedBy}) = _$IdentityVerificationModelImpl;

  factory _IdentityVerificationModel.fromJson(Map<String, dynamic> json) =
      _$IdentityVerificationModelImpl.fromJson;

  @override
  @JsonKey(defaultValue: false)
  bool get verified;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get verifiedAt;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get verifiedBy;

  /// Create a copy of IdentityVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdentityVerificationModelImplCopyWith<_$IdentityVerificationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BackgroundVerificationModel _$BackgroundVerificationModelFromJson(
    Map<String, dynamic> json) {
  return _BackgroundVerificationModel.fromJson(json);
}

/// @nodoc
mixin _$BackgroundVerificationModel {
  @JsonKey(defaultValue: false)
  bool get verified => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get verifiedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get verifiedBy => throw _privateConstructorUsedError;
  String? get report => throw _privateConstructorUsedError;

  /// Serializes this BackgroundVerificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BackgroundVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BackgroundVerificationModelCopyWith<BackgroundVerificationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundVerificationModelCopyWith<$Res> {
  factory $BackgroundVerificationModelCopyWith(
          BackgroundVerificationModel value,
          $Res Function(BackgroundVerificationModel) then) =
      _$BackgroundVerificationModelCopyWithImpl<$Res,
          BackgroundVerificationModel>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: false) bool verified,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? verifiedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic verifiedBy,
      String? report});
}

/// @nodoc
class _$BackgroundVerificationModelCopyWithImpl<$Res,
        $Val extends BackgroundVerificationModel>
    implements $BackgroundVerificationModelCopyWith<$Res> {
  _$BackgroundVerificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BackgroundVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verified = null,
    Object? verifiedAt = freezed,
    Object? verifiedBy = freezed,
    Object? report = freezed,
  }) {
    return _then(_value.copyWith(
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedBy: freezed == verifiedBy
          ? _value.verifiedBy
          : verifiedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackgroundVerificationModelImplCopyWith<$Res>
    implements $BackgroundVerificationModelCopyWith<$Res> {
  factory _$$BackgroundVerificationModelImplCopyWith(
          _$BackgroundVerificationModelImpl value,
          $Res Function(_$BackgroundVerificationModelImpl) then) =
      __$$BackgroundVerificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: false) bool verified,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? verifiedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) dynamic verifiedBy,
      String? report});
}

/// @nodoc
class __$$BackgroundVerificationModelImplCopyWithImpl<$Res>
    extends _$BackgroundVerificationModelCopyWithImpl<$Res,
        _$BackgroundVerificationModelImpl>
    implements _$$BackgroundVerificationModelImplCopyWith<$Res> {
  __$$BackgroundVerificationModelImplCopyWithImpl(
      _$BackgroundVerificationModelImpl _value,
      $Res Function(_$BackgroundVerificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackgroundVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verified = null,
    Object? verifiedAt = freezed,
    Object? verifiedBy = freezed,
    Object? report = freezed,
  }) {
    return _then(_$BackgroundVerificationModelImpl(
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedBy: freezed == verifiedBy
          ? _value.verifiedBy
          : verifiedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackgroundVerificationModelImpl
    implements _BackgroundVerificationModel {
  const _$BackgroundVerificationModelImpl(
      {@JsonKey(defaultValue: false) required this.verified,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.verifiedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) this.verifiedBy,
      this.report});

  factory _$BackgroundVerificationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BackgroundVerificationModelImplFromJson(json);

  @override
  @JsonKey(defaultValue: false)
  final bool verified;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? verifiedAt;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  final dynamic verifiedBy;
  @override
  final String? report;

  @override
  String toString() {
    return 'BackgroundVerificationModel(verified: $verified, verifiedAt: $verifiedAt, verifiedBy: $verifiedBy, report: $report)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackgroundVerificationModelImpl &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            const DeepCollectionEquality()
                .equals(other.verifiedBy, verifiedBy) &&
            (identical(other.report, report) || other.report == report));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, verified, verifiedAt,
      const DeepCollectionEquality().hash(verifiedBy), report);

  /// Create a copy of BackgroundVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundVerificationModelImplCopyWith<_$BackgroundVerificationModelImpl>
      get copyWith => __$$BackgroundVerificationModelImplCopyWithImpl<
          _$BackgroundVerificationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgroundVerificationModelImplToJson(
      this,
    );
  }
}

abstract class _BackgroundVerificationModel
    implements BackgroundVerificationModel {
  const factory _BackgroundVerificationModel(
      {@JsonKey(defaultValue: false) required final bool verified,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? verifiedAt,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      final dynamic verifiedBy,
      final String? report}) = _$BackgroundVerificationModelImpl;

  factory _BackgroundVerificationModel.fromJson(Map<String, dynamic> json) =
      _$BackgroundVerificationModelImpl.fromJson;

  @override
  @JsonKey(defaultValue: false)
  bool get verified;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get verifiedAt;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get verifiedBy;
  @override
  String? get report;

  /// Create a copy of BackgroundVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackgroundVerificationModelImplCopyWith<_$BackgroundVerificationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuditLogModel _$AuditLogModelFromJson(Map<String, dynamic> json) {
  return _AuditLogModel.fromJson(json);
}

/// @nodoc
mixin _$AuditLogModel {
  String get action => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get performedBy => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  dynamic get details => throw _privateConstructorUsedError;

  /// Serializes this AuditLogModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuditLogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuditLogModelCopyWith<AuditLogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditLogModelCopyWith<$Res> {
  factory $AuditLogModelCopyWith(
          AuditLogModel value, $Res Function(AuditLogModel) then) =
      _$AuditLogModelCopyWithImpl<$Res, AuditLogModel>;
  @useResult
  $Res call(
      {String action,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      dynamic performedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? timestamp,
      @JsonKey(name: 'details') dynamic details});
}

/// @nodoc
class _$AuditLogModelCopyWithImpl<$Res, $Val extends AuditLogModel>
    implements $AuditLogModelCopyWith<$Res> {
  _$AuditLogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuditLogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? performedBy = freezed,
    Object? timestamp = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      performedBy: freezed == performedBy
          ? _value.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuditLogModelImplCopyWith<$Res>
    implements $AuditLogModelCopyWith<$Res> {
  factory _$$AuditLogModelImplCopyWith(
          _$AuditLogModelImpl value, $Res Function(_$AuditLogModelImpl) then) =
      __$$AuditLogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String action,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      dynamic performedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? timestamp,
      @JsonKey(name: 'details') dynamic details});
}

/// @nodoc
class __$$AuditLogModelImplCopyWithImpl<$Res>
    extends _$AuditLogModelCopyWithImpl<$Res, _$AuditLogModelImpl>
    implements _$$AuditLogModelImplCopyWith<$Res> {
  __$$AuditLogModelImplCopyWithImpl(
      _$AuditLogModelImpl _value, $Res Function(_$AuditLogModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuditLogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? performedBy = freezed,
    Object? timestamp = freezed,
    Object? details = freezed,
  }) {
    return _then(_$AuditLogModelImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      performedBy: freezed == performedBy
          ? _value.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuditLogModelImpl implements _AuditLogModel {
  const _$AuditLogModelImpl(
      {required this.action,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) this.performedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.timestamp,
      @JsonKey(name: 'details') this.details});

  factory _$AuditLogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuditLogModelImplFromJson(json);

  @override
  final String action;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  final dynamic performedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? timestamp;
  @override
  @JsonKey(name: 'details')
  final dynamic details;

  @override
  String toString() {
    return 'AuditLogModel(action: $action, performedBy: $performedBy, timestamp: $timestamp, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuditLogModelImpl &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality()
                .equals(other.performedBy, performedBy) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other.details, details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      action,
      const DeepCollectionEquality().hash(performedBy),
      timestamp,
      const DeepCollectionEquality().hash(details));

  /// Create a copy of AuditLogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuditLogModelImplCopyWith<_$AuditLogModelImpl> get copyWith =>
      __$$AuditLogModelImplCopyWithImpl<_$AuditLogModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuditLogModelImplToJson(
      this,
    );
  }
}

abstract class _AuditLogModel implements AuditLogModel {
  const factory _AuditLogModel(
      {required final String action,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      final dynamic performedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? timestamp,
      @JsonKey(name: 'details') final dynamic details}) = _$AuditLogModelImpl;

  factory _AuditLogModel.fromJson(Map<String, dynamic> json) =
      _$AuditLogModelImpl.fromJson;

  @override
  String get action;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  dynamic get performedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get timestamp;
  @override
  @JsonKey(name: 'details')
  dynamic get details;

  /// Create a copy of AuditLogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuditLogModelImplCopyWith<_$AuditLogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
