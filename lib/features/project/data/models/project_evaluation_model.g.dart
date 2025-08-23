// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_evaluation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectEvaluationModelImpl _$$ProjectEvaluationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectEvaluationModelImpl(
      overallScore: (json['overallScore'] as num?)?.toDouble(),
      scores: json['scores'] as Map<String, dynamic>?,
      evaluatedBy: _userFromJson(json['evaluatedBy']),
      evaluatedAt: _dateTimeFromJson(json['evaluatedAt'] as String?),
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$$ProjectEvaluationModelImplToJson(
        _$ProjectEvaluationModelImpl instance) =>
    <String, dynamic>{
      'overallScore': instance.overallScore,
      'scores': instance.scores,
      'evaluatedBy': _userToJson(instance.evaluatedBy),
      'evaluatedAt': _dateTimeToJson(instance.evaluatedAt),
      'comments': instance.comments,
    };
