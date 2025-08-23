// Path: lib/features/project_doc/domain/usecases/list_documents_use_case.dart
import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';
import 'package:find_invest_mobile/features/project_doc/domain/repositories/project_document_repository.dart';

class ListDocumentsUseCase {
  final ProjectDocumentRepository repository;

  ListDocumentsUseCase({required this.repository});

  Future<List<ProjectDocumentEntity>> call({
    required String projectId,
    int page = 1,
    int limit = 10,
    String? type,
    String? category,
    String? visibility,
    bool? isApproved,
  }) async {
    return await repository.listDocuments(
      projectId: projectId,
      page: page,
      limit: limit,
      type: type,
      category: category,
      visibility: visibility,
      isApproved: isApproved,
    );
  }
}
