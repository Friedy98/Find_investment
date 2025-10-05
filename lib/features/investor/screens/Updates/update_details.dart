import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../project/domain/entities/project_entity.dart';
import 'Tabs/overview_tab.dart';
import 'Tabs/comments_tab.dart';
import 'Tabs/documents_tab.dart';
import 'Tabs/milestone_tab.dart';

class UpdateDetailPage extends ConsumerStatefulWidget {
  final ProjectEntity projectDto;

  const UpdateDetailPage({super.key, required this.projectDto});

  @override
  ConsumerState<UpdateDetailPage> createState() => _UpdateDetailPageState();
}

class _UpdateDetailPageState extends ConsumerState<UpdateDetailPage>
    with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    final project = widget.projectDto;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: ()=> context.pop(),
              icon: const Icon(Icons.arrow_back_outlined, size: 30, color: AppColors.primary)),
          title: const Text("Détails de la mise à jour"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: "Aperçu"),
              Tab(text: "Jalons"),
              Tab(text: "Documents"),
              Tab(text: "Commentaires"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OverviewTab(projectDto: project),
            const MilestonesTab(),
            const DocumentsTab(),
            const CommentsTab(),
          ],
        ),
      ),
    );
  }
}