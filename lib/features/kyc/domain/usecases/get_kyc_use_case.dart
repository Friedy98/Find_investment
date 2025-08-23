import 'package:find_invest_mobile/features/kyc/domain/entities/kyc_entity.dart';
import 'package:find_invest_mobile/features/kyc/domain/repositories/kyc_repository.dart';

class GetKYCUseCase {
  final KycRepository repository;

  GetKYCUseCase({required this.repository});

  Future<KycEntity> call(String userId) {
    return repository.getKYC(userId);
  }
}
