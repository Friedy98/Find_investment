import 'package:find_invest_mobile/features/kyc/domain/repositories/kyc_repository.dart';

class GetRequiredDocumentsUseCase {
  final KycRepository repository;

  GetRequiredDocumentsUseCase({required this.repository});

  Future<List<String>> call(String userId) {
    return repository.getRequiredDocuments(userId);
  }
}
