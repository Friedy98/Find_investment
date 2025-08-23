// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_projects_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedProjectsModel _$PaginatedProjectsModelFromJson(
    Map<String, dynamic> json) {
  return _PaginatedProjectsModel.fromJson(json);
}

/// @nodoc
mixin _$PaginatedProjectsModel {
  bool get success => throw _privateConstructorUsedError;
  PaginatedProjectsData get data => throw _privateConstructorUsedError;

  /// Serializes this PaginatedProjectsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginatedProjectsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedProjectsModelCopyWith<PaginatedProjectsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedProjectsModelCopyWith<$Res> {
  factory $PaginatedProjectsModelCopyWith(PaginatedProjectsModel value,
          $Res Function(PaginatedProjectsModel) then) =
      _$PaginatedProjectsModelCopyWithImpl<$Res, PaginatedProjectsModel>;
  @useResult
  $Res call({bool success, PaginatedProjectsData data});

  $PaginatedProjectsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PaginatedProjectsModelCopyWithImpl<$Res,
        $Val extends PaginatedProjectsModel>
    implements $PaginatedProjectsModelCopyWith<$Res> {
  _$PaginatedProjectsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedProjectsModel
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
              as PaginatedProjectsData,
    ) as $Val);
  }

  /// Create a copy of PaginatedProjectsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedProjectsDataCopyWith<$Res> get data {
    return $PaginatedProjectsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedProjectsModelImplCopyWith<$Res>
    implements $PaginatedProjectsModelCopyWith<$Res> {
  factory _$$PaginatedProjectsModelImplCopyWith(
          _$PaginatedProjectsModelImpl value,
          $Res Function(_$PaginatedProjectsModelImpl) then) =
      __$$PaginatedProjectsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, PaginatedProjectsData data});

  @override
  $PaginatedProjectsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PaginatedProjectsModelImplCopyWithImpl<$Res>
    extends _$PaginatedProjectsModelCopyWithImpl<$Res,
        _$PaginatedProjectsModelImpl>
    implements _$$PaginatedProjectsModelImplCopyWith<$Res> {
  __$$PaginatedProjectsModelImplCopyWithImpl(
      _$PaginatedProjectsModelImpl _value,
      $Res Function(_$PaginatedProjectsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedProjectsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$PaginatedProjectsModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginatedProjectsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedProjectsModelImpl implements _PaginatedProjectsModel {
  _$PaginatedProjectsModelImpl({required this.success, required this.data});

  factory _$PaginatedProjectsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedProjectsModelImplFromJson(json);

  @override
  final bool success;
  @override
  final PaginatedProjectsData data;

  @override
  String toString() {
    return 'PaginatedProjectsModel(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedProjectsModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of PaginatedProjectsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedProjectsModelImplCopyWith<_$PaginatedProjectsModelImpl>
      get copyWith => __$$PaginatedProjectsModelImplCopyWithImpl<
          _$PaginatedProjectsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedProjectsModelImplToJson(
      this,
    );
  }
}

abstract class _PaginatedProjectsModel implements PaginatedProjectsModel {
  factory _PaginatedProjectsModel(
          {required final bool success,
          required final PaginatedProjectsData data}) =
      _$PaginatedProjectsModelImpl;

  factory _PaginatedProjectsModel.fromJson(Map<String, dynamic> json) =
      _$PaginatedProjectsModelImpl.fromJson;

  @override
  bool get success;
  @override
  PaginatedProjectsData get data;

  /// Create a copy of PaginatedProjectsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedProjectsModelImplCopyWith<_$PaginatedProjectsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaginatedProjectsData _$PaginatedProjectsDataFromJson(
    Map<String, dynamic> json) {
  return _PaginatedProjectsData.fromJson(json);
}

/// @nodoc
mixin _$PaginatedProjectsData {
  @JsonKey(name: 'projects')
  List<ProjectModel> get projects => throw _privateConstructorUsedError;
  Pagination get pagination => throw _privateConstructorUsedError;

  /// Serializes this PaginatedProjectsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginatedProjectsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedProjectsDataCopyWith<PaginatedProjectsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedProjectsDataCopyWith<$Res> {
  factory $PaginatedProjectsDataCopyWith(PaginatedProjectsData value,
          $Res Function(PaginatedProjectsData) then) =
      _$PaginatedProjectsDataCopyWithImpl<$Res, PaginatedProjectsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'projects') List<ProjectModel> projects,
      Pagination pagination});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$PaginatedProjectsDataCopyWithImpl<$Res,
        $Val extends PaginatedProjectsData>
    implements $PaginatedProjectsDataCopyWith<$Res> {
  _$PaginatedProjectsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedProjectsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ) as $Val);
  }

  /// Create a copy of PaginatedProjectsData
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
abstract class _$$PaginatedProjectsDataImplCopyWith<$Res>
    implements $PaginatedProjectsDataCopyWith<$Res> {
  factory _$$PaginatedProjectsDataImplCopyWith(
          _$PaginatedProjectsDataImpl value,
          $Res Function(_$PaginatedProjectsDataImpl) then) =
      __$$PaginatedProjectsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'projects') List<ProjectModel> projects,
      Pagination pagination});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$PaginatedProjectsDataImplCopyWithImpl<$Res>
    extends _$PaginatedProjectsDataCopyWithImpl<$Res,
        _$PaginatedProjectsDataImpl>
    implements _$$PaginatedProjectsDataImplCopyWith<$Res> {
  __$$PaginatedProjectsDataImplCopyWithImpl(_$PaginatedProjectsDataImpl _value,
      $Res Function(_$PaginatedProjectsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedProjectsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? pagination = null,
  }) {
    return _then(_$PaginatedProjectsDataImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedProjectsDataImpl implements _PaginatedProjectsData {
  _$PaginatedProjectsDataImpl(
      {@JsonKey(name: 'projects') required final List<ProjectModel> projects,
      required this.pagination})
      : _projects = projects;

  factory _$PaginatedProjectsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedProjectsDataImplFromJson(json);

  final List<ProjectModel> _projects;
  @override
  @JsonKey(name: 'projects')
  List<ProjectModel> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  final Pagination pagination;

  @override
  String toString() {
    return 'PaginatedProjectsData(projects: $projects, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedProjectsDataImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_projects), pagination);

  /// Create a copy of PaginatedProjectsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedProjectsDataImplCopyWith<_$PaginatedProjectsDataImpl>
      get copyWith => __$$PaginatedProjectsDataImplCopyWithImpl<
          _$PaginatedProjectsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedProjectsDataImplToJson(
      this,
    );
  }
}

abstract class _PaginatedProjectsData implements PaginatedProjectsData {
  factory _PaginatedProjectsData(
      {@JsonKey(name: 'projects') required final List<ProjectModel> projects,
      required final Pagination pagination}) = _$PaginatedProjectsDataImpl;

  factory _PaginatedProjectsData.fromJson(Map<String, dynamic> json) =
      _$PaginatedProjectsDataImpl.fromJson;

  @override
  @JsonKey(name: 'projects')
  List<ProjectModel> get projects;
  @override
  Pagination get pagination;

  /// Create a copy of PaginatedProjectsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedProjectsDataImplCopyWith<_$PaginatedProjectsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get totalDocs => throw _privateConstructorUsedError;
  @JsonKey(name: 'pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasNext')
  bool get hasNextPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasPrev')
  bool get hasPrevPage => throw _privateConstructorUsedError;

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {int page,
      int limit,
      @JsonKey(name: 'total') int totalDocs,
      @JsonKey(name: 'pages') int totalPages,
      @JsonKey(name: 'hasNext') bool hasNextPage,
      @JsonKey(name: 'hasPrev') bool hasPrevPage});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? totalDocs = null,
    Object? totalPages = null,
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      totalDocs: null == totalDocs
          ? _value.totalDocs
          : totalDocs // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevPage: null == hasPrevPage
          ? _value.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int limit,
      @JsonKey(name: 'total') int totalDocs,
      @JsonKey(name: 'pages') int totalPages,
      @JsonKey(name: 'hasNext') bool hasNextPage,
      @JsonKey(name: 'hasPrev') bool hasPrevPage});
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? totalDocs = null,
    Object? totalPages = null,
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
  }) {
    return _then(_$PaginationImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      totalDocs: null == totalDocs
          ? _value.totalDocs
          : totalDocs // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevPage: null == hasPrevPage
          ? _value.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationImpl implements _Pagination {
  _$PaginationImpl(
      {required this.page,
      required this.limit,
      @JsonKey(name: 'total') required this.totalDocs,
      @JsonKey(name: 'pages') required this.totalPages,
      @JsonKey(name: 'hasNext') required this.hasNextPage,
      @JsonKey(name: 'hasPrev') required this.hasPrevPage});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  final int page;
  @override
  final int limit;
  @override
  @JsonKey(name: 'total')
  final int totalDocs;
  @override
  @JsonKey(name: 'pages')
  final int totalPages;
  @override
  @JsonKey(name: 'hasNext')
  final bool hasNextPage;
  @override
  @JsonKey(name: 'hasPrev')
  final bool hasPrevPage;

  @override
  String toString() {
    return 'Pagination(page: $page, limit: $limit, totalDocs: $totalDocs, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalDocs, totalDocs) ||
                other.totalDocs == totalDocs) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPrevPage, hasPrevPage) ||
                other.hasPrevPage == hasPrevPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, limit, totalDocs,
      totalPages, hasNextPage, hasPrevPage);

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  factory _Pagination(
          {required final int page,
          required final int limit,
          @JsonKey(name: 'total') required final int totalDocs,
          @JsonKey(name: 'pages') required final int totalPages,
          @JsonKey(name: 'hasNext') required final bool hasNextPage,
          @JsonKey(name: 'hasPrev') required final bool hasPrevPage}) =
      _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

  @override
  int get page;
  @override
  int get limit;
  @override
  @JsonKey(name: 'total')
  int get totalDocs;
  @override
  @JsonKey(name: 'pages')
  int get totalPages;
  @override
  @JsonKey(name: 'hasNext')
  bool get hasNextPage;
  @override
  @JsonKey(name: 'hasPrev')
  bool get hasPrevPage;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
