import 'package:find_invest_mobile/features/kyc/domain/entities/kyc_entity.dart';
import 'package:find_invest_mobile/features/kyc/domain/repositories/kyc_repository.dart';
import 'package:dio/dio.dart';

class UploadDocumentUseCase {
  final KycRepository repository;

  UploadDocumentUseCase({required this.repository});

  Future<KycEntity> call(Map<String, dynamic> data, MultipartFile file) {
    return repository.uploadDocument(data, file);
  }
}
