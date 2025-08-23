// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_document_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DownloadDocumentResponseModel _$DownloadDocumentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DownloadDocumentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DownloadDocumentResponseModel {
  bool get success => throw _privateConstructorUsedError;
  DownloadDocumentResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this DownloadDocumentResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadDocumentResponseModelCopyWith<DownloadDocumentResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadDocumentResponseModelCopyWith<$Res> {
  factory $DownloadDocumentResponseModelCopyWith(
          DownloadDocumentResponseModel value,
          $Res Function(DownloadDocumentResponseModel) then) =
      _$DownloadDocumentResponseModelCopyWithImpl<$Res,
          DownloadDocumentResponseModel>;
  @useResult
  $Res call({bool success, DownloadDocumentResponseData data});

  $DownloadDocumentResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DownloadDocumentResponseModelCopyWithImpl<$Res,
        $Val extends DownloadDocumentResponseModel>
    implements $DownloadDocumentResponseModelCopyWith<$Res> {
  _$DownloadDocumentResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DownloadDocumentResponseData,
    ) as $Val);
  }

  /// Create a copy of DownloadDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DownloadDocumentResponseDataCopyWith<$Res> get data {
    return $DownloadDocumentResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DownloadDocumentResponseModelImplCopyWith<$Res>
    implements $DownloadDocumentResponseModelCopyWith<$Res> {
  factory _$$DownloadDocumentResponseModelImplCopyWith(
          _$DownloadDocumentResponseModelImpl value,
          $Res Function(_$DownloadDocumentResponseModelImpl) then) =
      __$$DownloadDocumentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, DownloadDocumentResponseData data});

  @override
  $DownloadDocumentResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DownloadDocumentResponseModelImplCopyWithImpl<$Res>
    extends _$DownloadDocumentResponseModelCopyWithImpl<$Res,
        _$DownloadDocumentResponseModelImpl>
    implements _$$DownloadDocumentResponseModelImplCopyWith<$Res> {
  __$$DownloadDocumentResponseModelImplCopyWithImpl(
      _$DownloadDocumentResponseModelImpl _value,
      $Res Function(_$DownloadDocumentResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$DownloadDocumentResponseModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DownloadDocumentResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadDocumentResponseModelImpl
    implements _DownloadDocumentResponseModel {
  _$DownloadDocumentResponseModelImpl(
      {required this.success, required this.data});

  factory _$DownloadDocumentResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DownloadDocumentResponseModelImplFromJson(json);

  @override
  final bool success;
  @override
  final DownloadDocumentResponseData data;

  @override
  String toString() {
    return 'DownloadDocumentResponseModel(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadDocumentResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of DownloadDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadDocumentResponseModelImplCopyWith<
          _$DownloadDocumentResponseModelImpl>
      get copyWith => __$$DownloadDocumentResponseModelImplCopyWithImpl<
          _$DownloadDocumentResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadDocumentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DownloadDocumentResponseModel
    implements DownloadDocumentResponseModel {
  factory _DownloadDocumentResponseModel(
          {required final bool success,
          required final DownloadDocumentResponseData data}) =
      _$DownloadDocumentResponseModelImpl;

  factory _DownloadDocumentResponseModel.fromJson(Map<String, dynamic> json) =
      _$DownloadDocumentResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  DownloadDocumentResponseData get data;

  /// Create a copy of DownloadDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadDocumentResponseModelImplCopyWith<
          _$DownloadDocumentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DownloadDocumentResponseData _$DownloadDocumentResponseDataFromJson(
    Map<String, dynamic> json) {
  return _DownloadDocumentResponseData.fromJson(json);
}

/// @nodoc
mixin _$DownloadDocumentResponseData {
  DownloadDocument get document => throw _privateConstructorUsedError;

  /// Serializes this DownloadDocumentResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadDocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadDocumentResponseDataCopyWith<DownloadDocumentResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadDocumentResponseDataCopyWith<$Res> {
  factory $DownloadDocumentResponseDataCopyWith(
          DownloadDocumentResponseData value,
          $Res Function(DownloadDocumentResponseData) then) =
      _$DownloadDocumentResponseDataCopyWithImpl<$Res,
          DownloadDocumentResponseData>;
  @useResult
  $Res call({DownloadDocument document});

  $DownloadDocumentCopyWith<$Res> get document;
}

/// @nodoc
class _$DownloadDocumentResponseDataCopyWithImpl<$Res,
        $Val extends DownloadDocumentResponseData>
    implements $DownloadDocumentResponseDataCopyWith<$Res> {
  _$DownloadDocumentResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadDocumentResponseData
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
              as DownloadDocument,
    ) as $Val);
  }

  /// Create a copy of DownloadDocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DownloadDocumentCopyWith<$Res> get document {
    return $DownloadDocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DownloadDocumentResponseDataImplCopyWith<$Res>
    implements $DownloadDocumentResponseDataCopyWith<$Res> {
  factory _$$DownloadDocumentResponseDataImplCopyWith(
          _$DownloadDocumentResponseDataImpl value,
          $Res Function(_$DownloadDocumentResponseDataImpl) then) =
      __$$DownloadDocumentResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DownloadDocument document});

  @override
  $DownloadDocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$$DownloadDocumentResponseDataImplCopyWithImpl<$Res>
    extends _$DownloadDocumentResponseDataCopyWithImpl<$Res,
        _$DownloadDocumentResponseDataImpl>
    implements _$$DownloadDocumentResponseDataImplCopyWith<$Res> {
  __$$DownloadDocumentResponseDataImplCopyWithImpl(
      _$DownloadDocumentResponseDataImpl _value,
      $Res Function(_$DownloadDocumentResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadDocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$DownloadDocumentResponseDataImpl(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as DownloadDocument,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadDocumentResponseDataImpl
    implements _DownloadDocumentResponseData {
  _$DownloadDocumentResponseDataImpl({required this.document});

  factory _$DownloadDocumentResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DownloadDocumentResponseDataImplFromJson(json);

  @override
  final DownloadDocument document;

  @override
  String toString() {
    return 'DownloadDocumentResponseData(document: $document)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadDocumentResponseDataImpl &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, document);

  /// Create a copy of DownloadDocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadDocumentResponseDataImplCopyWith<
          _$DownloadDocumentResponseDataImpl>
      get copyWith => __$$DownloadDocumentResponseDataImplCopyWithImpl<
          _$DownloadDocumentResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadDocumentResponseDataImplToJson(
      this,
    );
  }
}

abstract class _DownloadDocumentResponseData
    implements DownloadDocumentResponseData {
  factory _DownloadDocumentResponseData(
          {required final DownloadDocument document}) =
      _$DownloadDocumentResponseDataImpl;

  factory _DownloadDocumentResponseData.fromJson(Map<String, dynamic> json) =
      _$DownloadDocumentResponseDataImpl.fromJson;

  @override
  DownloadDocument get document;

  /// Create a copy of DownloadDocumentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadDocumentResponseDataImplCopyWith<
          _$DownloadDocumentResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DownloadDocument _$DownloadDocumentFromJson(Map<String, dynamic> json) {
  return _DownloadDocument.fromJson(json);
}

/// @nodoc
mixin _$DownloadDocument {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this DownloadDocument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadDocumentCopyWith<DownloadDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadDocumentCopyWith<$Res> {
  factory $DownloadDocumentCopyWith(
          DownloadDocument value, $Res Function(DownloadDocument) then) =
      _$DownloadDocumentCopyWithImpl<$Res, DownloadDocument>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$DownloadDocumentCopyWithImpl<$Res, $Val extends DownloadDocument>
    implements $DownloadDocumentCopyWith<$Res> {
  _$DownloadDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadDocumentImplCopyWith<$Res>
    implements $DownloadDocumentCopyWith<$Res> {
  factory _$$DownloadDocumentImplCopyWith(_$DownloadDocumentImpl value,
          $Res Function(_$DownloadDocumentImpl) then) =
      __$$DownloadDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$DownloadDocumentImplCopyWithImpl<$Res>
    extends _$DownloadDocumentCopyWithImpl<$Res, _$DownloadDocumentImpl>
    implements _$$DownloadDocumentImplCopyWith<$Res> {
  __$$DownloadDocumentImplCopyWithImpl(_$DownloadDocumentImpl _value,
      $Res Function(_$DownloadDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$DownloadDocumentImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadDocumentImpl implements _DownloadDocument {
  _$DownloadDocumentImpl({required this.url});

  factory _$DownloadDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadDocumentImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'DownloadDocument(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadDocumentImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of DownloadDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadDocumentImplCopyWith<_$DownloadDocumentImpl> get copyWith =>
      __$$DownloadDocumentImplCopyWithImpl<_$DownloadDocumentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadDocumentImplToJson(
      this,
    );
  }
}

abstract class _DownloadDocument implements DownloadDocument {
  factory _DownloadDocument({required final String url}) =
      _$DownloadDocumentImpl;

  factory _DownloadDocument.fromJson(Map<String, dynamic> json) =
      _$DownloadDocumentImpl.fromJson;

  @override
  String get url;

  /// Create a copy of DownloadDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadDocumentImplCopyWith<_$DownloadDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
