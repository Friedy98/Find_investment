// Path: lib/features/project_doc/domain/usecases/delete_document_use_case.dart
import 'package:find_invest_mobile/features/project_doc/domain/repositories/project_document_repository.dart';

class DeleteDocumentUseCase {
  final ProjectDocumentRepository repository;

  DeleteDocumentUseCase({required this.repository});

  Future<void> call(String documentId) async {
    await repository.deleteDocument(documentId);
  }
}
