import 'package:cached_network_image/cached_network_image.dart';
import 'package:find_invest_mobile/features/investor/screens/wallet/data/wallet_provider.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import '../../../../presentation/widgets/custom_button.dart';

class InvestView extends ConsumerStatefulWidget {
  final ProjectEntity projectDto;

  const InvestView({super.key, required this.projectDto});

  @override
  ConsumerState<InvestView> createState() => _InvestViewState();
}

class _InvestViewState extends ConsumerState<InvestView>
    with SingleTickerProviderStateMixin {

  TextEditingController amountController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  String selectedOption = "";
  bool loading = false;
  bool noInvestment = false;
  final _formKey = GlobalKey<FormState>();

  List paymentMethod = ["stripe", "paypal", "bank_transfer", "mobile_money", "crypto"];

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final project = widget.projectDto;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 100.h,
            floating: false,
            pinned: true,
            backgroundColor: AppColors.cardBackground,
            leading: IconButton(
                icon: const Icon(Icons.arrow_circle_left_sharp, color: AppColors.primary, size: 30),
                onPressed: () => context.pop()
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Proposer un investissement",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
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

  Widget _buildOverviewTab(ProjectEntity project) {
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
                  Text(project.owner.toString(),
                      style:
                      const TextStyle(fontWeight: FontWeight.w600)),
                  Text(project.owner.toString(),
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
                onChanged: (value) {
                  setState(() {
                    noInvestment = value;
                  });
                },
              )
            ],
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 10),
                _buildTextAreaInput("Montant d'investissement", amountController),
                const SizedBox(height: 20),
                paymentMethode(context, paymentMethod[0], "1"),
                const SizedBox(height: 8),
                paymentMethode(context, paymentMethod[1], "2"),
                const SizedBox(height: 8),
                paymentMethode(context, paymentMethod[2], "3"),
                const SizedBox(height: 8),
                paymentMethode(context, paymentMethod[3], "4"),
                const SizedBox(height: 8),
                paymentMethode(context, paymentMethod[4], "5"),
                const SizedBox(height: 20),
                _buildTextAreaInput("Code promo", codeController),
              ]
            )
          ),

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
          loading ? Center(child: CircularProgressIndicator(color: AppColors.primary)) : SizedBox(),
          const SizedBox(height: 20),
          CustomButton(
            height: 60,
            width: width-50,
            text: "Confirmer",
            onPressed: () => {
              _submitInvestment(project)
            },
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
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
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

  Future<void> _submitInvestment(ProjectEntity project) async {
    if (_formKey.currentState == null || !_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Veuillez remplir tous les champs obligatoires.'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirmer la création'),
        content: const Text(
            'Êtes-vous sûr de vouloir investir dans ce projet ? '),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Annuler'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            child: const Text(
              'confirmer',
              style: TextStyle(color: AppColors.background),
            ),
          ),
        ],
      ),
    );

    if (confirmed != true) return;
    setState(() {
      loading = true;
    });
    final investData = _buildInvestmentData(project);
    await ref.read(investmentProvider.notifier).createProject(investData);

    final state = ref.read(investmentProvider);
    if (state.errorMessage == null) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Projet créé avec succès !'),
            backgroundColor: AppColors.success,
          ),
        );
        setState(() {
          amountController.clear();
          codeController.clear();
          selectedOption = "";
          loading = false;
        });

        context.pop();
      }
    } else {
      if (mounted) {
        setState(() {
          amountController.clear();
          codeController.clear();
          selectedOption = "";
          loading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur: ${state.errorMessage}'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }


  Map<String, dynamic> _buildInvestmentData(ProjectEntity project) {


    final investmentData = <String, dynamic>{
      'projectId': project.id, // e.g. from dropdown or passed param
      'amount': int.tryParse(amountController.text) ?? 0,
      'currency': 'XAF', // e.g. "EUR"
      'investmentType': "equity", // e.g. "equity"
      'paymentMethod': paymentMethod[int.parse(selectedOption)-1],   // e.g. "stripe"
      'riskDisclosureAccepted': true, // bool
      'notes': 'Investissement stratégique dans le secteur tech',
    };

    // Clean up null/empty values
    investmentData.removeWhere((key, value) =>
    value == null ||
        (value is String && value.isEmpty));

    return investmentData;
  }

}

