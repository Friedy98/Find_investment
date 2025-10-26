import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../widget/funding_card.dart';

class FundingScreen extends ConsumerStatefulWidget {

  const FundingScreen({super.key});

  @override
  ConsumerState<FundingScreen> createState() => _FundingScreenState();
}

class _FundingScreenState extends ConsumerState<FundingScreen> {
  int _selectedTab = 0;


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const TabBar(
            tabs: [
              Tab(text: "Propositions"),
              Tab(text: "Financements acceptés")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildPropositions(context),
            _buildAccepted(context)
          ],
        ),
      ),
    );
  }

  Widget _buildPropositions(BuildContext context) {
    return ListView(
      children: [
        FinancementCard(
          title: "Fokou BEFO",
          montant: 230000,
          date: "29 avril 2025",
          accepted: false,
          onTap: () => context.push("/project-owner/fundingDto"),
        ),
      ],
    );
  }

  Widget _buildAccepted(BuildContext context) {
    return ListView(
      children: [
        FinancementCard(
          title: "Fokou BEFO",
          montant: 230000,
          date: "29 avril 2025",
          accepted: true,
          onTap: () => context.push("/project-owner/fundingDto"),
        ),
      ],
    );
  }
}