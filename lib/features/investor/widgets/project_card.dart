import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../presentation/widgets/custom_button.dart';

class InvestorProjectCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final List<String> tags; // ex: ["Agriculture", "Actif"]
  final int amount; // ex: 2300000
  final double progress; // 0.0 - 1.0
  final String author;
  final String newUpdate;
  final String updateDescription;
  final bool isUpdate;
  final String role;
  final String publishedAgo;
  final VoidCallback? onTap;
  final VoidCallback? onUpdateTap;

  const InvestorProjectCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.tags,
    required this.isUpdate,
    required this.newUpdate,
    required this.updateDescription,
    required this.amount,
    required this.progress,
    required this.author,
    required this.role,
    required this.publishedAgo,
    required this.onTap,
    required this.onUpdateTap
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: isUpdate ? onUpdateTap : onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 📷 Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.network(
                imageUrl,
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 📌 Title
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),

                  // 🏷️ Tags
                  Row(
                    children: [
                      Wrap(
                        spacing: 5,
                        children: tags
                            .map((tag) => Chip(
                          label: Text(tag,
                              style: TextStyle(
                                  fontSize: 10, color: tag == "active" ? Colors.green : Colors.orange)),
                          backgroundColor: tag == "active"
                              ? Colors.green.withOpacity(0.1)
                              : Colors.orange.withOpacity(0.1),
                        ))
                            .toList(),
                      ),
                      Spacer(),
                      // 💰 Amount
                      Text(
                        "${amount.toStringAsFixed(0)} FCFA",
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  // 📊 Progress
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LinearProgressIndicator(
                        value: progress,
                        minHeight: 6,
                        backgroundColor: Colors.grey.shade200,
                        color: Colors.blue,
                      ),
                      const SizedBox(height: 4),
                      Text("${(progress * 100).toStringAsFixed(0)}% d’avancement",
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),
                  // 👤 Author row
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://i.pravatar.cc/100", // avatar temporaire
                        ),
                        radius: 18,
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(author,
                              style:
                              const TextStyle(fontWeight: FontWeight.w600)),
                          Text(role,
                              style: const TextStyle(
                                  fontSize: 10, color: Colors.grey)),
                        ],
                      ),
                      const Spacer(),
                      if(!isUpdate)
                      const Icon(Icons.access_time_filled, color: Colors.grey),
                      if(!isUpdate)
                      Text(
                        "Publié il y a ${daysSinceCreated(DateTime.parse(publishedAgo))} jours",
                        style: const TextStyle(
                            fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  if(isUpdate)
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.blueAccent, Colors.lightBlueAccent]
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Avancement de $newUpdate%",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),

                          SizedBox(height: 10),
                          Text(updateDescription,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
                          const SizedBox(height: 20),
                          Align(
                            alignment: Alignment.center,
                            child: CustomButton(
                              width: width-100,
                                height: 50,
                                backgroundColor: Colors.white,
                                textColor: AppColors.primary,
                                text: "Suivre",
                                onPressed: (){}
                            ),
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int daysSinceCreated(DateTime createdAt) {
    final now = DateTime.now();
    final difference = now.difference(createdAt); // Duration
    return difference.inDays;
  }


}
