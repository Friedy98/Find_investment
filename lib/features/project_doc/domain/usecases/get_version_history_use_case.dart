// Path: lib/features/project_doc/domain/usecases/get_version_history_use_case.dart
import 'package:find_invest_mobile/features/project_doc/domain/entities/project_document_entity.dart';
import 'package:find_invest_mobile/features/project_doc/domain/repositories/project_document_repository.dart';

class GetVersionHistoryUseCase {
  final ProjectDocumentRepository repository;

  GetVersionHistoryUseCase({required this.repository});

  Future<List<ProjectDocumentEntity>> call(String documentId) async {
    return await repository.getVersionHistory(documentId);
  }
}
