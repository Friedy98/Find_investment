import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../models/projectDto_model.dart';
import '../../widgets/project_card.dart';

class UpdatesPage extends ConsumerStatefulWidget {
  const UpdatesPage({super.key});

  @override
  ConsumerState<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends ConsumerState<UpdatesPage>
    with SingleTickerProviderStateMixin {

  List<ProjectDto> projectDetails = [
    ProjectDto(
      id: "1",
      title: "Sustainable Agriculture Project",
      description: "A project focused on modern sustainable farming techniques.",
      budget: 500000,
      status: "Active",
      owner: {
        "id": "user_001",
        "name": "John Doe",
        "role": "Investisseur",
        "email": "john@example.com",
      },
      createdAt: DateTime.now(),
      internalId: "INT-001",
      slug: "sustainable-agriculture-project",
      shortDescription: "Boosting agriculture with modern methods.",
      category: "Agriculture",
      sector: "Food Production",
      fundingGoal: 1000000,
      currentFunding: 250000,
      currency: "USD",
      visibility: "public",
      location: {
        "country": "Cameroon",
        "city": "Douala",
      },
      images: ["https://example.com/image1.png", "https://example.com/image2.png"],
      team: [
        {"name": "Alice", "role": "Manager"},
        {"name": "Bob", "role": "Engineer"},
      ],
      updatedAt: DateTime.now(),
      subSector: "Crops",
      tags: ["Farming", "Green", "Organic"],
      fundingType: "Equity",
      minimumInvestment: 1000,
      maximumInvestment: 50000,
      expectedReturn: {
        "percentage": 12,
        "durationMonths": 24,
      },
      featured: true,
      priority: 1,
      startDate: DateTime(2025, 1, 1),
      endDate: DateTime(2025, 12, 31),
      fundingDeadline: DateTime(2025, 6, 30),
      duration: 5,
      logo: "https://example.com/logo.png",
      coverImage: "https://www.cahorsjuinjardins.fr/wp-content/uploads/2025/08/Les-erreurs-a-eviter-pour-maximiser-les-recoltes-de-choux.png",
      videos: ["https://example.com/video.mp4"],
      analytics: {"views": 1500, "likes": 200},
      seo: {"keywords": ["agriculture", "sustainability"]},
      auditLog: ["created", "updated"],
      settings: {"allowComments": true},
      archivedAt: null,
      archivedBy: null,
      archiveReason: null,
      moderationStatus: {"approved": true},
      type: "Investment",
      collaborationType: "Joint Venture",
      groupSettings: {"members": 10},
      impact: {"co2Reduction": "200 tons/year"},
      risks: ["Climate risk", "Market fluctuation"],
      fundingProgress: 0.25,
      daysRemaining: 180,
      durationMonths: 12,
      riskLevel: "Medium",
    )
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.builder(
        itemCount: projectDetails.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: InvestorProjectCard(
              isUpdate: true,
              newUpdate: "Avancement de 10%",
              updateDescription: "Loren ipsum",
              imageUrl: "https://www.cahorsjuinjardins.fr/wp-content/uploads/2025/08/Les-erreurs-a-eviter-pour-maximiser-les-recoltes-de-choux.png",
              title: "Plateforme de plantation des choux en série",
              tags: ["Agriculture", "Actif"],
              amount: 2300000,
              progress: 0.4,
              author: "Akoo Asaph",
              role: "Porteur du projet",
              publishedAgo: "22 jours",
              onUpdateTap: ()=> context.push(
                '/projectDto/update/${projectDetails[index].id}',
                extra: projectDetails[index], // <-- send the whole object
              ),
              onTap: (){},
            ).animate(delay: Duration(milliseconds: (index - 1) * 100))
                .fadeIn()
                .slideY(begin: 0.3),
          );
        },
      ),
    );
  }
}