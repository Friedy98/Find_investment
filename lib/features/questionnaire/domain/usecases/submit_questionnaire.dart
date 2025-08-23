// Path: lib/features/questionnaire/domain/usecases/submit_questionnaire.dart
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_submission_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/repositories/questionnaire_repository.dart';

class SubmitQuestionnaire {
  final QuestionnaireRepository repository;

  SubmitQuestionnaire(this.repository);

  Future<QuestionnaireSubmissionEntity> call(String submissionId) async {
    return await repository.submitQuestionnaire(submissionId);
  }
}
