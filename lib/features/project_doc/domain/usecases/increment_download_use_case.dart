// Path: lib/features/project_doc/domain/usecases/increment_download_use_case.dart
import 'package:find_invest_mobile/features/project_doc/domain/repositories/project_document_repository.dart';

class IncrementDownloadUseCase {
  final ProjectDocumentRepository repository;

  IncrementDownloadUseCase({required this.repository});

  Future<void> call(String documentId) async {
    await repository.incrementDownload(documentId);
  }
}