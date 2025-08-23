// Path: lib/features/project_doc/domain/usecases/get_document_by_id_use_case.dart
import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';
import 'package:find_invest_mobile/features/project_doc/domain/repositories/project_document_repository.dart';

class GetDocumentByIdUseCase {
  final ProjectDocumentRepository repository;

  GetDocumentByIdUseCase({required this.repository});

  Future<ProjectDocumentEntity> call(String documentId) async {
    return await repository.getDocument(documentId);
  }
}
