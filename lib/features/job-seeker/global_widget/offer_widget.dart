import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OfferWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String price;
  final String state;
  final DateTime date;
  final int applications;
  final int index;
  final bool isUserApplication;
  final bool isFavorite;

  const OfferWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.state,
    required this.index,
    this.applications = 0,
    required this.date,
    this.isFavorite = false,
    required this.isUserApplication,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.pink[100],
                child: const Text('SF'),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 14)),
                  Text(subTitle,
                      style: const TextStyle(
                          fontSize: 10)
                  ),
                ],
              ),
              Spacer(),
              isFavorite ?
                  Icon(Icons.favorite, color: Colors.redAccent) :
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite_border)
              )
            ],
          ),
          const SizedBox(width: 16),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Salary',
                      style: const TextStyle(
                          fontSize: 10)
                  ),
                  Text(price,
                      style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 12)
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  !isUserApplication ?
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('Candidatures',
                          style: TextStyle(fontSize: 12)
                      ),
                      Row(
                        children: [
                          const Icon(Icons.person_pin_sharp, size: 20, color: AppColors.warningDark),
                          SizedBox(width: 5),
                          Text(applications.toString(),
                              style: const TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)
                          ),
                        ],
                      )
                    ],
                  ) :
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        color: state == "Retenue"
                            ? Colors.green.withOpacity(0.1)
                            : Colors.orange.withOpacity(0.1),
                        borderRadius:
                        BorderRadius.circular(8)),
                    child: Text( state,
                      style: TextStyle( color: state == "Retenue"
                          ? Colors.green : Colors.orange),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius:
                    BorderRadius.circular(8)),
                child: const Text(
                  "A distance",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius:
                    BorderRadius.circular(8)),
                child: const Text(
                  "Frontend",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          isUserApplication ?
          Text("Candidature déposé le $date",
              style: const TextStyle(fontSize: 12)
          ) : Row(
            children: [
              SizedBox(),
              Spacer(),
              Text("il y a ${daysSinceCreated(DateTime.parse(date.toString()))} jours",
                  style: const TextStyle(fontSize: 12)
              ),
            ],
          )
        ],
      ),
    ).animate(delay: Duration(milliseconds: (index - 1) * 100))
        .fadeIn()
        .slideY(begin: 0.3);
  }

  int daysSinceCreated(DateTime createdAt) {
    final now = DateTime.now();
    final difference = now.difference(createdAt); // Duration
    return difference.inDays;
  }

}
