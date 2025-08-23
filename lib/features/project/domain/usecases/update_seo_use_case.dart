import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class UpdateSEOUseCase {
  final ProjectRepository repository;

  UpdateSEOUseCase({required this.repository});

  Future<Seo> call(String id, Map<String, dynamic> data) async {
    return await repository.updateSEO(id, data);
  }
}