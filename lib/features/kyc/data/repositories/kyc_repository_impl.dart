import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/kyc/data/datasources/kyc_remote_data_source.dart';
import 'package:find_invest_mobile/features/kyc/data/extensions/kyc_model_extensions.dart';
import 'package:find_invest_mobile/features/kyc/domain/entities/kyc_entity.dart';
import 'package:find_invest_mobile/features/kyc/domain/repositories/kyc_repository.dart';

class KycRepositoryImpl implements KycRepository {
  final KycRemoteDataSource remoteDataSource;

  KycRepositoryImpl({required this.remoteDataSource});

  @override
  Future<KycEntity> getKYC(String userId) async {
    try {
      final model = await remoteDataSource.getKYC(userId);
      LoggingService.info(
          'KycRepositoryImpl: Converting KYC for user $userId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Get KYC error: $e');
      throw Exception('Failed to fetch KYC');
    }
  }

  @override
  Future<KycEntity> submitKYC() async {
    try {
      final model = await remoteDataSource.submitKYC();
      LoggingService.info(
          'KycRepositoryImpl: Converting submitted KYC to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Submit KYC error: $e');
      throw Exception('Failed to submit KYC');
    }
  }

  @override
  Future<KycEntity> uploadDocument(
      Map<String, dynamic> data, MultipartFile file) async {
    try {
      final model = await remoteDataSource.uploadDocument(data, file);
      LoggingService.info(
          'KycRepositoryImpl: Converting submitted KYC to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Submit KYC error: $e');
      throw Exception('Failed to submit KYC');
    }
  }

  @override
  Future<void> deleteDocument(String userId, String docId) async {
    try {
      await remoteDataSource.deleteDocument(userId, docId);
      LoggingService.info(
          'KycRepositoryImpl: Deleted document $docId for user $userId');
    } catch (e) {
      LoggingService.error('Delete document error: $e');
      throw Exception('Failed to delete document');
    }
  }

  @override
  Future<List<String>> getRequiredDocuments(String userId) async {
    try {
      final documents = await remoteDataSource.getRequiredDocuments(userId);
      LoggingService.info(
          'KycRepositoryImpl: Fetched required documents for user $userId');
      return documents;
    } catch (e) {
      LoggingService.error('Get required documents error: $e');
      throw Exception('Failed to fetch required documents');
    }
  }

  @override
  Future<KycEntity> getKYCStatus(String userId) async {
    try {
      final model = await remoteDataSource.getKYCStatus(userId);
      LoggingService.info(
          'KycRepositoryImpl: Converting KYC status for user $userId to entity');
      return model.toEntity();
    } catch (e) {
      LoggingService.error('Get KYC status error: $e');
      throw Exception('Failed to fetch KYC status');
    }
  }
}
