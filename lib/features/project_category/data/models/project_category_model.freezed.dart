// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectCategoryModel _$ProjectCategoryModelFromJson(Map<String, dynamic> json) {
  return _ProjectCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectCategoryModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
  dynamic get parent =>
      throw _privateConstructorUsedError; // Peut être null, String (ID), ou ProjectCategoryModel (populé)
  bool? get isActive => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<ProjectCategoryModel>? get subcategories =>
      throw _privateConstructorUsedError; // Champ virtuel
  int? get projectCount => throw _privateConstructorUsedError;

  /// Serializes this ProjectCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectCategoryModelCopyWith<ProjectCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCategoryModelCopyWith<$Res> {
  factory $ProjectCategoryModelCopyWith(ProjectCategoryModel value,
          $Res Function(ProjectCategoryModel) then) =
      _$ProjectCategoryModelCopyWithImpl<$Res, ProjectCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String slug,
      String? description,
      @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
      dynamic parent,
      bool? isActive,
      int? order,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt,
      List<ProjectCategoryModel>? subcategories,
      int? projectCount});
}

/// @nodoc
class _$ProjectCategoryModelCopyWithImpl<$Res,
        $Val extends ProjectCategoryModel>
    implements $ProjectCategoryModelCopyWith<$Res> {
  _$ProjectCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? parent = freezed,
    Object? isActive = freezed,
    Object? order = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? subcategories = freezed,
    Object? projectCount = freezed,
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
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subcategories: freezed == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<ProjectCategoryModel>?,
      projectCount: freezed == projectCount
          ? _value.projectCount
          : projectCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectCategoryModelImplCopyWith<$Res>
    implements $ProjectCategoryModelCopyWith<$Res> {
  factory _$$ProjectCategoryModelImplCopyWith(_$ProjectCategoryModelImpl value,
          $Res Function(_$ProjectCategoryModelImpl) then) =
      __$$ProjectCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String slug,
      String? description,
      @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
      dynamic parent,
      bool? isActive,
      int? order,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt,
      List<ProjectCategoryModel>? subcategories,
      int? projectCount});
}

/// @nodoc
class __$$ProjectCategoryModelImplCopyWithImpl<$Res>
    extends _$ProjectCategoryModelCopyWithImpl<$Res, _$ProjectCategoryModelImpl>
    implements _$$ProjectCategoryModelImplCopyWith<$Res> {
  __$$ProjectCategoryModelImplCopyWithImpl(_$ProjectCategoryModelImpl _value,
      $Res Function(_$ProjectCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? parent = freezed,
    Object? isActive = freezed,
    Object? order = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? subcategories = freezed,
    Object? projectCount = freezed,
  }) {
    return _then(_$ProjectCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subcategories: freezed == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<ProjectCategoryModel>?,
      projectCount: freezed == projectCount
          ? _value.projectCount
          : projectCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectCategoryModelImpl extends _ProjectCategoryModel {
  _$ProjectCategoryModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required this.slug,
      this.description,
      @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
      this.parent,
      this.isActive,
      this.order,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt,
      final List<ProjectCategoryModel>? subcategories = const [],
      this.projectCount = 0})
      : _subcategories = subcategories,
        super._();

  factory _$ProjectCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? description;
  @override
  @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
  final dynamic parent;
// Peut être null, String (ID), ou ProjectCategoryModel (populé)
  @override
  final bool? isActive;
  @override
  final int? order;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;
  final List<ProjectCategoryModel>? _subcategories;
  @override
  @JsonKey()
  List<ProjectCategoryModel>? get subcategories {
    final value = _subcategories;
    if (value == null) return null;
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Champ virtuel
  @override
  @JsonKey()
  final int? projectCount;

  @override
  String toString() {
    return 'ProjectCategoryModel(id: $id, name: $name, slug: $slug, description: $description, parent: $parent, isActive: $isActive, order: $order, createdAt: $createdAt, updatedAt: $updatedAt, subcategories: $subcategories, projectCount: $projectCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.parent, parent) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories) &&
            (identical(other.projectCount, projectCount) ||
                other.projectCount == projectCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      slug,
      description,
      const DeepCollectionEquality().hash(parent),
      isActive,
      order,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_subcategories),
      projectCount);

  /// Create a copy of ProjectCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectCategoryModelImplCopyWith<_$ProjectCategoryModelImpl>
      get copyWith =>
          __$$ProjectCategoryModelImplCopyWithImpl<_$ProjectCategoryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectCategoryModel extends ProjectCategoryModel {
  factory _ProjectCategoryModel(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      required final String slug,
      final String? description,
      @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
      final dynamic parent,
      final bool? isActive,
      final int? order,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt,
      final List<ProjectCategoryModel>? subcategories,
      final int? projectCount}) = _$ProjectCategoryModelImpl;
  _ProjectCategoryModel._() : super._();

  factory _ProjectCategoryModel.fromJson(Map<String, dynamic> json) =
      _$ProjectCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get description;
  @override
  @JsonKey(name: 'parent', fromJson: _parentFromJson, toJson: _parentToJson)
  dynamic
      get parent; // Peut être null, String (ID), ou ProjectCategoryModel (populé)
  @override
  bool? get isActive;
  @override
  int? get order;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;
  @override
  List<ProjectCategoryModel>? get subcategories; // Champ virtuel
  @override
  int? get projectCount;

  /// Create a copy of ProjectCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectCategoryModelImplCopyWith<_$ProjectCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
