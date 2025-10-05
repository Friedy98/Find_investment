import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/investor/screens/wallet/data/datasource/investment_datasource.dart';
import 'package:find_invest_mobile/features/investor/screens/wallet/data/extensions/investment_extension.dart';
import 'package:find_invest_mobile/features/investor/screens/wallet/data/repository/wallet_repository.dart';
import 'package:find_invest_mobile/features/investor/screens/wallet/data/wallet_entity.dart';
import 'package:find_invest_mobile/features/project/data/datasources/project_remote_datasource.dart';
import 'package:find_invest_mobile/features/project/data/extensions/project_extensions.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';

class InvestmentRepositoryImpl implements InvestmentRepository {
  final InvestmentRemoteDataSource investmentRemoteDataSource;

  InvestmentRepositoryImpl({required this.investmentRemoteDataSource});

  @override
  Future<List<InvestmentEntity>> getInvestments() async {
    final investments = await investmentRemoteDataSource.getInvestments();
    return investments.map((model) => model.toEntity()).toList();
  }

  @override
  Future<InvestmentEntity> createInvestment(Map<String, dynamic> data) async {
    final investment = await investmentRemoteDataSource.createInvestment(data);
    return investment.toEntity();
  }

}
