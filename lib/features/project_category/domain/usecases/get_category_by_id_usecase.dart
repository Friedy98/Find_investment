// Path: lib/features/project_owner/domain/usecases/get_category_by_id.dart
import 'package:find_invest_mobile/features/project_category/domain/entities/project_category_entity.dart';
import 'package:find_invest_mobile/features/project_category/domain/repositories/project_category_repository.dart';

class GetCategoryById {
  final ProjectCategoryRepository repository;

  GetCategoryById(this.repository);

  Future<ProjectCategoryEntity> call(String id) async {
    return await repository.getCategoryById(id);
  }
}
