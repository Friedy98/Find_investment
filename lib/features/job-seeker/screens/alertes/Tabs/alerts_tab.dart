import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_colors.dart';

class AlertsTab extends StatelessWidget {
  const AlertsTab({super.key});

  @override
  Widget build(BuildContext context) {

    List alerts = [
      {
        'title': '2 préférences actives',
        'state': 'actif'
      },
      {
        'title': 'Développeur Frontend',
        'state': 'inactif'
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Liste des alertes',
              style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: alerts.length,
              itemBuilder: (context, index) {
                var alert = alerts[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  child: ListTile(
                    leading: const Icon(Icons.picture_as_pdf_rounded, color: Colors.red),
                    title: Row(
                      children: [
                        Text('Alerte ${index+1}',
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            )
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: alert["state"] == "actif"
                                  ? Colors.green.withOpacity(0.1)
                                  : Colors.grey.withOpacity(0.1),
                              borderRadius:
                              BorderRadius.circular(8)),
                          child: Text( alert["state"],
                            style: TextStyle( color: alert["state"] == "actif"
                                ? Colors.green : Colors.grey),
                          ),
                        )
                      ],
                    ),
                    subtitle: Text(alert["title"],
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                        )),
                    trailing: IconButton(
                      icon: const Icon(Icons.more_vert_rounded),
                      onPressed: () {},
                    ),
                    onTap: () => _showActionsOptionsSheet(context),
                  ),
                ).animate(delay: Duration(milliseconds: index*120))
                    .fadeIn()
                    .slideY(begin: 0.3);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showActionsOptionsSheet(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.3,
        maxChildSize: 0.4,
        minChildSize: 0.3,
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
                    SizedBox(height: 10),
                    TextButton(
                        onPressed: (){},
                        child: Text("Définir comme actif",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp
                          ),)
                    ),
                    dividerWidget(),
                    TextButton(
                        onPressed: (){},
                        child: Text("Modifier",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp
                          ),)
                    ),
                    dividerWidget(),
                    TextButton(
                        onPressed: (){},
                        child: Text("Supprimer l'alerte",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp,
                              color: Colors.red
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

  Widget dividerWidget(){
    return const Column(
      children: [
        SizedBox(height: 10),
        Divider(),
        SizedBox(height: 10),
      ],
    );
  }


}
