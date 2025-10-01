import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import '../../../generated/app_localizations.dart';
import '../../../presentation/widgets/custom_button.dart';
import '../models/projectDto_model.dart';

class ProjectDetailView extends ConsumerStatefulWidget {
  final ProjectDto projectDto;

  const ProjectDetailView({super.key, required this.projectDto});

  @override
  ConsumerState<ProjectDetailView> createState() => _ProjectDetailViewState();
}

class _ProjectDetailViewState extends ConsumerState<ProjectDetailView>
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
      backgroundColor: AppColors.background,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 200.h,
            floating: false,
            pinned: true,
            backgroundColor: AppColors.cardBackground,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_outlined, color: Colors.white, size: 30),
              onPressed: () => context.pop()
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Détails du projet",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              centerTitle: true,
              background: project.coverImage != null
                  ? CachedNetworkImage(
                      imageUrl: 'https://www.cahorsjuinjardins.fr/wp-content/uploads/2025/08/Les-erreurs-a-eviter-pour-maximiser-les-recoltes-de-choux.png',
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        color: AppColors.accent,
                        child: const Center(child: CircularProgressIndicator()),
                      ),
                      errorWidget: (context, error, stackTrace) => Container(
                        color: AppColors.textTertiary.withOpacity(0.2),
                        child: const Icon(Icons.image_not_supported_outlined, size: 50),
                      ),
                    )
                  : Container(color: AppColors.textTertiary.withOpacity(0.2)),
            ),
          ),
        ],
        body: _buildOverviewTab(project),
      ),
    );
  }

  Widget _buildOverviewTab(ProjectDto project) {
    List tags = ["Agriculture", "Actif"];
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle(project.title),
          SizedBox(height: 16.h),
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
              const Spacer(),
              InkWell(
                onTap: _showFilterSheet,
                child: const Chip(
                  label: Text("Investir",
                      style: TextStyle(
                          fontSize: 10, color: Colors.white)),
                  backgroundColor: AppColors.primary,
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: (){},
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

  void _showFilterSheet() {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool noInvestment = false;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.8,
        maxChildSize: 0.95,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Filtres',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          // IconButton(
                          //   icon:
                          //   Icon(Icons.close, size: 28.sp, color: AppColors.gray600),
                          //   onPressed: () => Navigator.pop(context),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Investir en plusieurs tranches ?"),
                    Spacer(),
                    CupertinoSwitch(
                      value: noInvestment,
                      activeColor: AppColors.primary, // iOS default
                      onChanged: (value) {},
                    )
                  ],
                ),
                const SizedBox(height: 10),
                _buildTextAreaInput("Montant d'investissement", amountController),
                const SizedBox(height: 20),
                paymentMethode(context, "MTN Mobile Money", "1"),
                const SizedBox(height: 8),
                paymentMethode(context, "Orange Money", "2"),
                const SizedBox(height: 8),
                paymentMethode(context, "Master Card", "3"),
                const SizedBox(height: 8),
                paymentMethode(context, "PayPal", "4"),
                const SizedBox(height: 8),
                paymentMethode(context, "Paiement manuel", "5"),
                const SizedBox(height: 20),
                _buildTextAreaInput("Code promo", codeController),
                const SizedBox(height: 20),

                const Row(
                  children: [
                    Icon(Icons.info, color: Colors.grey, size: 30),
                    SizedBox(width: 8), // space between icon and text
                    Expanded(
                      child: Text(
                        "Cet investissement sera directement envoyé dans le compte du porteur et mis à disposition en vue de la réalisation du projet.",
                        style: TextStyle(fontSize: 12),
                        softWrap: true, // allow wrapping
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomButton(
                  height: 50,
                  width: width-50,
                  text: "Confirmer",
                  onPressed: () => {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget paymentMethode(BuildContext context, String title, String option){
    return Container(
      height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue.shade100.withOpacity(0.2)
        ),
      child: ListTile(
        leading: Container(
            height: 40, width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)
            )
        ),
        title: Text(title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12.sp,
            color: AppColors.textPrimary,
          ),
        ),
        trailing: Radio<String>(
          value: option,
          groupValue: selectedOption,
          onChanged: (value) {},
        ),
      )
    );
  }

  Widget _buildTextAreaInput(String label, TextEditingController controller) {
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
          decoration: InputDecoration(
            hintText: '00000',
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
