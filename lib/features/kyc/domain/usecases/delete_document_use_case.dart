import 'package:find_invest_mobile/features/kyc/domain/repositories/kyc_repository.dart';

class DeleteDocumentUseCase {
  final KycRepository repository;

  DeleteDocumentUseCase({required this.repository});

  Future<void> call(String userId, String docId) {
    return repository.deleteDocument(userId, docId);
  }
}
