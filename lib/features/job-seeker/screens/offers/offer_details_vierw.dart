import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import '../../../../presentation/widgets/custom_button.dart';

class OfferDetailView extends ConsumerStatefulWidget {
  final ProjectEntity projectDto;

  const OfferDetailView({super.key, required this.projectDto});

  @override
  ConsumerState<OfferDetailView> createState() => _OfferDetailViewState();
}

class _OfferDetailViewState extends ConsumerState<OfferDetailView>
    with SingleTickerProviderStateMixin {

  TextEditingController amountController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  String selectedOption = "";

  @override
  void initState() {
    super.initState();
    /*WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(projectProvider.notifier).getProject(widget.projectId);
      ref
          .read(projectCommentProvider.notifier)
          .fetchProjectComments(projectId: widget.projectId);
      ref
          .read(projectDocumentProvider.notifier)
          .fetchDocuments(projectId: widget.projectId);
      ref
          .read(projectInvitationProvider.notifier)
          .fetchInvitations(projectId: widget.projectId);
      ref
          .read(projectReportProvider.notifier)
          .listPublishedReports(projectId: widget.projectId);
      ref
          .read(projectUpdateProvider.notifier)
          .fetchPublicUpdates(projectId: widget.projectId);
      ref
          .read(projectMilestoneProvider.notifier)
          .fetchMilestones(projectId: widget.projectId);
    });*/
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final project = widget.projectDto;

    // if (projectState.isLoading || projectState.selectedProject == null) {
    //   return const Scaffold(
    //     backgroundColor: AppColors.background,
    //     body: LoadingOverlay(
    //       isLoading: true,
    //       child: Center(child: CircularProgressIndicator()),
    //     ),
    //   );
    // }

    // final project = projectState.selectedProject!;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF0056F7).withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.pink[100],
                    child: const Text('SF'),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Développeur Frontend",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 18),
                      const Text(' 4.5 ★', style: TextStyle(color: Colors.black87))
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text("Description",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            const Text(
              "Nous recherchons un développeur frontend passionné pour rejoindre notre équipe. Vous travaillerez sur des applications modernes avec Flutter, React et d'autres outils de design.",
            ),
            const SizedBox(height: 16),
            const Text("Compétences requises",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: const [
                Chip(label: Text("Flutter")),
                Chip(label: Text("React")),
                Chip(label: Text("UI/UX")),
              ],
            ),
            const SizedBox(height: 16),
            const Text("Recruteur",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            ListTile(
              leading: const CircleAvatar(child: Icon(Icons.person)),
              title: const Text("Alice Joseph"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("Contacter"),
              ),
            ),
            const SizedBox(height: 16),
            const Text("Commentaires",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("Steve POGA"),
              subtitle: Text(
                  "Très belle opportunité ! L’entreprise semble sérieuse."),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/apply'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0056F7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text("Postuler",
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildOverviewTab(ProjectEntity project) {
    List tags = [project.resolvedCategory!.name, project.status];
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle(project.resolvedCategory!.name),
          SizedBox(height: 16.h),
          Row(
            children: [
              Wrap(
                spacing: 5,
                children: tags
                    .map((tag) => Chip(
                  label: Text(tag,
                      style: TextStyle(
                          fontSize: 10,color: tag == "active" ? Colors.green : Colors.orange)),
                  backgroundColor: tag == "active"
                      ? Colors.green.withOpacity(0.1)
                      : Colors.orange.withOpacity(0.1),
                ))
                    .toList(),
              ),
              const Spacer(),
              const Icon(Icons.access_time_filled, color: Colors.grey),
              daysSinceCreated(DateTime.parse(project.createdAt.toString())) != 0 ?
              Text(
                "Publié il y a ${daysSinceCreated(DateTime.parse(project.createdAt.toString()))} jours",
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
                  Text(project.owner != null ? project.resolvedOwner!.firstName.toString() : "John Doe",
                      style:
                      const TextStyle(fontWeight: FontWeight.w600)),
                  Text(project.owner != null ?  project.resolvedOwner!.role.toString() : "investor",
                      style: const TextStyle(
                          fontSize: 10, color: Colors.grey)),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: ()=> context.push("/investor/payment_methode",
                  extra: project,
                ),
                child: const Chip(
                  label: Text("Investir",
                      style: TextStyle(
                          fontSize: 10, color: Colors.white)),
                  backgroundColor: AppColors.primary,
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: _showMessageSheet,
                child: const Chip(
                  label: Text("Contacter",
                      style: TextStyle(
                          fontSize: 10, color: Colors.white)),
                  backgroundColor: AppColors.primary,
                ),
              ),
            ],
          ),
          /*Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: [
              _buildInfoChip(
                label: project.category is String
                    ? project.category as String
                    : (project.category as Map<String, dynamic>)['name'] ??
                    'Non spécifié',
                icon: Icons.category,
              ),
              _buildInfoChip(label: project.sector, icon: Icons.business),
              if (project.subSector != null)
                _buildInfoChip(
                    label: project.subSector!,
                    icon: Icons.subdirectory_arrow_right),
              if (project.tags != null && project.tags!.isNotEmpty)
                _buildInfoChip(
                    label: project.tags!.join(', '), icon: Icons.tag),
            ],
          ).animate().fadeIn().slideY(begin: 0.3),*/
          SizedBox(height: 16.h),
          _buildSectionTitle('Etat d\'avancement du projet'),
          LinearProgressIndicator(
            value: (project.fundingProgress?.toDouble() ?? 0),
            backgroundColor: AppColors.textTertiary.withOpacity(0.2),
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
            minHeight: 20.h,
            borderRadius: BorderRadius.circular(15.r),
          ).animate().fadeIn(),

          SizedBox(height: 20.h),
          _buildSectionTitle('Etat d\'avancement du financement'),
          LinearProgressIndicator(
            value: (project.fundingProgress?.toDouble() ?? 0),
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
              fontSize: 18.sp,
              color: AppColors.primary,
              fontWeight: FontWeight.bold
            ),
          ),

          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 15),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue.shade50, // start color
                  Colors.blue.shade200, // end color
                ],
              ),
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Objectif',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle: Text(
                    '${project.shortDescription}',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        color: Colors.black
                    ),
                  ),
                ),
              ],
            ),
          ),

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
    );
  }

  void _showMessageSheet() {

    double width = MediaQuery.of(context).size.width;
    bool noInvestment = false;
    final project = widget.projectDto;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.8,
        maxChildSize: 0.8,
        minChildSize: 0.4,
        builder: (context, scrollController) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          // height: height/1.8,
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.r),
              topRight: Radius.circular(24.r),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.gray200.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 12.h),
                      width: 80.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                        color: AppColors.gray300,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.w),
                      child: Row(
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
                              Text(project.owner != null ? project.resolvedOwner!.firstName.toString() : "John Doe",
                                  style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
                              Text(project.owner != null ? project.resolvedOwner!.role.toString() : "investor",
                                  style: const TextStyle(
                                      fontSize: 10, color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                _buildTextAreaInput("Objet", codeController, 1, 'Ex : Questions sur ...'),
                const SizedBox(height: 20),
                _buildTextAreaInput("Message", codeController, 7, 'Saisisez votre message'),
                const SizedBox(height: 50),
                CustomButton(
                  height: 60,
                  width: width-50,
                  text: "Envoyer",
                  onPressed: () => {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextAreaInput(String label, TextEditingController controller, int lines, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            color: AppColors.textPrimary,
          ),
        ),
        TextField(
          controller: controller,
          maxLines: lines,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              color: AppColors.textTertiary,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                color: AppColors.textTertiary.withOpacity(0.3),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(
                color: AppColors.primary,
                width: 2,
              ),
            ),
            contentPadding: EdgeInsets.all(10.w),
          ),
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15.sp,
            color: AppColors.textPrimary,
          ),
          onChanged: (value) {

          },
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
