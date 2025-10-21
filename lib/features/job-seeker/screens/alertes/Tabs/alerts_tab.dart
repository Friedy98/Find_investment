import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (_) => const GroupDetailPage()),
                      // );
                    },
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
}
