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
  String? get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

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
      String? slug,
      String? description,
      String icon,
      String color});
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
    Object? slug = freezed,
    Object? description = freezed,
    Object? icon = null,
    Object? color = null,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
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
      String? slug,
      String? description,
      String icon,
      String color});
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
    Object? slug = freezed,
    Object? description = freezed,
    Object? icon = null,
    Object? color = null,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectCategoryModelImpl implements _ProjectCategoryModel {
  _$ProjectCategoryModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      this.slug,
      this.description,
      this.icon = 'folder',
      this.color = '#007bff'});

  factory _$ProjectCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String? slug;
  @override
  final String? description;
  @override
  @JsonKey()
  final String icon;
  @override
  @JsonKey()
  final String color;

  @override
  String toString() {
    return 'ProjectCategoryModel(id: $id, name: $name, slug: $slug, description: $description, icon: $icon, color: $color)';
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
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, slug, description, icon, color);

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

abstract class _ProjectCategoryModel implements ProjectCategoryModel {
  factory _ProjectCategoryModel(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      final String? slug,
      final String? description,
      final String icon,
      final String color}) = _$ProjectCategoryModelImpl;

  factory _ProjectCategoryModel.fromJson(Map<String, dynamic> json) =
      _$ProjectCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get slug;
  @override
  String? get description;
  @override
  String get icon;
  @override
  String get color;

  /// Create a copy of ProjectCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectCategoryModelImplCopyWith<_$ProjectCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
