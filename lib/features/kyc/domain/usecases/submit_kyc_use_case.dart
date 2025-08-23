import 'package:find_invest_mobile/features/kyc/domain/entities/kyc_entity.dart';
import 'package:find_invest_mobile/features/kyc/domain/repositories/kyc_repository.dart';

class SubmitKYCUseCase {
  final KycRepository repository;

  SubmitKYCUseCase({required this.repository});

  Future<KycEntity> call() {
    return repository.submitKYC();
  }
}
