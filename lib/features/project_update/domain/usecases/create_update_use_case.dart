import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';
import 'package:find_invest_mobile/features/project_update/domain/repositories/project_update_repository.dart';
import 'package:dio/dio.dart';

class CreateUpdateUseCase {
  final ProjectUpdateRepository repository;

  CreateUpdateUseCase({required this.repository});

  Future<ProjectUpdateEntity> call(
      Map<String, dynamic> data, FormData? formData) {
    return repository.createUpdate(data, formData);
  }
}
