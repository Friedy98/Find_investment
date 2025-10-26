import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import '../../../../presentation/widgets/custom_button.dart';

class OfferDetailView extends ConsumerStatefulWidget {

  const OfferDetailView({super.key});

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
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).dialogBackgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined, size: 24.sp),
          onPressed: () {
            context.pop(context);
          },
        ),
        title: Text("Détails de l'offre",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text("Projet",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      color: Colors.white
                    ),
                  ),
                  Text("Détails de l'offre",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).dialogBackgroundColor,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                    child: buildOfferDto(context),
                  )
                ),
                Positioned(
                  top: -35,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.red.withOpacity(0.4),
                      child: const Text('SF', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOfferDto(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                "Développeur Frontend",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text(
                "Cameroun, Yaoundé",
                style: TextStyle( fontSize: 12),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "24 candidatures",
                    style: TextStyle( fontSize: 12),
                  ),
                  SizedBox(width: 10),
                  Chip(label: const Text("Ouverte",
                    style: TextStyle( color: Colors.green)),
                      backgroundColor: Colors.green.withOpacity(0.3)),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 125,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Theme.of(context).dialogBackgroundColor,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: AppColors.primary.withOpacity(0.3),
                                child: const Icon(Icons.monetization_on_rounded, color: AppColors.primary),
                              ),
                              SizedBox(width: 10),
                              Text('Salaire'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text('100.000 XAF - 200.000 XAF', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      height: 125,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Theme.of(context).dialogBackgroundColor,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.brown.withOpacity(0.3),
                                child: const Icon(Icons.access_time_filled, color: Colors.brown),
                              ),
                              SizedBox(width: 10),
                              Text('Type'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text('Temps plein', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
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
          children: [
            Chip(label: Text("Flutter"), backgroundColor: AppColors.primary.withOpacity(0.1)),
            Chip(label: Text("React"), backgroundColor: AppColors.primary.withOpacity(0.1)),
            Chip(label: Text("UI/UX"), backgroundColor: AppColors.primary.withOpacity(0.1)),
            Chip(label: Text("Frontend"), backgroundColor: AppColors.primary.withOpacity(0.1)),
            Chip(label: Text("Angular"), backgroundColor: AppColors.primary.withOpacity(0.1)),
            Chip(label: Text("Travail en équipe"), backgroundColor: AppColors.primary.withOpacity(0.1)),
          ],
        ),
        const SizedBox(height: 16),
        const Text("Recruteur",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 10),
        UserWidget(context, 0),
        const SizedBox(height: 16),
        const Text("Commentaires",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 10),
        UserWidget(context, 1),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {} ,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0056F7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Text("Postuler",
                style: TextStyle(fontSize: 16, color: Colors.white)),
          ),
        )
      ],
    );
  }

  Widget UserWidget(BuildContext context,int position){
    return Container(
      decoration: BoxDecoration(
          color: position == 1 ? Theme.of(context).primaryColor.withOpacity(0.2) : null,
          borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
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
                  const Text("Akoa Asaph",
                      style:
                      TextStyle(fontWeight: FontWeight.w600)),
                  Text(position == 0 ? "Porteur de projet" : "★★★★★",
                      style: const TextStyle(
                          fontSize: 10, color: Colors.grey)),
                ],
              ),
              const Spacer(),
                if(position == 0)... [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
                    onPressed: () {},
                    child: const Text("Contacter", style: TextStyle(color: Colors.white)),
                  ),
                ]else...const [
                  Icon(Icons.access_time_filled, color: Colors.grey),
                  Text(
                    "12 juil, 2025",
                    style: TextStyle(
                        fontSize: 10, color: Colors.grey),
                  )
                ]
            ],
          ),
          SizedBox(height: 10),
          if(position == 1)
            const Text("J'aime bien cette affiche d'emplooi qui est en plus dans une  zone ou il y a un taux de "
                "changement en hausse. Et ce serait une belle opportunité pour quelqu'un",
              style: TextStyle(fontSize: 10))
        ],
      ),
    );
  }

  void _showMessageSheet() {

    double width = MediaQuery.of(context).size.width;
    bool noInvestment = false;
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
