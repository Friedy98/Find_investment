// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectMediaModelImpl _$$ProjectMediaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectMediaModelImpl(
      logo: json['logo'] as String?,
      coverImage: json['coverImage'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      videos: (json['videos'] as List<dynamic>?)
              ?.map((e) => MediaVideoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      documents: json['documents'] == null
          ? const []
          : _documentsFromJson(json['documents'] as List),
    );

Map<String, dynamic> _$$ProjectMediaModelImplToJson(
        _$ProjectMediaModelImpl instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'coverImage': instance.coverImage,
      'images': instance.images,
      'videos': instance.videos,
      'documents': _documentsToJson(instance.documents),
    };
