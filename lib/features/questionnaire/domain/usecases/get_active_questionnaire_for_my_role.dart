// Path: lib/features/questionnaire/domain/usecases/get_active_questionnaire_for_my_role.dart
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_entity.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/repositories/questionnaire_repository.dart';

class GetActiveQuestionnaireForMyRole {
  final QuestionnaireRepository repository;

  GetActiveQuestionnaireForMyRole(this.repository);

  Future<QuestionnaireEntity> call() async {
    return await repository.getActiveQuestionnaireForMyRole();
  }
}