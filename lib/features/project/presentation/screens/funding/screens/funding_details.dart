import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'etat_avancement.dart';

class FundingDetailsView extends ConsumerStatefulWidget {
  const FundingDetailsView({super.key});

  @override
  ConsumerState<FundingDetailsView> createState() =>
      _FundingDetailsViewState();
}

class _FundingDetailsViewState
    extends ConsumerState<FundingDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Détails du financement")),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const TabBar(
              tabs: [
                Tab(text: "Général"),
                Tab(text: "Etat d'avancement")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              fundingDetails(context),
              const EtatAvancementView()
            ],
          ),
        ),
      )
    );
  }

  Widget fundingDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Type d'investissement",
            style: TextStyle(fontSize: 16),
          ),
          Chip(
            label: const Text("Proposition de financement"),
            backgroundColor: Colors.orange.shade600,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "230 000 FCFA",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              "Plateforme de dons pour les agriculteurs",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Informations sur l’investisseur",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Card(
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("Fokou BEFO"),
              subtitle: Text("Région : Abatta"),
            ),
          ),
        ],
      ),
    );
  }

}
