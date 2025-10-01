
import 'package:flutter/material.dart';

class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        Image.network("https://picsum.photos/400/200"),
        const SizedBox(height: 10),
        const Text("Plateforme de plantation des choux en série",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 6),
        const Text("Budget: 2.300.000 FCFA"),
        const SizedBox(height: 12),
        const Text("Dernier avancement", style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 6),
        const LinearProgressIndicator(value: 0.1),
        const SizedBox(height: 12),
        const Text("Description du projet ici…"),
      ],
    );
  }
}