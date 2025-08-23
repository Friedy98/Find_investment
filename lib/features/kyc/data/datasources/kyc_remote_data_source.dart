import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/features/kyc/data/models/kyc_model.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';

abstract class KycRemoteDataSource {
  Future<KycModel> getKYC(String userId);
  Future<KycModel> submitKYC();
  Future<KycModel> uploadDocument(
      Map<String, dynamic> data, MultipartFile documents);
  Future<void> deleteDocument(String userId, String docId);
  Future<List<String>> getRequiredDocuments(String userId);
  Future<KycModel> getKYCStatus(String userId);
}

class KycRemoteDataSourceImpl implements KycRemoteDataSource {
  final NetworkService networkService;

  KycRemoteDataSourceImpl({
    required this.networkService,
  });

  @override
  Future<KycModel> getKYC(String userId) async {
    try {
      final response = await networkService.get(
        '/kyc/profile',
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch KYC for user $userId: response not successful');
        throw Exception('Failed to fetch KYC');
      }
      LoggingService.info('KycRemoteDataSource: Fetched KYC for user $userId');
      return KycModel.fromJson(response.data['data']['kyc']);
    } catch (e) {
      LoggingService.error('Get KYC error: $e');
      throw Exception('Failed to fetch KYC');
    }
  }

  @override
  Future<KycModel> uploadDocument(
    Map<String, dynamic> data,
    MultipartFile file,
  ) async {
    try {
      // Construire directement le FormData avec le fichier et les métadonnées
      final formData = FormData.fromMap({
        'document': file, // le fichier
        ...data.map(
            (key, value) => MapEntry(key, value.toString())), // autres champs
      });

      final response = await networkService.postFormData(
        '/kyc/upload-document',
        formData: formData,
      );

      if (response.data['success'] == false) {
        LoggingService.error('Failed to submit KYC: response not successful');
        throw Exception('Failed to submit KYC');
      }

      LoggingService.info('KycRemoteDataSource: Submitted KYC');

      return KycModel.fromJson(response.data['data']['kyc']);
    } catch (e) {
      LoggingService.error('Submit KYC error: $e');
      throw Exception('Failed to submit KYC');
    }
  }

  @override
  Future<KycModel> submitKYC() async {
    try {
      final response = await networkService.post(
        '/kyc/submit',
      );

      if (response.data['success'] == false) {
        LoggingService.error('Failed to submit KYC : response not successful');
        throw Exception('Failed to submit KYC');
      }

      LoggingService.info('KycRemoteDataSource: Submitted KYC for user');

      return KycModel.fromJson(response.data['data']['kyc']);
    } catch (e) {
      LoggingService.error('Submit KYC error: $e');
      throw Exception('Failed to submit KYC');
    }
  }

  @override
  Future<void> deleteDocument(String userId, String docId) async {
    try {
      final response = await networkService.delete(
        '/kyc/delete-document/$docId',
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to delete document $docId for user $userId: response not successful');
        throw Exception('Failed to delete document');
      }
      LoggingService.info(
          'KycRemoteDataSource: Deleted document $docId for user $userId');
    } catch (e) {
      LoggingService.error('Delete document error: $e');
      throw Exception('Failed to delete document');
    }
  }

  @override
  Future<List<String>> getRequiredDocuments(String userId) async {
    try {
      final response = await networkService.get(
        '/kyc/check-requirement',
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch required documents for user $userId: response not successful');
        throw Exception('Failed to fetch required documents');
      }
      LoggingService.info(
          'KycRemoteDataSource: Fetched required documents for user $userId');
      return List<String>.from(response.data['data']['requiredDocs'] ?? []);
    } catch (e) {
      LoggingService.error('Get required documents error: $e');
      throw Exception('Failed to fetch required documents');
    }
  }

  @override
  Future<KycModel> getKYCStatus(String userId) async {
    try {
      final response = await networkService.get(
        '/kyc/status',
      );

      if (response.data['success'] == false) {
        LoggingService.error(
            'Failed to fetch KYC status for user $userId: response not successful');
        throw Exception('Failed to fetch KYC status');
      }
      LoggingService.info(
          'KycRemoteDataSource: Fetched KYC status for user $userId');
      return KycModel.fromJson(response.data['data']['kyc']);
    } catch (e) {
      LoggingService.error('Get KYC status error: $e');
      throw Exception('Failed to fetch KYC status');
    }
  }
}
