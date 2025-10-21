
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';

import '../model/investment_model.dart';

abstract class InvestmentRemoteDataSource {
  Future<List<InvestmentModel>> getInvestments();

  Future<InvestmentModel> createInvestment(Map<String, dynamic> data);
}

class InvestmentRemoteDataSourceImpl implements InvestmentRemoteDataSource {
  final NetworkService networkService;

  InvestmentRemoteDataSourceImpl({required this.networkService});

  static const String basePath = '/investments';

  @override
  Future<List<InvestmentModel>> getInvestments() async {
    try {
      final response = await networkService.get(
        basePath,
         );
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to fetch investments: response not successful');
        throw Exception('Failed to fetch investments');
      }
      LoggingService.info('Fetched ${response.data['data'].length} investments');
      return (response.data['data'] as List)
          .map((json) => InvestmentModel.fromJson(json))
          .toList();
    } catch (e) {
      LoggingService.error('Get investment error: $e');
      throw Exception('Failed to fetch investment');
    }
  }

  @override
  Future<InvestmentModel> createInvestment(Map<String, dynamic> data) async {
    try {
      final response = await networkService.post(basePath, data: data);
      if (!response.data['success']) {
        LoggingService.error(
            'Failed to create investment: response not successful');
        throw Exception('Failed to create investment');
      }
      LoggingService.info('Created investment ${response.data['data']['id']}');
      return InvestmentModel.fromJson(response.data['data']);
    } catch (e) {
      LoggingService.error('Create investment error: $e');
      throw Exception('Failed to create investment');
    }
  }

}
