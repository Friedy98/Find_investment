import 'package:cached_network_image/cached_network_image.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import '../../../../presentation/widgets/custom_button.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../../kyc/presentation/providers/kyc_provider.dart';

class ProjectDetailView extends ConsumerStatefulWidget {
  final ProjectEntity projectDto;

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = ref.read(authProvider).user;
      if (user != null && mounted) {

        ref.read(kycProvider.notifier).fetchKYCStatus(user.id);
        // Fetch categories (assuming a method exists in projectProvider or elsewhere)
        // _categories = ref.read(projectProvider.notifier).getCategories();
      }
      // _scrollController.addListener(_onScroll);
    });
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
                ),
              ),
              centerTitle: true,
              background:
              // project.coverImage == null
              //     ?
              CachedNetworkImage(
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
                  // : Container(color: AppColors.textTertiary.withOpacity(0.2)),
            ),
          ),
        ],
        body: _buildOverviewTab(project),
      ),
    );
  }

  Widget _buildOverviewTab(ProjectEntity project) {
    List tags = [project.resolvedCategory!.name, project.status];
    final kycState = ref.watch(kycProvider);
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
                style: const TextStyle( fontSize: 10),
              ) : const Text(
                "Publié Ajourd'hui",
                style: TextStyle(fontSize: 10),
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
                      style: const TextStyle(fontSize: 10)),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: (){
                  final kycStatus = kycState.selectedKyc?.status;
                  if (kycStatus == 'approved') {
                    return _buildKycPrompt();
                  }else{
                    context.push("/investor/payment_methode",
                      extra: project,
                    );
                  }
                },
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
              fontSize: 14.sp
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
                fontWeight: FontWeight.bold
            ),
          ),
          Text(project.description,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp
            )
          ),
        ],
      ),
    );
  }


  void _buildKycPrompt() {
    showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Material(
            color: Colors.transparent,
            child: Container(
              height: MediaQuery.of(context).size.width/1.5,
              margin: EdgeInsets.symmetric(vertical: 16.w),
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: AppColors.error.withOpacity(0.3),
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: AppColors.error.withOpacity(0.3)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.warning_amber_rounded,
                    color: AppColors.error,
                    size: 26.sp,
                  ),
                  SizedBox(height: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Validation KYC requise',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.error,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        textAlign: TextAlign.center,
                        'Vous devez compléter la vérification KYC pour créer des projets.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.w),
                  ElevatedButton(
                    onPressed: () => context.push('/kyc/dashboard'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.error,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r)),
                    ),
                    child: Text(
                      'Compléter KYC',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
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
            color: Theme.of(context).dialogBackgroundColor,
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
          ),
        ),
        TextField(
          controller: controller,
          maxLines: lines,
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Theme.of(context).dialogBackgroundColor,
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
          fontWeight: FontWeight.w600
        ),
      ),
    ).animate().fadeIn().slideY(begin: 0.3);
  }

}
