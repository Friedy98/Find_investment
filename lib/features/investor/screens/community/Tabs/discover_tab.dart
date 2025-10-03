import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DiscoverTab extends StatelessWidget {
  const DiscoverTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/400/200"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Positioned circle avatar
                    Positioned(
                      bottom: -25, // move it slightly outside the container
                      left: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 36,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage("https://picsum.photos/100"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Agrico Guys", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Icon(Icons.verified, color: AppColors.primary,size: 20)
                ],
              ),
              const Text("13 membres", style: TextStyle(fontSize: 12, color: Colors.grey)),
              InkWell(
                onTap: (){},
                child: Chip(
                  label: const Text("Rejoindre",
                      style: TextStyle(
                          fontSize: 10, color: AppColors.primary)),
                  backgroundColor: AppColors.primary.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ).animate(delay: Duration(milliseconds: (index - 1) * 100))
            .fadeIn()
            .slideY(begin: 0.3);
      },
    );
  }
}
