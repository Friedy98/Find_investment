import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../job-seeker/global_widget/global.dart';

/// --- Widget séparé : carte de financement ---
class FinancementCard extends StatelessWidget {
  final String title;
  final double montant;
  final String date;
  final bool accepted;
  final VoidCallback onTap;

  const FinancementCard({
    super.key,
    required this.title,
    required this.montant,
    required this.date,
    required this.onTap,
    this.accepted = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: accepted ? Colors.green : Colors.blue,
                child: Icon(
                  accepted ? Icons.check : Icons.person,
                  color: Colors.white,
                ),
              ),
              title: Text(title,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              trailing: const SkillChip("investisseur"),
            ),
            ListTile(
              title: Text(!accepted ? "Proposition de financement:" : "Apport financier:",
                  style: const TextStyle(fontSize: 12)
              ),
              trailing: Text("${montant.toStringAsFixed(0)} FCFA",
                  style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: AppColors.primary)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Icon(Icons.access_time_filled, color: Colors.grey),
                  SizedBox(width: 10),
                  Text( date,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
