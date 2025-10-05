import 'package:find_invest_mobile/features/investor/screens/wallet/data/repository/wallet_repository.dart';
import 'package:find_invest_mobile/features/investor/screens/wallet/data/wallet_entity.dart';

class GetInvestmentUsecase {
  final InvestmentRepository repository;

  GetInvestmentUsecase({required this.repository});

  Future<List<InvestmentEntity>> call(/*{
    Map<String, dynamic>? filters,
    int page = 1,
    int limit = 20,
  }*/) async {
    return await repository.getInvestments(
      /*filters: filters,
      page: page,
      limit: limit,*/
    );
  }

}

class CreateInvestmentUseCase {
  final InvestmentRepository repository;

  CreateInvestmentUseCase({required this.repository});

  Future<InvestmentEntity> call(Map<String, dynamic> data) async {
    return await repository.createInvestment(data);
  }
}
