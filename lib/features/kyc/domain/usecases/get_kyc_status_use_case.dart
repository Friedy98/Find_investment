import 'package:find_invest_mobile/features/kyc/domain/entities/kyc_entity.dart';
import 'package:find_invest_mobile/features/kyc/domain/repositories/kyc_repository.dart';

class GetKYCStatusUseCase {
  final KycRepository repository;

  GetKYCStatusUseCase({required this.repository});

  Future<KycEntity> call(String userId) {
    return repository.getKYCStatus(userId);
  }
}