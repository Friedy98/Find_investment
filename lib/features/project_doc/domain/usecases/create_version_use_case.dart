// Path: lib/features/project_doc/domain/usecases/create_version_use_case.dart
import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';
import 'package:find_invest_mobile/features/project_doc/domain/repositories/project_document_repository.dart';

class CreateVersionUseCase {
  final ProjectDocumentRepository repository;

  CreateVersionUseCase({required this.repository});

  Future<ProjectDocumentEntity> call(String documentId, Map<String, dynamic> data, FormData formData) async {
    return await repository.createVersion(documentId, data, formData);
  }
}