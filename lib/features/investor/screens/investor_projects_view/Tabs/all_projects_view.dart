import 'package:find_invest_mobile/config/app_config.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/kyc/presentation/providers/kyc_provider.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/providers/questionnaire_provider.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../presentation/widgets/custom_button.dart';
import '../../../../auth/presentation/providers/auth_provider.dart';
import '../../../widgets/project_card.dart';

class InvestorProjectsList extends ConsumerStatefulWidget {
  const InvestorProjectsList({super.key});

  @override
  ConsumerState<InvestorProjectsList> createState() => _InvestorProjectsListState();
}
  // final ScrollController _scrollController = ScrollController();
  // final Map<String, dynamic> _filters = {};
  // int _page = 1;
  // final int _limit = 20;
  // final List<dynamic> _categories = []; // To be populated based on your data

class _InvestorProjectsListState extends ConsumerState<InvestorProjectsList> {
  final ScrollController _scrollController = ScrollController();
  int _page = 1;
  final int _limit = 20;
  final List<dynamic> _categories = [];
  final noInvestmentProvider = StateProvider<bool>((ref) => false);
  final withInvestmentProvider = StateProvider<bool>((ref) => true);

// sector & city
  final chosenSectorsProvider = StateProvider<List<String>>((ref) => ["Logiciel", "Agriculture"]);
  final selectedCityProvider = StateProvider<String?>((ref) => null);

// range values
  final rangeValuesProvider = StateProvider<RangeValues>((ref) => const RangeValues(100000, 2000000));

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = ref.read(authProvider).user;
      if (user != null && mounted) {
        ref
            .read(projectProvider.notifier)
            .getMyProjects(page: _page, limit: _limit);
        ref
            .read(questionnaireProvider.notifier)
            .checkQuestionnaireRequirement('create_project');
        ref.read(kycProvider.notifier).fetchKYCStatus(user.id);
        // Fetch categories (assuming a method exists in projectProvider or elsewhere)
        // _categories = ref.read(projectProvider.notifier).getCategories();
      }
      // _scrollController.addListener(_onScroll);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);
    final questionnaireState = ref.watch(questionnaireProvider);

    final kycState = ref.watch(kycProvider);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List secteurs = [
      "Agriculture",
      "Informatique",
      "Humanité",
      "Business"
    ];

    return LoadingOverlay(

      isLoading: projectState.isLoading,
      child: Column(
        children: [
          Container(
            width: width,
            height: height/3.2,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.error.withOpacity(0.1)
            ),
              child: _buildQuestionnairePrompt(context, questionnaireState, kycState)
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text("Secteurs", style: AppTextStyles.headerH1),
                const SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  width: width,
                  child: ListView.builder(
                      itemCount: secteurs.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (cointext, item){
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: AppColors.primary.withOpacity(0.3),
                                  width: 2),
                              color: AppColors.primary.withOpacity(0.1)
                          ),
                          height: 50.sp,
                          width: width/4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(secteurs[item], style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.sp,
                                  color: AppColors.primary),
                              ),
                              SizedBox(height: 10)
                            ],
                          ),
                        ).animate().fadeIn().slideY(begin: 0.3);
                      }
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    IconButton(
                      onPressed: _showFilterSheet,
                      icon: const Icon(Icons.tune_sharp),
                    ),

                    const SizedBox(width: 5),
                    Text("Filtres", style: AppTextStyles.headerH2),
                  ],
                ),
                SizedBox(
                  height: height/1.7,
                  child: Column(
                    children: [
                      Expanded(
                        child: RefreshIndicator(
                          onRefresh: _refreshProjects,
                          child: ListView.builder(
                            controller: _scrollController,
                            padding: EdgeInsets.all(4.w),
                            itemCount: projectState.projects.length, // +1 for filter bar
                            itemBuilder: (context, index) {
                              /*if (index == 0) {
                                return _buildFilterBar();
                              }*/
                              final project = projectState.projects[index];
                              print(project);
                              return InvestorProjectCard(
                                onUpdateTap: (){},
                                isUpdate: false,
                                newUpdate: "10",
                                updateDescription: project.description,
                                imageUrl: project.images!.isNotEmpty ?
                                project.images![0].url :
                                "https://www.cahorsjuinjardins.fr/wp-content/uploads/2025/08/Les-erreurs-a-eviter-pour-maximiser-les-recoltes-de-choux.png",
                                title: project.title,
                                tags: [project.resolvedCategory!.name, project.status.toString()],
                                amount: project.maximumInvestment!.toInt(),
                                progress: project.fundingProgress!.toDouble(),
                                author: project.owner != null ? project.resolvedOwner!.firstName.toString() : "John Doe",
                                role: project.owner != null ?  project.resolvedOwner!.role.toString() : "investor",
                                publishedAgo: project.createdAt.toString(),
                                onTap: ()=> context.push(
                                  '/projectDto/${project.id}',
                                  extra: project, // <-- send the whole object
                                ),
                              ).animate(delay: Duration(milliseconds: (index - 1) * 100))
                                  .fadeIn()
                                  .slideY(begin: 0.3);
                            },
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Future<void> _refreshProjects() async {
    /*_page = 1;
    await ref
        .read(projectProvider.notifier)
        .getMyProjects(filters: _filters, page: _page, limit: _limit);*/
  }

  void _showFilterSheet() {

    double height = MediaQuery.of(context).size.height;
    final noInvestment = ref.watch(noInvestmentProvider);
    final withInvestment = ref.watch(withInvestmentProvider);
    final chosenSectors = ref.watch(chosenSectorsProvider);
    final selectedCity = ref.watch(selectedCityProvider);
    final rangeValues = ref.watch(rangeValuesProvider);

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
                    Text("Projets sans investissement"),
                    Spacer(),
                    CupertinoSwitch(
                      value: noInvestment,
                      activeColor: AppColors.primary, // iOS default
                      onChanged: (value) {
                        ref.read(noInvestmentProvider.notifier).state = value;
                      },
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text("Projets avec investissement"),
                    Spacer(),
                    CupertinoSwitch(
                      value: noInvestment,
                      activeColor: AppColors.primary, // iOS default
                      onChanged: (value) {
                        ref.read(noInvestmentProvider.notifier).state = value;
                      },
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text("Secteurs"),
                const SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  hint: const Text("Entrer un secteur"),
                  onChanged: (val) {
                    if (val != null && !chosenSectors.contains(val)) {
                      ref.read(chosenSectorsProvider.notifier).state = [
                        ...chosenSectors,
                        val
                      ];
                    }
                  },
                  items: ["Logiciel", "Agriculture", "Santé", "Finance"]
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),

                const SizedBox(height: 10),

                Wrap(
                  spacing: 8,
                  children: chosenSectors
                      .map((e) => Chip(
                    label: Text(e),
                    deleteIcon: const Icon(Icons.close, size: 18),
                    onDeleted: () {
                      ref.read(chosenSectorsProvider.notifier).state =
                      List.from(chosenSectors)..remove(e);
                    },
                  ))
                      .toList(),
                ),

                const SizedBox(height: 20),

                // 📍 Localisation
                const Text("Localisation"),
                const SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  hint: const Text("Sélectionner la ville"),
                  value: selectedCity,
                  onChanged: (val) {
                    ref.read(selectedCityProvider.notifier).state = val;
                  },
                  items: ["Douala", "Yaoundé", "Bafoussam", "Garoua"]
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),

                const SizedBox(height: 20),

                // 💰 Montant
                const Text("Montant"),
                RangeSlider(
                  values: rangeValues,
                  min: 100000,
                  max: 2000000,
                  divisions: 100,
                  labels: RangeLabels(
                    "${rangeValues.start.toStringAsFixed(0)}",
                    rangeValues.end >= 2000000
                        ? "2.000.000 +"
                        : rangeValues.end.toStringAsFixed(0),
                  ),
                  onChanged: (values) {
                    ref.read(rangeValuesProvider.notifier).state = values;
                  },
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.gray200.withOpacity(0.2),
                        blurRadius: 5,
                        offset: const Offset(0, -1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: 'Reset Filters',
                          onPressed: _clearAllFilters,
                          backgroundColor: AppColors.gray100,
                          textColor: AppColors.textPrimary,
                          // borderRadius: 12.r,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: CustomButton(
                          text: 'Apply Filters',
                          onPressed: _applyFilters,
                          backgroundColor: AppColors.primary,
                          textColor: Colors.white,
                          // borderRadius: 12.r,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _clearAllFilters() {
    /*setState(() {
      _selectedCategory = null;
      _selectedSector = null;
      _selectedSubSector = null;
      _selectedLocation = null;
      _selectedFundingType = null;
      _selectedStatus = null;
      _selectedVisibility = null;
      _selectedPriority = null;
      _selectedCollaborationType = null;
      _minFunding = null;
      _maxFunding = null;
      _sortBy = 'createdAt';
      _sortOrder = 'desc';
    });*/
  }

  void _applyFilters() {
    /*widget.onApplyFilters({
      'category': _selectedCategory,
      'sector': _selectedSector,
      'subSector': _selectedSubSector,
      'location': _selectedLocation,
      'fundingType': _selectedFundingType,
      'status': _selectedStatus,
      'visibility': _selectedVisibility,
      'priority': _selectedPriority,
      'collaborationType': _selectedCollaborationType,
      'minFunding': _minFunding,
      'maxFunding': _maxFunding,
      'sortBy': _sortBy,
      'sortOrder': _sortOrder,
    });*/
    Navigator.pop(context);
  }

  Widget _buildQuestionnairePrompt(BuildContext context,
      QuestionnaireState questionnaireState, KycState kycState) {
    final requirementCheck = questionnaireState.requirementCheck;
    final kycStatus = kycState.selectedKyc?.status;

    if (kycStatus != 'approved') {
      return _buildKycPrompt(context);
    }

    if (requirementCheck == null || requirementCheck['allowed'] == true) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.error,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.error),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 12.w),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.info,
                color: Colors.white,
                size: 50.sp,
              ),
              SizedBox(width: 5.h),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.5,
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.left,
                      'Dites-nous en plus sur vous',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      textAlign: TextAlign.left,
                      requirementCheck['message'] ??
                          "Prennez du temps pour répondre aux questions de notre formulaire afin d'avoir plus de chance avec nos investisseurs.",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.w),
          ElevatedButton(
            onPressed: () => context.push('/questionnaire/overview'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r)),
            ),
            child: Text(
              'Compléter le profil',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.error,
              ),
            ),
          ),
        ],
      ),
    ).animate().fadeIn().slideY(begin: -0.3);
  }

  Widget _buildKycPrompt(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.error.withOpacity(0.1),
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
          SizedBox(height: 12.w),
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
              SizedBox(height: 4.h),
              Text(
                textAlign: TextAlign.center,
                'Vous devez compléter la vérification KYC pour créer des projets.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.w),
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
    ).animate().fadeIn().slideY(begin: 0.3);
  }
}
