import 'package:find_invest_mobile/features/investor/screens/wallet/data/wallet_entity.dart';

abstract class InvestmentRepository {
  Future<List<InvestmentEntity>> getInvestments();
  Future<InvestmentEntity> createInvestment(Map<String, dynamic> data);

}