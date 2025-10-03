import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import '../../../../presentation/widgets/custom_button.dart';
import '../models/projectDto_model.dart';

class InvestView extends ConsumerStatefulWidget {
  final ProjectDto projectDto;

  const InvestView({super.key, required this.projectDto});

  @override
  ConsumerState<InvestView> createState() => _InvestViewState();
}

class _InvestViewState extends ConsumerState<InvestView>
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

    return Scaffold(
      backgroundColor: AppColors.background,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 100.h,
            floating: false,
            pinned: true,
            backgroundColor: AppColors.cardBackground,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_outlined, color: Colors.white, size: 30),
                onPressed: () => context.pop()
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Proposer un investissement",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              centerTitle: true,
              background: CachedNetworkImage(
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
            ),
          ),
        ],
        body: _buildOverviewTab(project),
      ),
    );
  }

  Widget _buildOverviewTab(ProjectDto project) {
    bool noInvestment = false;
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
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
          const SizedBox(height: 20),
          Row(
            children: [
              const Text("Investir en plusieurs tranches ?"),
              const Spacer(),
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
            height: 60,
            width: width-50,
            text: "Confirmer",
            onPressed: () => {},
          ),
        ],
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
}
