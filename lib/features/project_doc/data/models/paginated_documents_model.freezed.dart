// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_documents_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedDocumentsModel _$PaginatedDocumentsModelFromJson(
    Map<String, dynamic> json) {
  return _PaginatedDocumentsModel.fromJson(json);
}

/// @nodoc
mixin _$PaginatedDocumentsModel {
  bool get success => throw _privateConstructorUsedError;
  PaginatedDocumentsData get data => throw _privateConstructorUsedError;

  /// Serializes this PaginatedDocumentsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginatedDocumentsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedDocumentsModelCopyWith<PaginatedDocumentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDocumentsModelCopyWith<$Res> {
  factory $PaginatedDocumentsModelCopyWith(PaginatedDocumentsModel value,
          $Res Function(PaginatedDocumentsModel) then) =
      _$PaginatedDocumentsModelCopyWithImpl<$Res, PaginatedDocumentsModel>;
  @useResult
  $Res call({bool success, PaginatedDocumentsData data});

  $PaginatedDocumentsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PaginatedDocumentsModelCopyWithImpl<$Res,
        $Val extends PaginatedDocumentsModel>
    implements $PaginatedDocumentsModelCopyWith<$Res> {
  _$PaginatedDocumentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedDocumentsModel
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
              as PaginatedDocumentsData,
    ) as $Val);
  }

  /// Create a copy of PaginatedDocumentsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedDocumentsDataCopyWith<$Res> get data {
    return $PaginatedDocumentsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedDocumentsModelImplCopyWith<$Res>
    implements $PaginatedDocumentsModelCopyWith<$Res> {
  factory _$$PaginatedDocumentsModelImplCopyWith(
          _$PaginatedDocumentsModelImpl value,
          $Res Function(_$PaginatedDocumentsModelImpl) then) =
      __$$PaginatedDocumentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, PaginatedDocumentsData data});

  @override
  $PaginatedDocumentsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PaginatedDocumentsModelImplCopyWithImpl<$Res>
    extends _$PaginatedDocumentsModelCopyWithImpl<$Res,
        _$PaginatedDocumentsModelImpl>
    implements _$$PaginatedDocumentsModelImplCopyWith<$Res> {
  __$$PaginatedDocumentsModelImplCopyWithImpl(
      _$PaginatedDocumentsModelImpl _value,
      $Res Function(_$PaginatedDocumentsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedDocumentsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$PaginatedDocumentsModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginatedDocumentsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedDocumentsModelImpl implements _PaginatedDocumentsModel {
  _$PaginatedDocumentsModelImpl({required this.success, required this.data});

  factory _$PaginatedDocumentsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedDocumentsModelImplFromJson(json);

  @override
  final bool success;
  @override
  final PaginatedDocumentsData data;

  @override
  String toString() {
    return 'PaginatedDocumentsModel(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedDocumentsModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of PaginatedDocumentsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedDocumentsModelImplCopyWith<_$PaginatedDocumentsModelImpl>
      get copyWith => __$$PaginatedDocumentsModelImplCopyWithImpl<
          _$PaginatedDocumentsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedDocumentsModelImplToJson(
      this,
    );
  }
}

abstract class _PaginatedDocumentsModel implements PaginatedDocumentsModel {
  factory _PaginatedDocumentsModel(
          {required final bool success,
          required final PaginatedDocumentsData data}) =
      _$PaginatedDocumentsModelImpl;

  factory _PaginatedDocumentsModel.fromJson(Map<String, dynamic> json) =
      _$PaginatedDocumentsModelImpl.fromJson;

  @override
  bool get success;
  @override
  PaginatedDocumentsData get data;

  /// Create a copy of PaginatedDocumentsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedDocumentsModelImplCopyWith<_$PaginatedDocumentsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaginatedDocumentsData _$PaginatedDocumentsDataFromJson(
    Map<String, dynamic> json) {
  return _PaginatedDocumentsData.fromJson(json);
}

/// @nodoc
mixin _$PaginatedDocumentsData {
  @JsonKey(name: 'documents')
  List<ProjectDocumentModel> get documents =>
      throw _privateConstructorUsedError;
  Pagination get pagination => throw _privateConstructorUsedError;

  /// Serializes this PaginatedDocumentsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginatedDocumentsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedDocumentsDataCopyWith<PaginatedDocumentsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDocumentsDataCopyWith<$Res> {
  factory $PaginatedDocumentsDataCopyWith(PaginatedDocumentsData value,
          $Res Function(PaginatedDocumentsData) then) =
      _$PaginatedDocumentsDataCopyWithImpl<$Res, PaginatedDocumentsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'documents') List<ProjectDocumentModel> documents,
      Pagination pagination});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$PaginatedDocumentsDataCopyWithImpl<$Res,
        $Val extends PaginatedDocumentsData>
    implements $PaginatedDocumentsDataCopyWith<$Res> {
  _$PaginatedDocumentsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedDocumentsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ProjectDocumentModel>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ) as $Val);
  }

  /// Create a copy of PaginatedDocumentsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedDocumentsDataImplCopyWith<$Res>
    implements $PaginatedDocumentsDataCopyWith<$Res> {
  factory _$$PaginatedDocumentsDataImplCopyWith(
          _$PaginatedDocumentsDataImpl value,
          $Res Function(_$PaginatedDocumentsDataImpl) then) =
      __$$PaginatedDocumentsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'documents') List<ProjectDocumentModel> documents,
      Pagination pagination});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$PaginatedDocumentsDataImplCopyWithImpl<$Res>
    extends _$PaginatedDocumentsDataCopyWithImpl<$Res,
        _$PaginatedDocumentsDataImpl>
    implements _$$PaginatedDocumentsDataImplCopyWith<$Res> {
  __$$PaginatedDocumentsDataImplCopyWithImpl(
      _$PaginatedDocumentsDataImpl _value,
      $Res Function(_$PaginatedDocumentsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedDocumentsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? pagination = null,
  }) {
    return _then(_$PaginatedDocumentsDataImpl(
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ProjectDocumentModel>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedDocumentsDataImpl implements _PaginatedDocumentsData {
  _$PaginatedDocumentsDataImpl(
      {@JsonKey(name: 'documents')
      required final List<ProjectDocumentModel> documents,
      required this.pagination})
      : _documents = documents;

  factory _$PaginatedDocumentsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedDocumentsDataImplFromJson(json);

  final List<ProjectDocumentModel> _documents;
  @override
  @JsonKey(name: 'documents')
  List<ProjectDocumentModel> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final Pagination pagination;

  @override
  String toString() {
    return 'PaginatedDocumentsData(documents: $documents, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedDocumentsDataImpl &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_documents), pagination);

  /// Create a copy of PaginatedDocumentsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedDocumentsDataImplCopyWith<_$PaginatedDocumentsDataImpl>
      get copyWith => __$$PaginatedDocumentsDataImplCopyWithImpl<
          _$PaginatedDocumentsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedDocumentsDataImplToJson(
      this,
    );
  }
}

abstract class _PaginatedDocumentsData implements PaginatedDocumentsData {
  factory _PaginatedDocumentsData(
      {@JsonKey(name: 'documents')
      required final List<ProjectDocumentModel> documents,
      required final Pagination pagination}) = _$PaginatedDocumentsDataImpl;

  factory _PaginatedDocumentsData.fromJson(Map<String, dynamic> json) =
      _$PaginatedDocumentsDataImpl.fromJson;

  @override
  @JsonKey(name: 'documents')
  List<ProjectDocumentModel> get documents;
  @override
  Pagination get pagination;

  /// Create a copy of PaginatedDocumentsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedDocumentsDataImplCopyWith<_$PaginatedDocumentsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
