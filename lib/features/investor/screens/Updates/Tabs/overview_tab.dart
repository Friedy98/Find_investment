
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../models/projectDto_model.dart';

class OverviewTab extends ConsumerStatefulWidget {
  final ProjectDto projectDto;

  const OverviewTab({super.key, required this.projectDto});

  @override
  ConsumerState<OverviewTab> createState() => _OverviewTabState();
}

class _OverviewTabState extends ConsumerState<OverviewTab>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    final project = widget.projectDto;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height-50,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.network("https://picsum.photos/400/200"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: _buildOverviewTab(project),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOverviewTab(ProjectDto project) {
    List tags = ["Agriculture", "Actif"];
    double value = project.fundingProgress! * 100;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // _buildSectionTitle(project.title),
        Row(
          children: [
            Wrap(
              spacing: 5,
              children: tags
                  .map((tag) => Chip(
                label: Text(tag,
                    style: TextStyle(
                        fontSize: 10, color: tag == "Actif" ? Colors.green : Colors.orange)),
                backgroundColor: tag == "Actif"
                    ? Colors.green.withOpacity(0.1)
                    : Colors.orange.withOpacity(0.1),
              ))
                  .toList(),
            ),
            const Spacer(),
            const Icon(Icons.access_time_filled, color: Colors.grey),
            daysSinceCreated(project.createdAt) != 0 ?
            Text(
              "Publié il y a ${daysSinceCreated(project.createdAt)} jours",
              style: const TextStyle(
                  fontSize: 10, color: Colors.grey),
            ) : const Text(
              "Publié Ajourd'hui",
              style: TextStyle(
                  fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
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
                Text(project.owner["name"],
                    style:
                    const TextStyle(fontWeight: FontWeight.w600)),
                Text(project.owner["email"].toString(),
                    style: const TextStyle(
                        fontSize: 10, color: Colors.grey)),
              ],
            ),
          ],
        ),
        SizedBox(height: 16.h),
        _buildSectionTitle('Etat d\'avancement du projet'),
        LinearProgressIndicator(
          value: (project.fundingProgress ?? 0),
          backgroundColor: AppColors.textTertiary.withOpacity(0.2),
          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
          minHeight: 20.h,
          borderRadius: BorderRadius.circular(15.r),
        ).animate().fadeIn(),

        SizedBox(height: 20.h),
        _buildSectionTitle('Etat d\'avancement du financement'),
        LinearProgressIndicator(
          value: (project.fundingProgress ?? 0),
          backgroundColor: AppColors.textTertiary.withOpacity(0.2),
          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
          minHeight: 20.h,
          borderRadius: BorderRadius.circular(15.r),
        ).animate().fadeIn(),

        SizedBox(height: 20.h),
        Text(
          'Montant d`\'investisssement total demandé',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            color: AppColors.secondary,
          ),
        ),
        Text(
          '${project.maximumInvestment} ${project.currency ?? 'XAF'}',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sp,
              color: AppColors.primary
          ),
        ),

        const SizedBox(height: 20),
        Text('Dernier avancement',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sp,
              color: Colors.black
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              '${value.toInt()} %',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 40.sp,
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'D`\'avancement den 2 semaines',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: AppColors.secondary,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.access_time_filled, color: Colors.grey),
                    Text(DateTime.now().toString(),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10.sp,
                        color: AppColors.secondary,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),

        SizedBox(height: 20.h),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(project.description,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: Colors.black,
                  )
              ),
            ],
          ),
        ),
      ],
    );
  }

  int daysSinceCreated(DateTime createdAt) {
    final now = DateTime.now();
    final difference = now.difference(createdAt); // Duration
    return difference.inDays;
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
      ),
    ).animate().fadeIn().slideY(begin: 0.3);
  }

}