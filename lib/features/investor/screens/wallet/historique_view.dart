import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/app_config.dart';
import '../../../../shared/widgets/loading_overlay.dart';
import '../../widgets/investment_tile.dart';
import 'data/wallet_provider.dart';

class HistoryPage extends ConsumerStatefulWidget {
  const HistoryPage({super.key});

  @override
  ConsumerState<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends ConsumerState<HistoryPage>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(investmentProvider.notifier).getInvestments();

    });
  }


  Future<void> _refreshProjects() async {
    await ref.read(investmentProvider.notifier).getInvestments();
  }


  @override
  Widget build(BuildContext context) {
    final investmentState = ref.watch(investmentProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Historique"),
        centerTitle: true,
        leading: IconButton(
            onPressed: ()=> context.pop(),
            icon: const Icon(Icons.arrow_back, color: AppColors.primary, size: 30)
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Row(
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.tune_sharp),
                ),

                const SizedBox(width: 5),
                Text("Les plus récents", style: AppTextStyles.headerH2),
              ],
            ),
        ),
      ),

      body: LoadingOverlay(
        isLoading: investmentState.isLoading,
        child: Column(
          children: [
            Expanded(
              child: RefreshIndicator(
                onRefresh: _refreshProjects,
                child: ListView.builder(
                  itemCount: investmentState.investments.length,
                  itemBuilder: (context, index) {
                    final investment = investmentState.investments[index];
                    return InvestmentTile(
                      subTitle: investment.expectedReturn.description,
                      date: DateTime.parse(investment.createdAt.toString()),
                      amount: investment.amount,
                      onTap: () {
                        // you can navigate to detail page here
                        print("Clicked on ${investment.amount}");
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}