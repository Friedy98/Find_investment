// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_stat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvitationStatModelImpl _$$InvitationStatModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InvitationStatModelImpl(
      category: json['status'] as String? ?? '',
      count: (json['count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$InvitationStatModelImplToJson(
        _$InvitationStatModelImpl instance) =>
    <String, dynamic>{
      'status': instance.category,
      'count': instance.count,
    };
