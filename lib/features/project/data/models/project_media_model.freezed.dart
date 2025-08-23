// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectMediaModel _$ProjectMediaModelFromJson(Map<String, dynamic> json) {
  return _ProjectMediaModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectMediaModel {
  String? get logo => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<MediaVideoModel> get videos => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _documentsFromJson, toJson: _documentsToJson)
  List<dynamic> get documents => throw _privateConstructorUsedError;

  /// Serializes this ProjectMediaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectMediaModelCopyWith<ProjectMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectMediaModelCopyWith<$Res> {
  factory $ProjectMediaModelCopyWith(
          ProjectMediaModel value, $Res Function(ProjectMediaModel) then) =
      _$ProjectMediaModelCopyWithImpl<$Res, ProjectMediaModel>;
  @useResult
  $Res call(
      {String? logo,
      String? coverImage,
      List<String> images,
      List<MediaVideoModel> videos,
      @JsonKey(fromJson: _documentsFromJson, toJson: _documentsToJson)
      List<dynamic> documents});
}

/// @nodoc
class _$ProjectMediaModelCopyWithImpl<$Res, $Val extends ProjectMediaModel>
    implements $ProjectMediaModelCopyWith<$Res> {
  _$ProjectMediaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = freezed,
    Object? coverImage = freezed,
    Object? images = null,
    Object? videos = null,
    Object? documents = null,
  }) {
    return _then(_value.copyWith(
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<MediaVideoModel>,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectMediaModelImplCopyWith<$Res>
    implements $ProjectMediaModelCopyWith<$Res> {
  factory _$$ProjectMediaModelImplCopyWith(_$ProjectMediaModelImpl value,
          $Res Function(_$ProjectMediaModelImpl) then) =
      __$$ProjectMediaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? logo,
      String? coverImage,
      List<String> images,
      List<MediaVideoModel> videos,
      @JsonKey(fromJson: _documentsFromJson, toJson: _documentsToJson)
      List<dynamic> documents});
}

/// @nodoc
class __$$ProjectMediaModelImplCopyWithImpl<$Res>
    extends _$ProjectMediaModelCopyWithImpl<$Res, _$ProjectMediaModelImpl>
    implements _$$ProjectMediaModelImplCopyWith<$Res> {
  __$$ProjectMediaModelImplCopyWithImpl(_$ProjectMediaModelImpl _value,
      $Res Function(_$ProjectMediaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = freezed,
    Object? coverImage = freezed,
    Object? images = null,
    Object? videos = null,
    Object? documents = null,
  }) {
    return _then(_$ProjectMediaModelImpl(
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<MediaVideoModel>,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectMediaModelImpl implements _ProjectMediaModel {
  _$ProjectMediaModelImpl(
      {this.logo,
      this.coverImage,
      final List<String> images = const [],
      final List<MediaVideoModel> videos = const [],
      @JsonKey(fromJson: _documentsFromJson, toJson: _documentsToJson)
      final List<dynamic> documents = const []})
      : _images = images,
        _videos = videos,
        _documents = documents;

  factory _$ProjectMediaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectMediaModelImplFromJson(json);

  @override
  final String? logo;
  @override
  final String? coverImage;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<MediaVideoModel> _videos;
  @override
  @JsonKey()
  List<MediaVideoModel> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  final List<dynamic> _documents;
  @override
  @JsonKey(fromJson: _documentsFromJson, toJson: _documentsToJson)
  List<dynamic> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'ProjectMediaModel(logo: $logo, coverImage: $coverImage, images: $images, videos: $videos, documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectMediaModelImpl &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      logo,
      coverImage,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_videos),
      const DeepCollectionEquality().hash(_documents));

  /// Create a copy of ProjectMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectMediaModelImplCopyWith<_$ProjectMediaModelImpl> get copyWith =>
      __$$ProjectMediaModelImplCopyWithImpl<_$ProjectMediaModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectMediaModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectMediaModel implements ProjectMediaModel {
  factory _ProjectMediaModel(
      {final String? logo,
      final String? coverImage,
      final List<String> images,
      final List<MediaVideoModel> videos,
      @JsonKey(fromJson: _documentsFromJson, toJson: _documentsToJson)
      final List<dynamic> documents}) = _$ProjectMediaModelImpl;

  factory _ProjectMediaModel.fromJson(Map<String, dynamic> json) =
      _$ProjectMediaModelImpl.fromJson;

  @override
  String? get logo;
  @override
  String? get coverImage;
  @override
  List<String> get images;
  @override
  List<MediaVideoModel> get videos;
  @override
  @JsonKey(fromJson: _documentsFromJson, toJson: _documentsToJson)
  List<dynamic> get documents;

  /// Create a copy of ProjectMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectMediaModelImplCopyWith<_$ProjectMediaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
