import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final List<String> tags; // ex: ["Agriculture", "Actif"]
  final double amount; // ex: 2300000
  final double progress; // 0.0 - 1.0
  final String author;
  final String role;
  final String publishedAgo;

  const ProjectCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.tags,
    required this.amount,
    required this.progress,
    required this.author,
    required this.role,
    required this.publishedAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      margin: const EdgeInsets.all(12),
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
                // 🏷️ Tags
                Wrap(
                  spacing: 8,
                  children: tags
                      .map((tag) => Chip(
                    label: Text(tag,
                        style: const TextStyle(
                            fontSize: 12, color: Colors.white)),
                    backgroundColor: tag == "Actif"
                        ? Colors.green
                        : Colors.orange,
                  ))
                      .toList(),
                ),
                const SizedBox(height: 8),

                // 📌 Title
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                // 💰 Amount
                Text(
                  "${amount.toStringAsFixed(0)} FCFA",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
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
                    Text("${(progress * 100).toStringAsFixed(0)}% d’avancement"),
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
                                fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      "Publié il y a $publishedAgo",
                      style: const TextStyle(
                          fontSize: 12, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
