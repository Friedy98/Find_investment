// Path: lib/features/questionnaire/domain/usecases/check_questionnaire_requirement.dart
import 'package:find_invest_mobile/features/questionnaire/domain/repositories/questionnaire_repository.dart';

class CheckQuestionnaireRequirement {
  final QuestionnaireRepository repository;

  CheckQuestionnaireRequirement(this.repository);

  Future<Map<String, dynamic>> call(String action) async {
    return await repository.checkQuestionnaireRequirement(action);
  }
}
