// Path: lib/features/project_doc/domain/usecases/search_documents_use_case.dart
import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';
import 'package:find_invest_mobile/features/project_doc/domain/repositories/project_document_repository.dart';

class SearchDocumentsUseCase {
  final ProjectDocumentRepository repository;

  SearchDocumentsUseCase({required this.repository});

  Future<List<ProjectDocumentEntity>> call(String query) async {
    return await repository.searchDocuments(query);
  }
}