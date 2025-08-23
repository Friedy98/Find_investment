// Path: lib/features/project_doc/domain/usecases/update_document_use_case.dart
import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';
import 'package:find_invest_mobile/features/project_doc/domain/repositories/project_document_repository.dart';

class UpdateDocumentUseCase {
  final ProjectDocumentRepository repository;

  UpdateDocumentUseCase({required this.repository});

  Future<ProjectDocumentEntity> call(String documentId, Map<String, dynamic> data) async {
    return await repository.updateDocument(documentId, data);
  }
}