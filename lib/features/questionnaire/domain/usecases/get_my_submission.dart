// Path: lib/features/questionnaire/domain/usecases/get_my_submission.dart
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_submission_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/repositories/questionnaire_repository.dart';

class GetMySubmission {
  final QuestionnaireRepository repository;

  GetMySubmission(this.repository);

  Future<QuestionnaireSubmissionEntity> call(String questionnaireId) async {
    return await repository.getMySubmission(questionnaireId);
  }
}
