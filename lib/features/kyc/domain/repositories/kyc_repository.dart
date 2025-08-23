import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/kyc/domain/entities/kyc_entity.dart';

abstract class KycRepository {
  Future<KycEntity> getKYC(String userId);
  Future<KycEntity> submitKYC();
  Future<void> deleteDocument(String userId, String docId);
  Future<List<String>> getRequiredDocuments(String userId);
  Future<KycEntity> getKYCStatus(String userId);
  Future<KycEntity> uploadDocument(
      Map<String, dynamic> data, MultipartFile file);
}
