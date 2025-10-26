
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../global_widget/offer_widget.dart';


class ApplicationPage extends ConsumerStatefulWidget {
  const ApplicationPage({super.key});

  @override
  ConsumerState<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends ConsumerState<ApplicationPage>
    with SingleTickerProviderStateMixin {

  List offers = [
    {
      'title': 'Senior Frontend Developer',
      'address': 'Cameroon, Yaounde',
      'salary': '100.000 XFA - 200.000 XFA',
      'skills': ['Flutter', 'ReactJS'],
      'applicants': 24
    },
    {
      'title': 'Développeur Frontend',
      'address': 'Cameroon, Yaounde',
      'salary': '80.000 XFA - 150.000 XFA',
      'skills': ['Vue.js', 'HTML/CSS'],
      'applicants': 12
    },
  ];


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    List tags = ["A distance", "Paie mensuelle"];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Résultats de la recherche',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('14 offres',
                        style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.tune_sharp),
                ),
              ],
            ),
            Wrap(
              spacing: 5,
              children: tags
                  .map((tag) => Chip(
                label: Text(tag,
                    style: TextStyle(
                        fontSize: 10, color: tag == "active" ? Colors.green : Colors.orange)),
                backgroundColor: tag == "active"
                    ? Colors.green.withOpacity(0.1)
                    : Colors.orange.withOpacity(0.1),
              ))
                  .toList(),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: offers.length,
                itemBuilder: (context, index) {
                  var offer = offers[index];
                  return GestureDetector(
                    onTap: () => context.push('/applications/details'),
                    child: OfferWidget(
                      index: index+1,
                      title: offer['title'],
                      subTitle: offer['address'],
                      price: offer['salary'],
                      state: 'retenue',
                      date: DateTime.now().add(Duration(days: -2)),
                      applications: offer['applicants'],
                      isUserApplication: true,
                    ),
                  );
                },
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
            color: AppColors.cardBackground,
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