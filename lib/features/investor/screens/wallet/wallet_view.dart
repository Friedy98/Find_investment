
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/investment_tile.dart';

class WalletPage extends ConsumerStatefulWidget {
  const WalletPage({super.key});

  @override
  ConsumerState<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends ConsumerState<WalletPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: width,
              height: 150,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.purpleAccent, Colors.blue]
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Investissement total",
                      style: const TextStyle(
                          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 10),
                  const Text("2,300,450 FCFA",
                      style: const TextStyle(
                          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  CustomButton(
                    backgroundColor: Colors.white,
                    textColor: AppColors.primary,
                    text: "Voir l'historique",
                    onPressed: (){}
                  )

                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: width,
              height: 100,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.purpleAccent, Colors.blueAccent]
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Rendement estimé",
                      style: const TextStyle(
                          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
                  SizedBox(height: 8),
                  Text("4,050,000 FCFA",
                      style: const TextStyle(
                          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
                backgroundColor: AppColors.primary,
                textColor: Colors.white,
                text: "Voir les statistiques",
                onPressed: _showStatisticsSheet
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Les 5 derniers investissements",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const Spacer(),
                TextButton(
                    onPressed: ()=> context.push('/investor/history'),
                    child: Text("Voir plus",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        color: Colors.grey,
                      )
                    )
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: const [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showStatisticsSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.8,
        maxChildSize: 0.8,
        minChildSize: 0.4,
        builder: (context, scrollController) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          // height: height/1.8,
          decoration: BoxDecoration(
            color: Theme.of(context).dialogBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.r),
              topRight: Radius.circular(24.r),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.gray200.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 12.h, bottom: 20),
                  width: 80.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: AppColors.gray300,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                const Text("Statistiques",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text("Rendement par secteur",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 20),
                    _buildProgress("Agriculture, (60%)", 0.6, Colors.amber),
                    _buildProgress("Infrastructures, (30%)", 0.3, Colors.blue),
                    _buildProgress("Education, (10%)", 0.1, Colors.green),
                    _buildProgress("Agriculture, (0%)", 0.0, Colors.blue),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProgress(String title, double value, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 6),
        LinearProgressIndicator(
          value: value,
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          backgroundColor: Colors.grey[200],
          minHeight: 40,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}