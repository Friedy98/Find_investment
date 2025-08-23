// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_document_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectDocumentResponseModel _$ProjectDocumentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ProjectDocumentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectDocumentResponseModel {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  dynamic get responseData => throw _privateConstructorUsedError;

  /// Serializes this ProjectDocumentResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectDocumentResponseModelCopyWith<ProjectDocumentResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDocumentResponseModelCopyWith<$Res> {
  factory $ProjectDocumentResponseModelCopyWith(
          ProjectDocumentResponseModel value,
          $Res Function(ProjectDocumentResponseModel) then) =
      _$ProjectDocumentResponseModelCopyWithImpl<$Res,
          ProjectDocumentResponseModel>;
  @useResult
  $Res call(
      {bool success,
      String? message,
      @JsonKey(name: 'data') dynamic responseData});
}

/// @nodoc
class _$ProjectDocumentResponseModelCopyWithImpl<$Res,
        $Val extends ProjectDocumentResponseModel>
    implements $ProjectDocumentResponseModelCopyWith<$Res> {
  _$ProjectDocumentResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      responseData: freezed == responseData
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectDocumentResponseModelImplCopyWith<$Res>
    implements $ProjectDocumentResponseModelCopyWith<$Res> {
  factory _$$ProjectDocumentResponseModelImplCopyWith(
          _$ProjectDocumentResponseModelImpl value,
          $Res Function(_$ProjectDocumentResponseModelImpl) then) =
      __$$ProjectDocumentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      String? message,
      @JsonKey(name: 'data') dynamic responseData});
}

/// @nodoc
class __$$ProjectDocumentResponseModelImplCopyWithImpl<$Res>
    extends _$ProjectDocumentResponseModelCopyWithImpl<$Res,
        _$ProjectDocumentResponseModelImpl>
    implements _$$ProjectDocumentResponseModelImplCopyWith<$Res> {
  __$$ProjectDocumentResponseModelImplCopyWithImpl(
      _$ProjectDocumentResponseModelImpl _value,
      $Res Function(_$ProjectDocumentResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_$ProjectDocumentResponseModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      responseData: freezed == responseData
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectDocumentResponseModelImpl
    implements _ProjectDocumentResponseModel {
  _$ProjectDocumentResponseModelImpl(
      {required this.success,
      this.message,
      @JsonKey(name: 'data') required this.responseData});

  factory _$ProjectDocumentResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProjectDocumentResponseModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  @override
  @JsonKey(name: 'data')
  final dynamic responseData;

  @override
  String toString() {
    return 'ProjectDocumentResponseModel(success: $success, message: $message, responseData: $responseData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDocumentResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other.responseData, responseData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(responseData));

  /// Create a copy of ProjectDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDocumentResponseModelImplCopyWith<
          _$ProjectDocumentResponseModelImpl>
      get copyWith => __$$ProjectDocumentResponseModelImplCopyWithImpl<
          _$ProjectDocumentResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectDocumentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectDocumentResponseModel
    implements ProjectDocumentResponseModel {
  factory _ProjectDocumentResponseModel(
          {required final bool success,
          final String? message,
          @JsonKey(name: 'data') required final dynamic responseData}) =
      _$ProjectDocumentResponseModelImpl;

  factory _ProjectDocumentResponseModel.fromJson(Map<String, dynamic> json) =
      _$ProjectDocumentResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  @JsonKey(name: 'data')
  dynamic get responseData;

  /// Create a copy of ProjectDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectDocumentResponseModelImplCopyWith<
          _$ProjectDocumentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProjectDocumentResponseData _$ProjectDocumentResponseDataFromJson(
    Map<String, dynamic> json) {
  return _ProjectDocumentResponseData.fromJson(json);
}

/// @nodoc
mixin _$ProjectDocumentResponseData {
  @JsonKey(name: 'document')
  ProjectDocumentModel? get document => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents')
  List<ProjectDocumentModel>? get documents =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'history')
  List<ProjectDocumentModel>? get history => throw _privateConstructorUsedError;

  /// Serializes this ProjectDocumentResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectDocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectDocumentResponseDataCopyWith<ProjectDocumentResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDocumentResponseDataCopyWith<$Res> {
  factory $ProjectDocumentResponseDataCopyWith(
          ProjectDocumentResponseData value,
          $Res Function(ProjectDocumentResponseData) then) =
      _$ProjectDocumentResponseDataCopyWithImpl<$Res,
          ProjectDocumentResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'document') ProjectDocumentModel? document,
      @JsonKey(name: 'documents') List<ProjectDocumentModel>? documents,
      @JsonKey(name: 'history') List<ProjectDocumentModel>? history});

  $ProjectDocumentModelCopyWith<$Res>? get document;
}

/// @nodoc
class _$ProjectDocumentResponseDataCopyWithImpl<$Res,
        $Val extends ProjectDocumentResponseData>
    implements $ProjectDocumentResponseDataCopyWith<$Res> {
  _$ProjectDocumentResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectDocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = freezed,
    Object? documents = freezed,
    Object? history = freezed,
  }) {
    return _then(_value.copyWith(
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as ProjectDocumentModel?,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ProjectDocumentModel>?,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<ProjectDocumentModel>?,
    ) as $Val);
  }

  /// Create a copy of ProjectDocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectDocumentModelCopyWith<$Res>? get document {
    if (_value.document == null) {
      return null;
    }

    return $ProjectDocumentModelCopyWith<$Res>(_value.document!, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectDocumentResponseDataImplCopyWith<$Res>
    implements $ProjectDocumentResponseDataCopyWith<$Res> {
  factory _$$ProjectDocumentResponseDataImplCopyWith(
          _$ProjectDocumentResponseDataImpl value,
          $Res Function(_$ProjectDocumentResponseDataImpl) then) =
      __$$ProjectDocumentResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'document') ProjectDocumentModel? document,
      @JsonKey(name: 'documents') List<ProjectDocumentModel>? documents,
      @JsonKey(name: 'history') List<ProjectDocumentModel>? history});

  @override
  $ProjectDocumentModelCopyWith<$Res>? get document;
}

/// @nodoc
class __$$ProjectDocumentResponseDataImplCopyWithImpl<$Res>
    extends _$ProjectDocumentResponseDataCopyWithImpl<$Res,
        _$ProjectDocumentResponseDataImpl>
    implements _$$ProjectDocumentResponseDataImplCopyWith<$Res> {
  __$$ProjectDocumentResponseDataImplCopyWithImpl(
      _$ProjectDocumentResponseDataImpl _value,
      $Res Function(_$ProjectDocumentResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectDocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = freezed,
    Object? documents = freezed,
    Object? history = freezed,
  }) {
    return _then(_$ProjectDocumentResponseDataImpl(
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as ProjectDocumentModel?,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ProjectDocumentModel>?,
      history: freezed == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<ProjectDocumentModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectDocumentResponseDataImpl
    implements _ProjectDocumentResponseData {
  _$ProjectDocumentResponseDataImpl(
      {@JsonKey(name: 'document') this.document,
      @JsonKey(name: 'documents') final List<ProjectDocumentModel>? documents,
      @JsonKey(name: 'history') final List<ProjectDocumentModel>? history})
      : _documents = documents,
        _history = history;

  factory _$ProjectDocumentResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProjectDocumentResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'document')
  final ProjectDocumentModel? document;
  final List<ProjectDocumentModel>? _documents;
  @override
  @JsonKey(name: 'documents')
  List<ProjectDocumentModel>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProjectDocumentModel>? _history;
  @override
  @JsonKey(name: 'history')
  List<ProjectDocumentModel>? get history {
    final value = _history;
    if (value == null) return null;
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProjectDocumentResponseData(document: $document, documents: $documents, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDocumentResponseDataImpl &&
            (identical(other.document, document) ||
                other.document == document) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      document,
      const DeepCollectionEquality().hash(_documents),
      const DeepCollectionEquality().hash(_history));

  /// Create a copy of ProjectDocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDocumentResponseDataImplCopyWith<_$ProjectDocumentResponseDataImpl>
      get copyWith => __$$ProjectDocumentResponseDataImplCopyWithImpl<
          _$ProjectDocumentResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectDocumentResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ProjectDocumentResponseData
    implements ProjectDocumentResponseData {
  factory _ProjectDocumentResponseData(
      {@JsonKey(name: 'document') final ProjectDocumentModel? document,
      @JsonKey(name: 'documents') final List<ProjectDocumentModel>? documents,
      @JsonKey(name: 'history')
      final List<ProjectDocumentModel>?
          history}) = _$ProjectDocumentResponseDataImpl;

  factory _ProjectDocumentResponseData.fromJson(Map<String, dynamic> json) =
      _$ProjectDocumentResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'document')
  ProjectDocumentModel? get document;
  @override
  @JsonKey(name: 'documents')
  List<ProjectDocumentModel>? get documents;
  @override
  @JsonKey(name: 'history')
  List<ProjectDocumentModel>? get history;

  /// Create a copy of ProjectDocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectDocumentResponseDataImplCopyWith<_$ProjectDocumentResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
