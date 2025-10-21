import 'package:find_invest_mobile/config/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../global_widget/offer_widget.dart';

class FavoritesTab extends ConsumerStatefulWidget {
  const FavoritesTab({super.key});

  @override
  ConsumerState<FavoritesTab> createState() => _FavoritesTabState();
}

class _FavoritesTabState extends ConsumerState<FavoritesTab>
    with SingleTickerProviderStateMixin {

  List members = [];


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

    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Résultats de la recherche',
                    style: Theme.of(context).textTheme.titleMedium),
                Spacer(),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.tune_sharp),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: offers.length,
                itemBuilder: (context, index) {
                  var offer = offers[index];
                  return GestureDetector(
                    // onTap: () => context.go('/my_applications/details'),
                      onTap: (){},
                      child: OfferWidget(
                        index: index+1,
                        title: offer['title'],
                        subTitle: offer['address'],
                        price: offer['salary'],
                        state: 'retenue',
                        isFavorite : true,
                        date: DateTime.now().add(Duration(days: -2)),
                        applications: offer['applicants'],
                        isUserApplication: false,
                      )
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}