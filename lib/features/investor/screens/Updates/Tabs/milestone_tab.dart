
import 'package:flutter/material.dart';

class MilestonesTab extends StatelessWidget {
  const MilestonesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final milestones = [
      "Implémentation des paiements",
      "Reparamétrisation de la connexion et de l'inscription",
      "Gestion des modules et projets",
      "Test de l’application en général",
      "Commentaires possibles",
      "Fin du projet et déploiement"
    ];

    return ListView.separated(
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
    );
  }
}