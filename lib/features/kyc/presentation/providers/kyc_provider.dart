import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/kyc/domain/entities/kyc_entity.dart';
import 'package:find_invest_mobile/features/kyc/domain/usecases/delete_document_use_case.dart';
import 'package:find_invest_mobile/features/kyc/domain/usecases/get_kyc_status_use_case.dart';
import 'package:find_invest_mobile/features/kyc/domain/usecases/get_kyc_use_case.dart';
import 'package:find_invest_mobile/features/kyc/domain/usecases/get_required_documents_use_case.dart';
import 'package:find_invest_mobile/features/kyc/domain/usecases/submit_kyc_use_case.dart';
import 'package:find_invest_mobile/features/kyc/domain/usecases/upload_document_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';

enum KycErrorType {
  network,
  validation,
  notFound,
  server,
  unknown,
}

class KycState {
  final KycEntity? selectedKyc;
  final List<String>? requiredDocuments;
  final bool isLoading;
  final KycErrorType? errorType;
  final String? errorMessage;

  KycState({
    this.selectedKyc,
    this.requiredDocuments,
    this.isLoading = false,
    this.errorType,
    this.errorMessage,
  });

  KycState copyWith({
    KycEntity? selectedKyc,
    List<String>? requiredDocuments,
    bool? isLoading,
    KycErrorType? errorType,
    String? errorMessage,
  }) {
    return KycState(
      selectedKyc: selectedKyc ?? this.selectedKyc,
      requiredDocuments: requiredDocuments ?? this.requiredDocuments,
      isLoading: isLoading ?? this.isLoading,
      errorType: errorType,
      errorMessage: errorMessage,
    );
  }
}

final kycProvider = StateNotifierProvider<KycNotifier, KycState>((ref) {
  return KycNotifier(
    getKYCUseCase: getIt<GetKYCUseCase>(),
    submitKYCUseCase: getIt<SubmitKYCUseCase>(),
    deleteDocumentUseCase: getIt<DeleteDocumentUseCase>(),
    getRequiredDocumentsUseCase: getIt<GetRequiredDocumentsUseCase>(),
    getKYCStatusUseCase: getIt<GetKYCStatusUseCase>(),
    uploadDocumentUseCase: getIt<UploadDocumentUseCase>(),
  );
});

class KycNotifier extends StateNotifier<KycState> {
  final GetKYCUseCase getKYCUseCase;
  final SubmitKYCUseCase submitKYCUseCase;
  final DeleteDocumentUseCase deleteDocumentUseCase;
  final GetRequiredDocumentsUseCase getRequiredDocumentsUseCase;
  final GetKYCStatusUseCase getKYCStatusUseCase;
  final UploadDocumentUseCase uploadDocumentUseCase;

  KycNotifier({
    required this.getKYCUseCase,
    required this.submitKYCUseCase,
    required this.deleteDocumentUseCase,
    required this.getRequiredDocumentsUseCase,
    required this.getKYCStatusUseCase,
    required this.uploadDocumentUseCase,
  }) : super(KycState());

  KycErrorType _mapErrorToType(dynamic error) {
    if (error.toString().contains('Network')) return KycErrorType.network;
    if (error.toString().contains('404')) return KycErrorType.notFound;
    if (error.toString().contains('Validation')) return KycErrorType.validation;
    if (error.toString().contains('Server')) return KycErrorType.server;
    return KycErrorType.unknown;
  }

  Future<void> fetchKYC(String userId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final kyc = await getKYCUseCase(userId);
      state = state.copyWith(selectedKyc: kyc, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> submitKYC() async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final kyc = await submitKYCUseCase();
      state = state.copyWith(selectedKyc: kyc, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> uploadDocument(
      Map<String, dynamic> data, MultipartFile file) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final kyc = await uploadDocumentUseCase(data, file);
      state = state.copyWith(selectedKyc: kyc, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> deleteDocument(String userId, String docId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      await deleteDocumentUseCase(userId, docId);
      if (state.selectedKyc != null) {
        final updatedDocuments = state.selectedKyc!.documents
            .where((doc) => doc.publicId != docId)
            .toList();
        final updatedKyc =
            state.selectedKyc!.copyWith(documents: updatedDocuments);
        state = state.copyWith(selectedKyc: updatedKyc, isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchRequiredDocuments(String userId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final documents = await getRequiredDocumentsUseCase(userId);
      state = state.copyWith(requiredDocuments: documents, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchKYCStatus(String userId) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final kyc = await getKYCStatusUseCase(userId);
      state = state.copyWith(selectedKyc: kyc, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }
}
