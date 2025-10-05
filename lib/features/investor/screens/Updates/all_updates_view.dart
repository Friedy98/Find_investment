import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../project/presentation/providers/project_provider.dart';
import '../../widgets/project_card.dart';

class UpdatesPage extends ConsumerStatefulWidget {
  const UpdatesPage({super.key});

  @override
  ConsumerState<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends ConsumerState<UpdatesPage>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);

    return Scaffold(
      body: ListView.builder(
        itemCount: projectState.projects.length,
        itemBuilder: (context, index) {
          final project = projectState.projects[index];
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: InvestorProjectCard(
              onUpdateTap: ()=> context.push(
                '/projectDto/update/${project.id}',
                extra: project, // <-- send the whole object
              ),
              isUpdate: true,
              newUpdate: "10",
              updateDescription: project.description,
              imageUrl: project.images!.isNotEmpty ?
              project.images![0].url :
              "https://www.cahorsjuinjardins.fr/wp-content/uploads/2025/08/Les-erreurs-a-eviter-pour-maximiser-les-recoltes-de-choux.png",
              title: project.title,
              tags: [project.resolvedCategory!.name, project.status.toString()],
              amount: project.maximumInvestment!.toInt(),
              progress: project.fundingProgress!.toDouble(),
              author: project.owner.toString(),
              role: "project",
              publishedAgo: project.createdAt.toString(),
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