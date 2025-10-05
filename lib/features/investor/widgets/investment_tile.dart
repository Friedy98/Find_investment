
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class InvestmentTile extends StatelessWidget {
  final String subTitle;
  final int amount;
  final DateTime date;
  final VoidCallback? onTap;

  const InvestmentTile({
    super.key,
    required this.amount,
    required this.date,
    required this.subTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.orange,
        radius: 15,
        child: Icon(Icons.access_time_filled, color: Colors.white, size: 20),
      ),
      title: RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black, // base style
            ),
            children: [
              const TextSpan(
                text: 'Investissement de: ',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text: ': $amount',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
            ],
          )),
      trailing: Text(date.toString()),
      subtitle: Text(subTitle, style: TextStyle(fontSize: 10),),
      onTap: onTap,
    );
  }
}