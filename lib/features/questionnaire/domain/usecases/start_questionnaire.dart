// Path: lib/features/questionnaire/domain/usecases/start_questionnaire.dart
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_submission_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/repositories/questionnaire_repository.dart';

class StartQuestionnaire {
  final QuestionnaireRepository repository;

  StartQuestionnaire(this.repository);

  Future<QuestionnaireSubmissionEntity> call(String id) async {
    return await repository.startQuestionnaire(id);
  }
}
