import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';

import 'Tabs/alerts_tab.dart';
import 'Tabs/favorites_tab.dart';

class AlertView extends ConsumerStatefulWidget {

  const AlertView({super.key});

  @override
  ConsumerState<AlertView> createState() => _AlertViewState();
}

class _AlertViewState extends ConsumerState<AlertView>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const TabBar(
            tabs: [
              Tab(text: "Alertes"),
              Tab(text: "Favories"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primary,
            shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.white, size: 30),
            onPressed: ()=> _showOptionsSheet()
        ).animate().scale(delay: 500.ms),
        body: const TabBarView(
          children: [
            AlertsTab(),
            FavoritesTab(),
          ],
        ),
      ),
    );
  }

  void _showOptionsSheet() {

    double width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.2,
        maxChildSize: 0.2,
        minChildSize: 0.2,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 12.h),
                      width: 120.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                        color: AppColors.gray300,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                        onPressed: (){},
                        child: Text("Créer un nouveau groupe",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp
                          ),)
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                        onPressed: (){},
                        child: Text("Ajouter un post",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp
                          ),)
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}