import 'package:find_invest_mobile/features/project_update/domain/entities/project_update_entity.dart';
import 'package:find_invest_mobile/features/project_update/domain/repositories/project_update_repository.dart';
import 'package:dio/dio.dart';

class AddAttachmentUseCase {
  final ProjectUpdateRepository repository;

  AddAttachmentUseCase({required this.repository});

  Future<ProjectUpdateEntity> call(String updateId, FormData formData) {
    return repository.addAttachment(updateId, formData);
  }
}