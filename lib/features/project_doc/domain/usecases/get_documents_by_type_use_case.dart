// Path: lib/features/project_doc/domain/usecases/get_documents_by_type_use_case.dart
import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';
import 'package:find_invest_mobile/features/project_doc/domain/repositories/project_document_repository.dart';

class GetDocumentsByTypeUseCase {
  final ProjectDocumentRepository repository;

  GetDocumentsByTypeUseCase({required this.repository});

  Future<List<ProjectDocumentEntity>> call({
    required String type,
    required String projectId,
  }) async {
    return await repository.getDocumentsByType(type: type, projectId: projectId);
  }
}