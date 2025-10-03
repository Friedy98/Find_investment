import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/app_config.dart';
import '../../widgets/investment_tile.dart';

class HistoryPage extends ConsumerStatefulWidget {
  const HistoryPage({super.key});

  @override
  ConsumerState<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends ConsumerState<HistoryPage>
    with SingleTickerProviderStateMixin {

  final List<Map<String, String>> investments = [
    {"title": "Investissement de ", "amount": "200,000 FCFA", "date": "12 Juil 2025", "subTitle": "Mise en place d'une plateforme de vente de bijoux de luxe"},
    {"title": "Investissement de ", "amount": "400,000 FCFA", "date": "12 Juil 2025", "subTitle": "Mise en place d'une plateforme de vente de bijoux de luxe"},
    {"title": "Investissement de ", "amount": "150,000 FCFA", "date": "12 Juil 2025", "subTitle": "Mise en place d'une plateforme de vente de bijoux de luxe"},
    {"title": "Investissement de ", "amount": "350,000 FCFA", "date": "12 Juil 2025", "subTitle": "Mise en place d'une plateforme de vente de bijoux de luxe"},
    {"title": "Investissement de ", "amount": "600,000 FCFA", "date": "12 Juil 2025", "subTitle": "Mise en place d'une plateforme de vente de bijoux de luxe"},
  ];

  @override
  Widget build(BuildContext context) {

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

      body: ListView.builder(
        itemCount: investments.length,
        itemBuilder: (context, index) {
          final investment = investments[index];
          return InvestmentTile(
            title: investment["title"]!,
            subTitle: investment["subTitle"]!,
            date: investment["date"]!,
            amount: investment["amount"]!,
            onTap: () {
              // you can navigate to detail page here
              print("Clicked on ${investment["title"]}");
            },
          );
        },
      ),
    );
  }

}