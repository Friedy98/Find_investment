// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_submission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionnaireSubmissionModelImpl _$$QuestionnaireSubmissionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireSubmissionModelImpl(
      id: json['_id'] as String,
      user: _userFromJson(json['user']),
      questionnaire: _questionnaireFromJson(json['questionnaire']),
      status: json['status'] as String,
      answers: json['answers'] == null
          ? const []
          : _answersFromJson(json['answers'] as List?),
      totalScore: (json['totalScore'] as num).toInt(),
      maxTotalScore: (json['maxTotalScore'] as num).toInt(),
      percentage: (json['percentage'] as num).toInt(),
      passed: json['passed'] as bool,
      categoryScores: json['categoryScores'] == null
          ? const []
          : _categoryScoresFromJson(json['categoryScores'] as List?),
      startedAt: _dateTimeFromJson(json['startedAt'] as String?),
      submittedAt: _dateTimeFromJson(json['submittedAt'] as String?),
      reviewStartedAt: _dateTimeFromJson(json['reviewStartedAt'] as String?),
      reviewedAt: _dateTimeFromJson(json['reviewedAt'] as String?),
      approvedAt: _dateTimeFromJson(json['approvedAt'] as String?),
      rejectedAt: _dateTimeFromJson(json['rejectedAt'] as String?),
      reviewedBy: _userFromJson(json['reviewedBy']),
      reviewNotes: json['reviewNotes'] as String?,
      rejectionReason: json['rejectionReason'] as String?,
      completionTime: (json['completionTime'] as num).toInt(),
      attemptNumber: (json['attemptNumber'] as num).toInt(),
      ipAddress: json['ipAddress'] as String?,
      userAgent: json['userAgent'] as String?,
      deviceInfo: json['deviceInfo'] as String?,
      history: json['history'] == null
          ? const []
          : _historyFromJson(json['history'] as List?),
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
      completionPercentage: _intFromJson(json['completionPercentage']),
      daysSinceSubmission: _intFromJson(json['daysSinceSubmission']),
      isOverdue: _boolFromJson(json['isOverdue']),
    );

Map<String, dynamic> _$$QuestionnaireSubmissionModelImplToJson(
        _$QuestionnaireSubmissionModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user': _userToJson(instance.user),
      'questionnaire': _questionnaireToJson(instance.questionnaire),
      'status': instance.status,
      'answers': _answersToJson(instance.answers),
      'totalScore': instance.totalScore,
      'maxTotalScore': instance.maxTotalScore,
      'percentage': instance.percentage,
      'passed': instance.passed,
      'categoryScores': _categoryScoresToJson(instance.categoryScores),
      'startedAt': _dateTimeToJson(instance.startedAt),
      'submittedAt': _dateTimeToJson(instance.submittedAt),
      'reviewStartedAt': _dateTimeToJson(instance.reviewStartedAt),
      'reviewedAt': _dateTimeToJson(instance.reviewedAt),
      'approvedAt': _dateTimeToJson(instance.approvedAt),
      'rejectedAt': _dateTimeToJson(instance.rejectedAt),
      'reviewedBy': _userToJson(instance.reviewedBy),
      'reviewNotes': instance.reviewNotes,
      'rejectionReason': instance.rejectionReason,
      'completionTime': instance.completionTime,
      'attemptNumber': instance.attemptNumber,
      'ipAddress': instance.ipAddress,
      'userAgent': instance.userAgent,
      'deviceInfo': instance.deviceInfo,
      'history': _historyToJson(instance.history),
      'createdAt': _dateTimeToJson(instance.createdAt),
      'updatedAt': _dateTimeToJson(instance.updatedAt),
      'completionPercentage': instance.completionPercentage,
      'daysSinceSubmission': instance.daysSinceSubmission,
      'isOverdue': instance.isOverdue,
    };

_$AnswerModelImpl _$$AnswerModelImplFromJson(Map<String, dynamic> json) =>
    _$AnswerModelImpl(
      questionId: json['questionId'] as String,
      question: json['question'] as String,
      questionType: json['questionType'] as String,
      answer: json['answer'],
      score: (json['score'] as num?)?.toInt() ?? 0,
      maxScore: (json['maxScore'] as num?)?.toInt() ?? 0,
      evaluatedBy: _userFromJson(json['evaluatedBy']),
      evaluatedAt: _dateTimeFromJson(json['evaluatedAt'] as String?),
      evaluationNotes: json['evaluationNotes'] as String?,
      files: json['files'] == null
          ? const []
          : _filesFromJson(json['files'] as List?),
    );

Map<String, dynamic> _$$AnswerModelImplToJson(_$AnswerModelImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'question': instance.question,
      'questionType': instance.questionType,
      'answer': instance.answer,
      'score': instance.score,
      'maxScore': instance.maxScore,
      'evaluatedBy': _userToJson(instance.evaluatedBy),
      'evaluatedAt': _dateTimeToJson(instance.evaluatedAt),
      'evaluationNotes': instance.evaluationNotes,
      'files': _filesToJson(instance.files),
    };

_$FileModelImpl _$$FileModelImplFromJson(Map<String, dynamic> json) =>
    _$FileModelImpl(
      url: json['url'] as String?,
      filename: json['filename'] as String?,
      originalName: json['originalName'] as String?,
      mimeType: json['mimeType'] as String?,
      size: (json['size'] as num?)?.toInt(),
      uploadedAt: _dateTimeFromJson(json['uploadedAt'] as String?),
    );

Map<String, dynamic> _$$FileModelImplToJson(_$FileModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'filename': instance.filename,
      'originalName': instance.originalName,
      'mimeType': instance.mimeType,
      'size': instance.size,
      'uploadedAt': _dateTimeToJson(instance.uploadedAt),
    };

_$CategoryScoreModelImpl _$$CategoryScoreModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryScoreModelImpl(
      categoryId: json['categoryId'] as String?,
      categoryName: json['categoryName'] as String?,
      score: (json['score'] as num).toInt(),
      maxScore: (json['maxScore'] as num).toInt(),
      percentage: (json['percentage'] as num).toInt(),
    );

Map<String, dynamic> _$$CategoryScoreModelImplToJson(
        _$CategoryScoreModelImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'score': instance.score,
      'maxScore': instance.maxScore,
      'percentage': instance.percentage,
    };

_$HistoryEntryModelImpl _$$HistoryEntryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryEntryModelImpl(
      action: json['action'] as String,
      performedBy: _userFromJson(json['performedBy']),
      timestamp: _dateTimeFromJson(json['timestamp'] as String?),
      details: json['details'] as String?,
      previousStatus: json['previousStatus'] as String?,
      newStatus: json['newStatus'] as String?,
    );

Map<String, dynamic> _$$HistoryEntryModelImplToJson(
        _$HistoryEntryModelImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'performedBy': _userToJson(instance.performedBy),
      'timestamp': _dateTimeToJson(instance.timestamp),
      'details': instance.details,
      'previousStatus': instance.previousStatus,
      'newStatus': instance.newStatus,
    };
