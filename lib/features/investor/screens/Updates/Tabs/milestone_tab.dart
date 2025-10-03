
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MilestonesTab extends ConsumerStatefulWidget {

  const MilestonesTab({super.key});

  @override
  ConsumerState<MilestonesTab> createState() => _MilestonesTabState();
}

class _MilestonesTabState extends ConsumerState<MilestonesTab>
    with SingleTickerProviderStateMixin {

  int activeStep = 0;
  final milestones = [
    "Implémentation des paiements",
    "Reparamétrisation de la connexion et de l'inscription",
    "Gestion des modules et projets",
    "Test de l’application en général",
    "Commentaires possibles",
    "Fin du projet et déploiement"
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(milestones.length, (index) {
          Color color;
          if (index < activeStep) {
            color = Colors.green;
          } else if (index == activeStep) {
            color = Colors.blue;
          } else {
            color = Colors.grey;
          }

          return Column(
            children: [
              SizedBox(height: 20),
              ListTile(
                leading: index == activeStep ? const Icon(Icons.verified, color: AppColors.primary, size: 35) :
                index < activeStep ? const Icon(Icons.check_circle, color: Colors.green, size: 30) :
                const Icon(Icons.access_time_filled_rounded, color: Colors.grey, size: 30),
                title: Text(
                  milestones[index],
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 16,
                    color: color,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: index == activeStep ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                subtitle: Text("Statut: En cours"),
              ),
            ],
          );
        }),
      ),
    );

    /*return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: milestones.length,
      separatorBuilder: (_, __) => const Divider(),
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(child: Text("${index + 1}")),
          title: Text(milestones[index]),
          subtitle: Text("Statut: En cours"),
        );
      },
    );*/
  }
}