// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocumentResponseModel _$DocumentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DocumentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentResponseModel {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  DocumentResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this DocumentResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentResponseModelCopyWith<DocumentResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentResponseModelCopyWith<$Res> {
  factory $DocumentResponseModelCopyWith(DocumentResponseModel value,
          $Res Function(DocumentResponseModel) then) =
      _$DocumentResponseModelCopyWithImpl<$Res, DocumentResponseModel>;
  @useResult
  $Res call({bool success, String? message, DocumentResponseData data});

  $DocumentResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DocumentResponseModelCopyWithImpl<$Res,
        $Val extends DocumentResponseModel>
    implements $DocumentResponseModelCopyWith<$Res> {
  _$DocumentResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DocumentResponseData,
    ) as $Val);
  }

  /// Create a copy of DocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentResponseDataCopyWith<$Res> get data {
    return $DocumentResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DocumentResponseModelImplCopyWith<$Res>
    implements $DocumentResponseModelCopyWith<$Res> {
  factory _$$DocumentResponseModelImplCopyWith(
          _$DocumentResponseModelImpl value,
          $Res Function(_$DocumentResponseModelImpl) then) =
      __$$DocumentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, DocumentResponseData data});

  @override
  $DocumentResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DocumentResponseModelImplCopyWithImpl<$Res>
    extends _$DocumentResponseModelCopyWithImpl<$Res,
        _$DocumentResponseModelImpl>
    implements _$$DocumentResponseModelImplCopyWith<$Res> {
  __$$DocumentResponseModelImplCopyWithImpl(_$DocumentResponseModelImpl _value,
      $Res Function(_$DocumentResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$DocumentResponseModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DocumentResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentResponseModelImpl implements _DocumentResponseModel {
  _$DocumentResponseModelImpl(
      {required this.success, this.message, required this.data});

  factory _$DocumentResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentResponseModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  @override
  final DocumentResponseData data;

  @override
  String toString() {
    return 'DocumentResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of DocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentResponseModelImplCopyWith<_$DocumentResponseModelImpl>
      get copyWith => __$$DocumentResponseModelImplCopyWithImpl<
          _$DocumentResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentResponseModel implements DocumentResponseModel {
  factory _DocumentResponseModel(
      {required final bool success,
      final String? message,
      required final DocumentResponseData data}) = _$DocumentResponseModelImpl;

  factory _DocumentResponseModel.fromJson(Map<String, dynamic> json) =
      _$DocumentResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  DocumentResponseData get data;

  /// Create a copy of DocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentResponseModelImplCopyWith<_$DocumentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DocumentResponseData _$DocumentResponseDataFromJson(Map<String, dynamic> json) {
  return _DocumentResponseData.fromJson(json);
}

/// @nodoc
mixin _$DocumentResponseData {
  ProjectDocumentModel get document => throw _privateConstructorUsedError;

  /// Serializes this DocumentResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentResponseDataCopyWith<DocumentResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentResponseDataCopyWith<$Res> {
  factory $DocumentResponseDataCopyWith(DocumentResponseData value,
          $Res Function(DocumentResponseData) then) =
      _$DocumentResponseDataCopyWithImpl<$Res, DocumentResponseData>;
  @useResult
  $Res call({ProjectDocumentModel document});

  $ProjectDocumentModelCopyWith<$Res> get document;
}

/// @nodoc
class _$DocumentResponseDataCopyWithImpl<$Res,
        $Val extends DocumentResponseData>
    implements $DocumentResponseDataCopyWith<$Res> {
  _$DocumentResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_value.copyWith(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as ProjectDocumentModel,
    ) as $Val);
  }

  /// Create a copy of DocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectDocumentModelCopyWith<$Res> get document {
    return $ProjectDocumentModelCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DocumentResponseDataImplCopyWith<$Res>
    implements $DocumentResponseDataCopyWith<$Res> {
  factory _$$DocumentResponseDataImplCopyWith(_$DocumentResponseDataImpl value,
          $Res Function(_$DocumentResponseDataImpl) then) =
      __$$DocumentResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectDocumentModel document});

  @override
  $ProjectDocumentModelCopyWith<$Res> get document;
}

/// @nodoc
class __$$DocumentResponseDataImplCopyWithImpl<$Res>
    extends _$DocumentResponseDataCopyWithImpl<$Res, _$DocumentResponseDataImpl>
    implements _$$DocumentResponseDataImplCopyWith<$Res> {
  __$$DocumentResponseDataImplCopyWithImpl(_$DocumentResponseDataImpl _value,
      $Res Function(_$DocumentResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$DocumentResponseDataImpl(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as ProjectDocumentModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentResponseDataImpl implements _DocumentResponseData {
  _$DocumentResponseDataImpl({required this.document});

  factory _$DocumentResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentResponseDataImplFromJson(json);

  @override
  final ProjectDocumentModel document;

  @override
  String toString() {
    return 'DocumentResponseData(document: $document)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentResponseDataImpl &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, document);

  /// Create a copy of DocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentResponseDataImplCopyWith<_$DocumentResponseDataImpl>
      get copyWith =>
          __$$DocumentResponseDataImplCopyWithImpl<_$DocumentResponseDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentResponseDataImplToJson(
      this,
    );
  }
}

abstract class _DocumentResponseData implements DocumentResponseData {
  factory _DocumentResponseData(
          {required final ProjectDocumentModel document}) =
      _$DocumentResponseDataImpl;

  factory _DocumentResponseData.fromJson(Map<String, dynamic> json) =
      _$DocumentResponseDataImpl.fromJson;

  @override
  ProjectDocumentModel get document;

  /// Create a copy of DocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentResponseDataImplCopyWith<_$DocumentResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
