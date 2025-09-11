import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_dropdown.dart';
import 'package:find_invest_mobile/shared/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';

class FundingFormComponent extends ConsumerStatefulWidget {
  final String projectId;
  final VoidCallback onUpdate;

  const FundingFormComponent({
    super.key,
    required this.projectId,
    required this.onUpdate,
  });

  @override
  ConsumerState<FundingFormComponent> createState() =>
      _FundingFormComponentState();
}

class _FundingFormComponentState extends ConsumerState<FundingFormComponent> {
  final _formKey = GlobalKey<FormState>();
  final _fundingGoalController = TextEditingController();
  final _minimumInvestmentController = TextEditingController();
  final _maximumInvestmentController = TextEditingController();
  final _fundingDeadlineController = TextEditingController();
  final _expectedReturnPercentageController = TextEditingController();
  String _fundingType = 'investment';
  String _currency = 'EUR';
  String _riskLevel = 'low';
  String _expectedReturnPeriod = 'annually';

  @override
  void initState() {
    super.initState();
    final project = ref.read(projectProvider).selectedProject;
    if (project != null) {
      _fundingGoalController.text = project.fundingGoal.toString();
      _minimumInvestmentController.text =
          project.minimumInvestment?.toString() ?? '';
      _maximumInvestmentController.text =
          project.maximumInvestment?.toString() ?? '';
      _fundingDeadlineController.text = project.fundingDeadline != null
          ? DateFormat('dd/MM/yyyy').format(project.fundingDeadline!)
          : '';
      _expectedReturnPercentageController.text =
          project.expectedReturn?.percentage?.toString() ?? '';
      _fundingType = project.fundingType ?? 'investment';
      _currency = project.currency ?? 'EUR';
      _riskLevel = project.riskLevel ?? 'low';
      _expectedReturnPeriod = project.expectedReturn?.period ?? 'annually';
    }
  }

  @override
  void dispose() {
    _fundingGoalController.dispose();
    _minimumInvestmentController.dispose();
    _maximumInvestmentController.dispose();
    _fundingDeadlineController.dispose();
    _expectedReturnPercentageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              controller: _fundingGoalController,
              label: 'Objectif de financement ($_currency)',
              hintText: '100 - 10,000,000 $_currency',
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty)
                  return 'L\'objectif est requis';
                final amount = double.tryParse(value);
                if (amount == null || amount < 100 || amount > 10000000) {
                  return 'Doit être entre 100 et 10,000,000 $_currency';
                }
                return null;
              },
            ).animate(delay: 100.ms).fadeIn().slideX(begin: -0.3),
            SizedBox(height: 12.h),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: _minimumInvestmentController,
                    label: 'Investissement minimum ($_currency)',
                    hintText: 'Min 1 $_currency',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        final amount = double.tryParse(value);
                        if (amount == null || amount < 1)
                          return 'Min 1 $_currency';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: CustomTextField(
                    controller: _maximumInvestmentController,
                    label: 'Investissement maximum ($_currency)',
                    hintText: 'Min 1 $_currency',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        final amount = double.tryParse(value);
                        if (amount == null || amount < 1)
                          return 'Min 1 $_currency';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ).animate(delay: 200.ms).fadeIn().slideX(begin: -0.3),
            SizedBox(height: 12.h),
            CustomDropdown<String>(
              label: 'Type de financement',
              hint: 'Sélectionnez un type',
              value: _fundingType,
              items: const [
                'donation',
                'investment',
                'loan',
                'equity',
                'revenue_share',
                'debt',
                'hybrid',
              ],
              itemBuilder: (type) => Text({
                'donation': 'Don',
                'investment': 'Investissement',
                'loan': 'Prêt',
                'equity': 'Capitaux propres',
                'revenue_share': 'Partage de revenus',
                'debt': 'Dette',
                'hybrid': 'Hybride',
              }[type]!),
              onChanged: (type) => setState(() => _fundingType = type!),
            ).animate(delay: 300.ms).fadeIn().slideX(begin: -0.3),
            SizedBox(height: 12.h),
            _buildRiskLevelSelector()
                .animate(delay: 400.ms)
                .fadeIn()
                .slideX(begin: -0.3),
            SizedBox(height: 12.h),
            CustomTextField(
              controller: _fundingDeadlineController,
              label: 'Date limite de financement',
              hintText: 'Sélectionnez une date',
              readOnly: true,
              suffixIcon: const Icon(Icons.calendar_today),
              onTap: () async {
                final picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );
                if (picked != null) {
                  _fundingDeadlineController.text =
                      DateFormat('dd/MM/yyyy').format(picked);
                }
              },
              validator: (value) {
                if (value == null || value.isEmpty) return null;
                try {
                  final date = DateFormat('dd/MM/yyyy').parse(value);
                  if (date.isBefore(DateTime.now())) return 'Doit être futur';
                  return null;
                } catch (e) {
                  return 'Format de date invalide';
                }
              },
            ).animate(delay: 500.ms).fadeIn().slideX(begin: -0.3),
            SizedBox(height: 12.h),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: _expectedReturnPercentageController,
                    label: 'Retour attendu (%)',
                    hintText: '0 à 100%',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        final percentage = double.tryParse(value);
                        if (percentage == null ||
                            percentage < 0 ||
                            percentage > 100) {
                          return 'Doit être entre 0 et 100';
                        }
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: CustomDropdown<String>(
                    label: 'Période de retour',
                    hint: 'Sélectionnez une période',
                    value: _expectedReturnPeriod,
                    items: const ['monthly', 'quarterly', 'annually'],
                    itemBuilder: (period) => Text({
                      'monthly': 'Mensuel',
                      'quarterly': 'Trimestriel',
                      'annually': 'Annuel',
                    }[period]!),
                    onChanged: (period) =>
                        setState(() => _expectedReturnPeriod = period!),
                  ),
                ),
              ],
            ).animate(delay: 600.ms).fadeIn().slideX(begin: -0.3),
            SizedBox(height: 12.h),
            CustomDropdown<String>(
              label: 'Devise',
              hint: 'Sélectionnez une devise',
              value: _currency,
              items: const ['EUR', 'USD', 'XAF', 'GBP'],
              itemBuilder: (currency) => Text(currency),
              onChanged: (currency) => setState(() => _currency = currency!),
            ).animate(delay: 700.ms).fadeIn().slideX(begin: -0.3),
          ],
        ),
      ),
    );
  }

  Widget _buildRiskLevelSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Niveau de risque',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        SegmentedButton<String>(
          segments: const [
            ButtonSegment(value: 'low', label: Text('Faible')),
            ButtonSegment(value: 'medium', label: Text('Moyen')),
            ButtonSegment(value: 'high', label: Text('Élevé')),
          ],
          selected: {_riskLevel},
          onSelectionChanged: (selection) =>
              setState(() => _riskLevel = selection.first),
          style: SegmentedButton.styleFrom(
            selectedBackgroundColor: AppColors.primary.withOpacity(0.1),
            selectedForegroundColor: AppColors.primary,
          ),
        ),
      ],
    );
  }

  void validateAndUpdate() {
    if (_formKey.currentState == null || !_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Veuillez remplir tous les champs obligatoires.'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    final data = {
      'fundingGoal': double.tryParse(_fundingGoalController.text),
      'minimumInvestment': double.tryParse(_minimumInvestmentController.text),
      'maximumInvestment': double.tryParse(_maximumInvestmentController.text),
      'fundingType': _fundingType,
      'currency': _currency,
      'riskLevel': _riskLevel,
      'fundingDeadline': _fundingDeadlineController.text.isNotEmpty
          ? DateFormat('dd/MM/yyyy')
              .parse(_fundingDeadlineController.text)
              .toIso8601String()
          : null,
      'expectedReturn': _expectedReturnPercentageController.text.isNotEmpty
          ? {
              'percentage':
                  double.tryParse(_expectedReturnPercentageController.text),
              'period': _expectedReturnPeriod,
            }
          : null,
    }..removeWhere((key, value) =>
        value == null ||
        (value is String && value.isEmpty) ||
        (value is List && value.isEmpty));

    ref
        .read(projectProvider.notifier)
        .updateProject(widget.projectId, data)
        .then((_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Financement mis à jour avec succès'),
            backgroundColor: AppColors.success,
          ),
        );
        widget.onUpdate();
      }
    }).catchError((e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur: $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    });
  }
}
