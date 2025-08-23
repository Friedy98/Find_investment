import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter_animate/flutter_animate.dart';

class InvestorEditScreen extends ConsumerStatefulWidget {
  const InvestorEditScreen({super.key});

  @override
  ConsumerState<InvestorEditScreen> createState() => _InvestorEditScreenState();
}

class _InvestorEditScreenState extends ConsumerState<InvestorEditScreen> {
  String? _riskTolerance;
  InvestmentPreferences? _investmentPreferences;

  @override
  void initState() {
    super.initState();
    final investorProfile = ref.read(authProvider).user?.investorProfile;
    _riskTolerance = investorProfile?.riskTolerance;
    _investmentPreferences = investorProfile?.investmentPreferences;
  }

  Future<void> _updateInvestorProfile() async {
    final updateData = <String, dynamic>{};

    // Validate riskTolerance
    if (_riskTolerance != null &&
        !['low', 'medium', 'high'].contains(_riskTolerance)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Tolérance au risque invalide')),
      );
      return;
    }
    if (_riskTolerance != null) {
      updateData['riskTolerance'] = _riskTolerance;
    }

    // Validate and build investmentPreferences
    if (_investmentPreferences != null) {
      final prefsData = <String, dynamic>{};
      final sectors = _investmentPreferences!.sectors;
      if (sectors != null && sectors.isNotEmpty) {
        if (sectors.any((sector) => ![
              'agriculture',
              'technology',
              'healthcare',
              'education',
              'finance',
              'retail',
              'manufacturing',
              'services',
              'other'
            ].contains(sector))) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Secteur invalide')),
          );
          return;
        }
        prefsData['sectors'] = sectors;
      }
      final minAmount = _investmentPreferences!.minAmount;
      if (minAmount != null && minAmount < 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Montant minimum invalide')),
        );
        return;
      }
      if (minAmount != null) {
        prefsData['minAmount'] = minAmount;
      }
      final maxAmount = _investmentPreferences!.maxAmount;
      if (maxAmount != null && maxAmount < 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Montant maximum invalide')),
        );
        return;
      }
      if (maxAmount != null) {
        prefsData['maxAmount'] = maxAmount;
      }
      final regions = _investmentPreferences!.regions;
      if (regions != null && regions.isNotEmpty) {
        if (regions.any((region) => region is! String)) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Région invalide')),
          );
          return;
        }
        prefsData['regions'] = regions;
      }
      if (prefsData.isNotEmpty) {
        updateData['investmentPreferences'] = prefsData;
      }
    }

    if (updateData.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Aucun changement à enregistrer')),
      );
      return;
    }

    final authNotifier = ref.read(authProvider.notifier);
    await authNotifier.updateInvestorProfile(
      riskTolerance: updateData['riskTolerance'],
      investmentPreferences: updateData['investmentPreferences'],
    );

    if (mounted && authNotifier.state.error == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profil mis à jour avec succès')),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        ref.watch(authProvider.select((state) => state.isLoading));

    return Scaffold(
      backgroundColor: AppColors.cardBackground,
      appBar: AppBar(
        title: Text('Modifier le profil investisseur',
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary)),
        backgroundColor: AppColors.cardBackground,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
              color: AppColors.textPrimary, size: 20.sp),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                'Mettez à jour votre profil investisseur',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.5, end: 0),
              SizedBox(height: 30.h),
              _buildSection('Tolérance au risque', [
                DropdownButtonFormField<String>(
                  value: _riskTolerance,
                  items: const [
                    DropdownMenuItem(value: 'low', child: Text('Faible')),
                    DropdownMenuItem(value: 'medium', child: Text('Moyenne')),
                    DropdownMenuItem(value: 'high', child: Text('Élevée')),
                  ],
                  onChanged: (value) => setState(() => _riskTolerance = value),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r)),
                    filled: true,
                    fillColor: AppColors.white.withOpacity(0.05),
                  ),
                ),
              ]),
              SizedBox(height: 25.h),
              _buildSection('Préférences d\'investissement', [
                _buildPreferenceSection('Secteurs', [
                  TextField(
                    controller: TextEditingController(
                      text: _investmentPreferences?.sectors?.join(', ') ?? '',
                    ),
                    onChanged: (value) {
                      setState(() {
                        _investmentPreferences ??= InvestmentPreferences();
                        _investmentPreferences = InvestmentPreferences(
                          sectors:
                              value.split(',').map((s) => s.trim()).toList(),
                          minAmount: _investmentPreferences?.minAmount,
                          maxAmount: _investmentPreferences?.maxAmount,
                          regions: _investmentPreferences?.regions,
                        );
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Ex. agriculture, technology',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r)),
                      filled: true,
                      fillColor: AppColors.white.withOpacity(0.05),
                    ),
                  ),
                ]),
                _buildPreferenceSection('Montant minimum', [
                  TextField(
                    controller: TextEditingController(
                      text: _investmentPreferences?.minAmount?.toString() ?? '',
                    ),
                    onChanged: (value) {
                      setState(() {
                        _investmentPreferences ??= InvestmentPreferences();
                        _investmentPreferences = InvestmentPreferences(
                          sectors: _investmentPreferences?.sectors,
                          minAmount: double.tryParse(value) ?? 0.0,
                          maxAmount: _investmentPreferences?.maxAmount,
                          regions: _investmentPreferences?.regions,
                        );
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Montant minimum',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r)),
                      filled: true,
                      fillColor: AppColors.white.withOpacity(0.05),
                    ),
                  ),
                ]),
                _buildPreferenceSection('Montant maximum', [
                  TextField(
                    controller: TextEditingController(
                      text: _investmentPreferences?.maxAmount?.toString() ?? '',
                    ),
                    onChanged: (value) {
                      setState(() {
                        _investmentPreferences ??= InvestmentPreferences();
                        _investmentPreferences = InvestmentPreferences(
                          sectors: _investmentPreferences?.sectors,
                          minAmount: _investmentPreferences?.minAmount,
                          maxAmount: double.tryParse(value) ?? 0.0,
                          regions: _investmentPreferences?.regions,
                        );
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Montant maximum',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r)),
                      filled: true,
                      fillColor: AppColors.white.withOpacity(0.05),
                    ),
                  ),
                ]),
                _buildPreferenceSection('Régions', [
                  TextField(
                    controller: TextEditingController(
                      text: _investmentPreferences?.regions?.join(', ') ?? '',
                    ),
                    onChanged: (value) {
                      setState(() {
                        _investmentPreferences ??= InvestmentPreferences();
                        _investmentPreferences = InvestmentPreferences(
                          sectors: _investmentPreferences?.sectors,
                          minAmount: _investmentPreferences?.minAmount,
                          maxAmount: _investmentPreferences?.maxAmount,
                          regions:
                              value.split(',').map((s) => s.trim()).toList(),
                        );
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Ex. Europe, Afrique',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r)),
                      filled: true,
                      fillColor: AppColors.white.withOpacity(0.05),
                    ),
                  ),
                ]),
              ]),
              SizedBox(height: 30.h),
              CustomButton(
                text: 'Enregistrer',
                onPressed: _updateInvestorProfile,
                isLoading: isLoading,
                // gradient: const LinearGradient(
                //   colors: [AppColors.primary, AppColors.primaryLight],
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                // ),
              )
                  .animate()
                  .scale(duration: 500.ms, curve: Curves.easeOut)
                  .then()
                  .fadeIn(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary.withOpacity(0.9),
          ),
        ),
        SizedBox(height: 15.h),
        Container(
          padding: EdgeInsets.all(15.w),
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12.r),
            // boxShadow: [
            //   BoxShadow(
            //     color: AppColors.shadow.withOpacity(0.1),
            //     blurRadius: 10,
            //     offset: const Offset(0, 5),
            //   ),
            // ],
          ),
          child: Column(children: children),
        ),
      ],
    ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.3, end: 0);
  }

  Widget _buildPreferenceSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        ...children,
      ],
    );
  }
}
