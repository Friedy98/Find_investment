// Path: lib/features/questionnaire/domain/entities/questionnaire_submission_entity.dart
import 'package:equatable/equatable.dart';

class QuestionnaireSubmissionEntity extends Equatable {
  final String id;
  final dynamic user; // null, String, or UserEntity
  final dynamic questionnaire; // null, String, or QuestionnaireEntity
  final String status;
  final List<AnswerEntity> answers;
  final int totalScore;
  final int maxTotalScore;
  final int percentage;
  final bool passed;
  final List<CategoryScoreEntity> categoryScores;
  final DateTime? startedAt;
  final DateTime? submittedAt;
  final DateTime? reviewStartedAt;
  final DateTime? reviewedAt;
  final DateTime? approvedAt;
  final DateTime? rejectedAt;
  final dynamic reviewedBy; // null, String, or UserEntity
  final String? reviewNotes;
  final String? rejectionReason;
  final int completionTime;
  final int attemptNumber;
  final String? ipAddress;
  final String? userAgent;
  final String? deviceInfo;
  final List<HistoryEntryEntity> history;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? completionPercentage; // Virtual
  final int? daysSinceSubmission; // Virtual
  final bool? isOverdue; // Virtual

  const QuestionnaireSubmissionEntity({
    required this.id,
    this.user,
    this.questionnaire,
    required this.status,
    required this.answers,
    required this.totalScore,
    required this.maxTotalScore,
    required this.percentage,
    required this.passed,
    required this.categoryScores,
    required this.startedAt,
    this.submittedAt,
    this.reviewStartedAt,
    this.reviewedAt,
    this.approvedAt,
    this.rejectedAt,
    this.reviewedBy,
    this.reviewNotes,
    this.rejectionReason,
    required this.completionTime,
    required this.attemptNumber,
    this.ipAddress,
    this.userAgent,
    this.deviceInfo,
    required this.history,
    required this.createdAt,
    required this.updatedAt,
    this.completionPercentage,
    this.daysSinceSubmission,
    this.isOverdue,
  });

  @override
  List<Object?> get props => [
        id,
        user,
        questionnaire,
        status,
        answers,
        totalScore,
        maxTotalScore,
        percentage,
        passed,
        categoryScores,
        startedAt,
        submittedAt,
        reviewStartedAt,
        reviewedAt,
        approvedAt,
        rejectedAt,
        reviewedBy,
        reviewNotes,
        rejectionReason,
        completionTime,
        attemptNumber,
        ipAddress,
        userAgent,
        deviceInfo,
        history,
        createdAt,
        updatedAt,
        completionPercentage,
        daysSinceSubmission,
        isOverdue,
      ];
}

class AnswerEntity extends Equatable {
  final String questionId;
  final String question;
  final String questionType;
  final dynamic answer;
  final int score;
  final int maxScore;
  final dynamic evaluatedBy; // null, String, or UserEntity
  final DateTime? evaluatedAt;
  final String? evaluationNotes;
  final List<FileEntity>? files;

  const AnswerEntity({
    required this.questionId,
    required this.question,
    required this.questionType,
    required this.answer,
    this.score = 0,
    this.maxScore = 0,
    this.evaluatedBy,
    this.evaluatedAt,
    this.evaluationNotes,
    this.files,
  });

  @override
  List<Object?> get props => [
        questionId,
        question,
        questionType,
        answer,
        score,
        maxScore,
        evaluatedBy,
        evaluatedAt,
        evaluationNotes,
        files,
      ];
}

class FileEntity extends Equatable {
  final String? url;
  final String? filename;
  final String? originalName;
  final String? mimeType;
  final int? size;
  final DateTime? uploadedAt;

  const FileEntity({
    this.url,
    this.filename,
    this.originalName,
    this.mimeType,
    this.size,
    this.uploadedAt,
  });

  @override
  List<Object?> get props =>
      [url, filename, originalName, mimeType, size, uploadedAt];
}

class CategoryScoreEntity extends Equatable {
  final String? categoryId;
  final String? categoryName;
  final int score;
  final int maxScore;
  final int percentage;

  const CategoryScoreEntity({
    this.categoryId,
    this.categoryName,
    required this.score,
    required this.maxScore,
    required this.percentage,
  });

  @override
  List<Object?> get props =>
      [categoryId, categoryName, score, maxScore, percentage];
}

class HistoryEntryEntity extends Equatable {
  final String action;
  final dynamic performedBy; // null, String, or UserEntity
  final DateTime? timestamp;
  final String? details;
  final String? previousStatus;
  final String? newStatus;

  const HistoryEntryEntity({
    required this.action,
    this.performedBy,
    this.timestamp,
    this.details,
    this.previousStatus,
    this.newStatus,
  });

  @override
  List<Object?> get props =>
      [action, performedBy, timestamp, details, previousStatus, newStatus];
}
