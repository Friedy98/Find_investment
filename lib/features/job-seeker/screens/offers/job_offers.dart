// import 'package:find_invest_mobile/features/project/presentation/widgets/timeline_tab.dart';
import 'package:find_invest_mobile/features/job-seeker/global_widget/offer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:go_router/go_router.dart';
import 'Tabs/all_projects_view.dart';

class JobOffers extends ConsumerStatefulWidget {

  const JobOffers({
    super.key,
  });

  @override
  ConsumerState<JobOffers> createState() => _JobOffersState();
}

class _JobOffersState extends ConsumerState<JobOffers>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   ref.read(projectProvider.notifier).getProject(widget.projectId);
    //   // ref.read(projectProvider.notifier).getProjectInvestors(widget.projectId);
    // });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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

    List tags = ["A distance", "Paie mensuelle"];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(20.h),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15.0),
              child: TextField(
                onChanged: (value){},
                decoration: InputDecoration(
                  hintText: "Rechercher",
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Theme.of(context).dialogBackgroundColor,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search, color: Colors.grey),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
        ),
      ),
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
                    Text('14 résultats',
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
                        fontSize: 10, color: tag == "A distance" ? Colors.green : AppColors.primary)),

                backgroundColor: tag == "A distance"
                    ? Colors.green.withOpacity(0.1)
                    : AppColors.primary.withOpacity(0.1),
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
                    onTap: () => context.push('/my_applications/details'),
                      // onTap: (){},
                    child: OfferWidget(
                      index: index+1,
                        title: offer['title'],
                        subTitle: offer['address'],
                        price: offer['salary'],
                        state: 'retenue',
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
