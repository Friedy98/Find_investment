import 'package:find_invest_mobile/features/investor/investor_usecases/investment_usecase.dart';
import 'package:find_invest_mobile/features/investor/screens/wallet/data/wallet_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/service_locator.dart';

enum InvestmentErrorType {
  network,
  validation,
  notFound,
  server,
  unknown,
}

class InvestmentState {
  final List<InvestmentEntity> investments;
  final InvestmentEntity? selectedInvestment;
  final bool isLoading;
  final InvestmentErrorType? errorType;
  final String? errorMessage;
  final Map<String, dynamic>? investmentStats;
  final List<ReturnEntity>? investmentReturns;
  final Map<String, dynamic>? investmentAnalytics;

  InvestmentState({
    this.investments = const [],
    this.selectedInvestment,
    this.isLoading = false,
    this.errorType,
    this.errorMessage,
    this.investmentStats,
    this.investmentReturns,
    this.investmentAnalytics,
  });

  InvestmentState copyWith({
    List<InvestmentEntity>? investments,
    InvestmentEntity? selectedInvestment,
    bool? isLoading,
    InvestmentErrorType? errorType,
    String? errorMessage,
    Map<String, dynamic>? investmentStats,
    List<ReturnEntity>? investmentReturns,
    Map<String, dynamic>? investmentAnalytics,
  }) {
    return InvestmentState(
      investments: investments ?? this.investments,
      selectedInvestment: selectedInvestment ?? this.selectedInvestment,
      isLoading: isLoading ?? this.isLoading,
      errorType: errorType,
      errorMessage: errorMessage ?? this.errorMessage,
      investmentStats: investmentStats ?? this.investmentStats,
      investmentReturns: investmentReturns ?? this.investmentReturns,
      investmentAnalytics: investmentAnalytics ?? this.investmentAnalytics,
    );
  }
}

final investmentProvider =
  StateNotifierProvider<InvestmentNotifier, InvestmentState>((ref) {
  return InvestmentNotifier(
    getInvestmentUseCase: getIt<GetInvestmentUsecase>(),
    createInvestmentUseCase: getIt<CreateInvestmentUseCase>(),
  );
});

class InvestmentNotifier extends StateNotifier<InvestmentState> {

  final GetInvestmentUsecase getInvestmentUseCase;
  final CreateInvestmentUseCase createInvestmentUseCase;

  InvestmentNotifier({
    required this.getInvestmentUseCase,
    required this.createInvestmentUseCase
  }) : super(InvestmentState());

  InvestmentErrorType _mapErrorToType(dynamic error) {
    if (error.toString().contains('Network')) return InvestmentErrorType.network;
    if (error.toString().contains('404')) return InvestmentErrorType.notFound;
    if (error.toString().contains('Validation'))
      return InvestmentErrorType.validation;
    if (error.toString().contains('Server')) return InvestmentErrorType.server;
    return InvestmentErrorType.unknown;
  }

  Future<void> getInvestments({
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  }) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final investments = await getInvestmentUseCase(
        /*filters: filters,
        page: page,
        limit: limit,*/
      );
      state = state.copyWith(investments: investments, isLoading: false);

      print("investments are : ${state.investments}");
    } catch (e) {
      print("error : ${state.errorType}");
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> createProject(Map<String, dynamic> data) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final invest = await createInvestmentUseCase(data);
      final updatedProjects = List<InvestmentEntity>.from(state.investments)
        ..add(invest);
      state = state.copyWith(investments: updatedProjects, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

}
