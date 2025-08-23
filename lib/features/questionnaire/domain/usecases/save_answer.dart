// Path: lib/features/questionnaire/domain/usecases/save_answer.dart
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_submission_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/repositories/questionnaire_repository.dart';

class SaveAnswer {
  final QuestionnaireRepository repository;

  SaveAnswer(this.repository);

  Future<QuestionnaireSubmissionEntity> call(
      String submissionId, String questionId, dynamic answer) async {
    return await repository.saveAnswer(submissionId, questionId, answer);
  }
}
