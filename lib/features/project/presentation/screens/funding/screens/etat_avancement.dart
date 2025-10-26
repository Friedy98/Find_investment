import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EtatAvancementView extends ConsumerStatefulWidget {
  const EtatAvancementView({super.key});

  @override
  ConsumerState<EtatAvancementView> createState() => _EtatAvancementViewState();
}

class _EtatAvancementViewState extends ConsumerState<EtatAvancementView> {

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: isDarkMode ? CupertinoColors.activeBlue : Colors.blue[100],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  const Text(
                    "Montant déjà investi",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "100 000 FCFA",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: isDarkMode ? Colors.lightBlueAccent : Colors.blue ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Liste des versements effectués",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text("Montant"),
                    trailing: Text("100 000 FCFA",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    title: Text("Date"),
                    trailing: Text("12/07/2025",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    title: Text("Motif"),
                    subtitle: Text("Avance pour le lancement du projet et l'achat des équipements nécessaires",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
