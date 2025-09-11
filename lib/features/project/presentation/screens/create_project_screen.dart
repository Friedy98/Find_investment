import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/features/project_category/domain/entities/project_category_entity.dart';
import 'package:find_invest_mobile/features/project_category/presentation/providers/project_category_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:find_invest_mobile/shared/widgets/custom_dropdown.dart';
import 'package:find_invest_mobile/shared/widgets/custom_text_field.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CreateProjectScreen extends ConsumerStatefulWidget {
  const CreateProjectScreen({super.key});

  @override
  ConsumerState<CreateProjectScreen> createState() =>
      _CreateProjectScreenState();
}

class _CreateProjectScreenState extends ConsumerState<CreateProjectScreen> {
  final PageController _pageController = PageController();
  final _formKey = GlobalKey<FormState>();

  int _currentStep = 0;
  final int _totalSteps = 5;

  // Form controllers
  final _titleController = TextEditingController();
  final _shortDescriptionController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _fundingGoalController = TextEditingController();
  final _minimumInvestmentController = TextEditingController();
  final _maximumInvestmentController = TextEditingController();
  final _countryController = TextEditingController();
  final _regionController = TextEditingController();
  final _cityController = TextEditingController();
  final _subSectorController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();
  final _fundingDeadlineController = TextEditingController();
  final _addressController = TextEditingController();
  final _latitudeController = TextEditingController();
  final _longitudeController = TextEditingController();
  final _expectedReturnPercentageController = TextEditingController();
  final _metaTitleController = TextEditingController();
  final _metaDescriptionController = TextEditingController();

  // Form data
  ProjectCategoryEntity? _selectedCategory;
  String? _selectedSector;
  final List<String> _tags = [];
  final List<String> _seoKeywords = [];
  String _fundingType = 'investment';
  String _currency = 'EUR';
  String _riskLevel = 'low';
  String _visibility = 'public';
  String _priority = 'medium';
  String _type = 'individual';
  String _collaborationType = 'solo';
  String _expectedReturnPeriod = 'annually';
  bool _allowComments = true;
  bool _allowInvestments = true;
  bool _autoApproveInvestments = false;
  bool _notifyOnInvestment = true;
  bool _publicFinancials = false;
  bool _groupIsOpen = false;
  bool _groupRequiresApproval = true;
  int _groupMaxMembers = 10;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(projectCategoryProvider.notifier).fetchCategories();
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _shortDescriptionController.dispose();
    _descriptionController.dispose();
    _fundingGoalController.dispose();
    _minimumInvestmentController.dispose();
    _maximumInvestmentController.dispose();
    _countryController.dispose();
    _regionController.dispose();
    _cityController.dispose();
    _subSectorController.dispose();
    _startDateController.dispose();
    _endDateController.dispose();
    _fundingDeadlineController.dispose();
    _addressController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
    _expectedReturnPercentageController.dispose();
    _metaTitleController.dispose();
    _metaDescriptionController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);
    final categoryState = ref.watch(projectCategoryProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: LoadingOverlay(
        isLoading: projectState.isLoading || categoryState.isLoading,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildHeader(categoryState),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    _buildBasicInfoStep(categoryState),
                    _buildFundingStep(),
                    _buildDetailsStep(),
                    _buildOptionalStep(),
                    _buildReviewStep(),
                  ],
                ),
              ),
              _buildNavigationButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(ProjectCategoryState categoryState) {
    final progress = (_currentStep + 1) / _totalSteps;
    return Container(
      padding: EdgeInsets.fromLTRB(20.w, 60.h, 20.w, 20.h),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: _showExitDialog,
                icon: Icon(Icons.close,
                    color: AppColors.textSecondary, size: 24.sp),
              ),
              Expanded(
                child: Text(
                  'Créer un projet',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              IconButton(
                onPressed: _currentStep > 0 ? _saveDraft : null,
                icon: Icon(
                  Icons.save_outlined,
                  color: _currentStep > 0
                      ? AppColors.primary
                      : AppColors.textTertiary,
                  size: 24.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Étape ${_currentStep + 1} sur $_totalSteps',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: AppColors.textSecondary,
                ),
              ),
              Text(
                '${(progress * 100).toInt()}%',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: AppColors.textTertiary.withOpacity(0.2),
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
            minHeight: 4.h,
            borderRadius: BorderRadius.circular(4.r),
          ),
        ],
      ),
    ).animate().fadeIn();
  }

  Widget _buildBasicInfoStep(ProjectCategoryState categoryState) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Informations de base',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ).animate().fadeIn().slideX(begin: -0.3),
          SizedBox(height: 16.h),
          Text(
            'Champs obligatoires',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ).animate(delay: 100.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 8.h),
          CustomTextField(
            controller: _titleController,
            label: 'Titre du projet',
            hintText: '5 à 200 caractères',
            validator: (value) {
              if (value == null || value.isEmpty) return 'Le titre est requis';
              if (value.length < 5 || value.length > 200)
                return 'Doit contenir 5 à 200 caractères';
              return null;
            },
          ).animate(delay: 200.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          CustomTextField(
            controller: _descriptionController,
            label: 'Description détaillée',
            hintText: '50 à 5000 caractères',
            maxLines: 5,
            validator: (value) {
              if (value == null || value.isEmpty)
                return 'La description est requise';
              if (value.length < 50 || value.length > 5000)
                return 'Doit contenir 50 à 5000 caractères';
              return null;
            },
          ).animate(delay: 300.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          CustomDropdown<ProjectCategoryEntity>(
            label: 'Catégorie',
            hint: 'Sélectionnez une catégorie',
            value: _selectedCategory,
            items: categoryState.categories,
            itemBuilder: (category) => Text(category.name),
            onChanged: (category) =>
                setState(() => _selectedCategory = category),
            validator: (value) =>
                value == null ? 'La catégorie est requise' : null,
          ).animate(delay: 400.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          CustomDropdown<String>(
            label: 'Secteur',
            hint: 'Sélectionnez un secteur',
            value: _selectedSector,
            items: const [
              'agriculture',
              'technology',
              'healthcare',
              'education',
              'finance',
              'retail',
              'manufacturing',
              'services',
              'energy',
              'transport',
              'other',
            ],
            itemBuilder: (sector) => Text(sector),
            onChanged: (sector) => setState(() => _selectedSector = sector),
            validator: (value) =>
                value == null ? 'Le secteur est requis' : null,
          ).animate(delay: 500.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 16.h),
          Text(
            'Champs facultatifs',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ).animate(delay: 600.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 8.h),
          CustomTextField(
            controller: _shortDescriptionController,
            label: 'Description courte',
            hintText: 'Max 500 caractères',
            maxLines: 2,
            validator: (value) => value != null && value.length > 500
                ? 'Max 500 caractères'
                : null,
          ).animate(delay: 700.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          CustomTextField(
            controller: _subSectorController,
            label: 'Sous-secteur',
            hintText: 'Max 100 caractères',
            validator: (value) => value != null && value.length > 100
                ? 'Max 100 caractères'
                : null,
          ).animate(delay: 800.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          _buildTagsInput().animate(delay: 900.ms).fadeIn().slideX(begin: -0.3),
        ],
      ),
    );
  }

  Widget _buildFundingStep() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Financement',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ).animate().fadeIn().slideX(begin: -0.3),
          SizedBox(height: 16.h),
          Text(
            'Champs obligatoires',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ).animate(delay: 100.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 8.h),
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
          ).animate(delay: 200.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 16.h),
          Text(
            'Champs facultatifs',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ).animate(delay: 300.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 8.h),
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
          ).animate(delay: 400.ms).fadeIn().slideX(begin: -0.3),
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
          ).animate(delay: 500.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          _buildRiskLevelSelector()
              .animate(delay: 600.ms)
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
          ).animate(delay: 700.ms).fadeIn().slideX(begin: -0.3),
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
          ).animate(delay: 800.ms).fadeIn().slideX(begin: -0.3),
        ],
      ),
    );
  }

  Widget _buildDetailsStep() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Détails supplémentaires',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ).animate().fadeIn().slideX(begin: -0.3),
          SizedBox(height: 16.h),
          Text(
            'Champs obligatoires',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ).animate(delay: 100.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 8.h),
          CustomTextField(
            controller: _countryController,
            label: 'Pays',
            hintText: 'Max 100 caractères',
            validator: (value) {
              if (value == null || value.isEmpty) return 'Le pays est requis';
              if (value.length > 100) return 'Max 100 caractères';
              return null;
            },
          ).animate(delay: 200.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 16.h),
          Text(
            'Champs facultatifs',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ).animate(delay: 300.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 8.h),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: _regionController,
                  label: 'Région',
                  hintText: 'Max 100 caractères',
                  validator: (value) => value != null && value.length > 100
                      ? 'Max 100 caractères'
                      : null,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: CustomTextField(
                  controller: _cityController,
                  label: 'Ville',
                  hintText: 'Max 100 caractères',
                  validator: (value) => value != null && value.length > 100
                      ? 'Max 100 caractères'
                      : null,
                ),
              ),
            ],
          ).animate(delay: 400.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          CustomTextField(
            controller: _startDateController,
            label: 'Date de début',
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
                _startDateController.text =
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
          CustomTextField(
            controller: _endDateController,
            label: 'Date de fin',
            hintText: 'Sélectionnez une date',
            readOnly: true,
            suffixIcon: const Icon(Icons.calendar_today),
            onTap: () async {
              final startDate = _startDateController.text.isNotEmpty
                  ? DateFormat('dd/MM/yyyy').parse(_startDateController.text)
                  : DateTime.now();
              final picked = await showDatePicker(
                context: context,
                initialDate: startDate,
                firstDate: startDate,
                lastDate: DateTime(2100),
              );
              if (picked != null) {
                _endDateController.text =
                    DateFormat('dd/MM/yyyy').format(picked);
              }
            },
            validator: (value) {
              if (value == null || value.isEmpty) return null;
              try {
                final startDate = _startDateController.text.isNotEmpty
                    ? DateFormat('dd/MM/yyyy').parse(_startDateController.text)
                    : DateTime.now();
                final endDate = DateFormat('dd/MM/yyyy').parse(value);
                if (endDate.isBefore(startDate))
                  return 'Doit être après la date de début';
                return null;
              } catch (e) {
                return 'Format de date invalide';
              }
            },
          ).animate(delay: 600.ms).fadeIn().slideX(begin: -0.3),
        ],
      ),
    );
  }

  Widget _buildOptionalStep() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Paramètres avancés',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ).animate().fadeIn().slideX(begin: -0.3),
          SizedBox(height: 16.h),
          CustomTextField(
            controller: _addressController,
            label: 'Adresse',
            hintText: 'Max 200 caractères',
            validator: (value) => value != null && value.length > 200
                ? 'Max 200 caractères'
                : null,
          ).animate(delay: 100.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: _latitudeController,
                  label: 'Latitude',
                  hintText: 'Ex: 3.874',
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value != null && value.isNotEmpty) {
                      final lat = double.tryParse(value);
                      if (lat == null || lat < -90 || lat > 90)
                        return 'Doit être entre -90 et 90';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: CustomTextField(
                  controller: _longitudeController,
                  label: 'Longitude',
                  hintText: 'Ex: 11.521',
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value != null && value.isNotEmpty) {
                      final lon = double.tryParse(value);
                      if (lon == null || lon < -180 || lon > 180)
                        return 'Doit être entre -180 et 180';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ).animate(delay: 200.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          CustomDropdown<String>(
            label: 'Devise',
            hint: 'Sélectionnez une devise',
            value: _currency,
            items: const ['EUR', 'USD', 'XAF', 'GBP'],
            itemBuilder: (currency) => Text(currency),
            onChanged: (currency) => setState(() => _currency = currency!),
          ).animate(delay: 300.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          CustomDropdown<String>(
            label: 'Visibilité',
            hint: 'Sélectionnez la visibilité',
            value: _visibility,
            items: const ['public', 'private', 'members_only'],
            itemBuilder: (visibility) => Text({
              'public': 'Publique',
              'private': 'Privée',
              'members_only': 'Membres uniquement',
            }[visibility]!),
            onChanged: (visibility) =>
                setState(() => _visibility = visibility!),
          ).animate(delay: 400.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          CustomDropdown<String>(
            label: 'Priorité',
            hint: 'Sélectionnez la priorité',
            value: _priority,
            items: const ['low', 'medium', 'high', 'urgent'],
            itemBuilder: (priority) => Text({
              'low': 'Faible',
              'medium': 'Moyenne',
              'high': 'Élevée',
              'urgent': 'Urgente',
            }[priority]!),
            onChanged: (priority) => setState(() => _priority = priority!),
          ).animate(delay: 500.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          CustomDropdown<String>(
            label: 'Type de projet',
            hint: 'Sélectionnez le type',
            value: _type,
            items: const ['individual', 'group'],
            itemBuilder: (type) => Text({
              'individual': 'Individuel',
              'group': 'Groupe',
            }[type]!),
            onChanged: (type) => setState(() => _type = type!),
          ).animate(delay: 600.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          CustomDropdown<String>(
            label: 'Type de collaboration',
            hint: 'Sélectionnez le type',
            value: _collaborationType,
            items: const ['solo', 'team', 'group', 'community'],
            itemBuilder: (collab) => Text({
              'solo': 'Solo',
              'team': 'Équipe',
              'group': 'Groupe',
              'community': 'Communauté',
            }[collab]!),
            onChanged: (collab) => setState(() => _collaborationType = collab!),
          ).animate(delay: 700.ms).fadeIn().slideX(begin: -0.3),
          if (_type == 'group') ...[
            SizedBox(height: 16.h),
            Text(
              'Paramètres de groupe',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.textSecondary,
              ),
            ).animate(delay: 800.ms).fadeIn().slideX(begin: -0.3),
            SizedBox(height: 8.h),
            SwitchListTile(
              title: Text(
                'Groupe ouvert',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                  color: AppColors.textPrimary,
                ),
              ),
              value: _groupIsOpen,
              onChanged: (value) => setState(() => _groupIsOpen = value),
              activeColor: AppColors.primary,
            ).animate(delay: 900.ms).fadeIn().slideX(begin: -0.3),
            SwitchListTile(
              title: Text(
                'Approbation requise',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                  color: AppColors.textPrimary,
                ),
              ),
              value: _groupRequiresApproval,
              onChanged: (value) =>
                  setState(() => _groupRequiresApproval = value),
              activeColor: AppColors.primary,
            ).animate(delay: 1000.ms).fadeIn().slideX(begin: -0.3),
            CustomTextField(
              label: 'Nombre maximum de membres',
              hintText: '2 à 50',
              // initialValue: _groupMaxMembers.toString(),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                final max = int.tryParse(value) ?? 10;
                if (max >= 2 && max <= 50) {
                  setState(() => _groupMaxMembers = max);
                }
              },
              validator: (value) {
                if (value != null && value.isNotEmpty) {
                  final max = int.tryParse(value);
                  if (max == null || max < 2 || max > 50)
                    return 'Doit être entre 2 et 50';
                }
                return null;
              },
            ).animate(delay: 1100.ms).fadeIn().slideX(begin: -0.3),
          ],
          SizedBox(height: 16.h),
          Text(
            'SEO',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ).animate(delay: 1200.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 8.h),
          CustomTextField(
            controller: _metaTitleController,
            label: 'Titre SEO',
            hintText: 'Max 60 caractères',
            validator: (value) =>
                value != null && value.length > 60 ? 'Max 60 caractères' : null,
          ).animate(delay: 1300.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          CustomTextField(
            controller: _metaDescriptionController,
            label: 'Description SEO',
            hintText: 'Max 160 caractères',
            maxLines: 2,
            validator: (value) => value != null && value.length > 160
                ? 'Max 160 caractères'
                : null,
          ).animate(delay: 1400.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 12.h),
          _buildSEOKeywordsInput()
              .animate(delay: 1500.ms)
              .fadeIn()
              .slideX(begin: -0.3),
          SizedBox(height: 16.h),
          Text(
            'Paramètres du projet',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ).animate(delay: 1600.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 8.h),
          SwitchListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            title: Text(
              'Autoriser les commentaires',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.textPrimary,
              ),
            ),
            value: _allowComments,
            onChanged: (value) => setState(() => _allowComments = value),
            activeColor: AppColors.primary,
          ).animate(delay: 1700.ms).fadeIn().slideX(begin: -0.3),
          SwitchListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            title: Text(
              'Autoriser les investissements',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.textPrimary,
              ),
            ),
            value: _allowInvestments,
            onChanged: (value) => setState(() => _allowInvestments = value),
            activeColor: AppColors.primary,
          ).animate(delay: 1800.ms).fadeIn().slideX(begin: -0.3),
          SwitchListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            title: Text(
              'Approuver automatiquement les investissements',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.textPrimary,
              ),
            ),
            value: _autoApproveInvestments,
            onChanged: (value) =>
                setState(() => _autoApproveInvestments = value),
            activeColor: AppColors.primary,
          ).animate(delay: 1900.ms).fadeIn().slideX(begin: -0.3),
          SwitchListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            title: Text(
              'Notifier lors d\'un investissement',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.textPrimary,
              ),
            ),
            value: _notifyOnInvestment,
            onChanged: (value) => setState(() => _notifyOnInvestment = value),
            activeColor: AppColors.primary,
          ).animate(delay: 2000.ms).fadeIn().slideX(begin: -0.3),
          SwitchListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            title: Text(
              'Rendre les données financières publiques',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.textPrimary,
              ),
            ),
            value: _publicFinancials,
            onChanged: (value) => setState(() => _publicFinancials = value),
            activeColor: AppColors.primary,
          ).animate(delay: 2100.ms).fadeIn().slideX(begin: -0.3),
          SizedBox(height: 16.h),
          Text(
            'Note : Ces informations peuvent être complétées plus tard.',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.sp,
              color: AppColors.textTertiary,
            ),
          ).animate(delay: 2200.ms).fadeIn().slideX(begin: -0.3),
        ],
      ),
    );
  }

  Widget _buildReviewStep() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Révision',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ).animate().fadeIn().slideX(begin: -0.3),
          SizedBox(height: 16.h),
          _buildReviewCard(
            'Informations de base',
            [
              'Titre: ${_titleController.text}',
              'Description: ${_descriptionController.text}',
              'Description courte: ${_shortDescriptionController.text}',
              'Catégorie: ${_selectedCategory?.name ?? 'Non sélectionnée'}',
              'Secteur: ${_selectedSector ?? 'Non sélectionné'}',
              'Sous-secteur: ${_subSectorController.text}',
              'Tags: ${_tags.join(', ')}',
            ],
          ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),
          SizedBox(height: 12.h),
          _buildReviewCard(
            'Financement',
            [
              'Objectif: ${_fundingGoalController.text} $_currency',
              'Investissement min: ${_minimumInvestmentController.text} $_currency',
              'Investissement max: ${_maximumInvestmentController.text} $_currency',
              'Type: ${{
                'donation': 'Don',
                'investment': 'Investissement',
                'loan': 'Prêt',
                'equity': 'Capitaux propres',
                'revenue_share': 'Partage de revenus',
                'debt': 'Dette',
                'hybrid': 'Hybride',
              }[_fundingType]!}',
              'Niveau de risque: ${{
                'low': 'Faible',
                'medium': 'Moyen',
                'high': 'Élevé',
              }[_riskLevel]!}',
              'Date limite: ${_fundingDeadlineController.text}',
              'Retour attendu: ${_expectedReturnPercentageController.text}% ${{
                'monthly': 'Mensuel',
                'quarterly': 'Trimestriel',
                'annually': 'Annuel',
              }[_expectedReturnPeriod]!}',
            ],
          ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.3),
          SizedBox(height: 12.h),
          _buildReviewCard(
            'Détails',
            [
              'Pays: ${_countryController.text}',
              'Région: ${_regionController.text}',
              'Ville: ${_cityController.text}',
              'Date de début: ${_startDateController.text}',
              'Date de fin: ${_endDateController.text}',
            ],
          ).animate(delay: 300.ms).fadeIn().slideY(begin: 0.3),
          SizedBox(height: 12.h),
          _buildReviewCard(
            'Paramètres avancés',
            [
              'Adresse: ${_addressController.text}',
              'Latitude: ${_latitudeController.text}',
              'Longitude: ${_longitudeController.text}',
              'Devise: $_currency',
              'Visibilité: ${{
                'public': 'Publique',
                'private': 'Privée',
                'members_only': 'Membres uniquement',
              }[_visibility]!}',
              'Priorité: ${{
                'low': 'Faible',
                'medium': 'Moyenne',
                'high': 'Élevée',
                'urgent': 'Urgente',
              }[_priority]!}',
              'Type de projet: ${_type == 'individual' ? 'Individuel' : 'Groupe'}',
              'Type de collaboration: ${{
                'solo': 'Solo',
                'team': 'Équipe',
                'group': 'Groupe',
                'community': 'Communauté',
              }[_collaborationType]!}',
              if (_type == 'group') ...[
                'Groupe ouvert: ${_groupIsOpen ? 'Oui' : 'Non'}',
                'Approbation requise: ${_groupRequiresApproval ? 'Oui' : 'Non'}',
                'Max membres: $_groupMaxMembers',
              ],
              'Autoriser commentaires: ${_allowComments ? 'Oui' : 'Non'}',
              'Autoriser investissements: ${_allowInvestments ? 'Oui' : 'Non'}',
              'Approuver auto. investissements: ${_autoApproveInvestments ? 'Oui' : 'Non'}',
              'Notifier investissements: ${_notifyOnInvestment ? 'Oui' : 'Non'}',
              'Finances publiques: ${_publicFinancials ? 'Oui' : 'Non'}',
              'Titre SEO: ${_metaTitleController.text}',
              'Description SEO: ${_metaDescriptionController.text}',
              'Mots-clés SEO: ${_seoKeywords.join(', ')}',
            ],
          ).animate(delay: 400.ms).fadeIn().slideY(begin: 0.3),
        ],
      ),
    );
  }

  Widget _buildTagsInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tags',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: [
            ..._tags.map((tag) => Chip(
                  label: Text(
                    tag,
                    style: TextStyle(fontSize: 10.sp, fontFamily: 'Poppins'),
                  ),
                  backgroundColor: AppColors.accent.withOpacity(0.1),
                  deleteIconColor: AppColors.textSecondary,
                  onDeleted: () => setState(() => _tags.remove(tag)),
                )),
            ActionChip(
              label: Text(
                '+ Ajouter',
                style: TextStyle(fontSize: 10.sp, fontFamily: 'Poppins'),
              ),
              backgroundColor: AppColors.primary.withOpacity(0.1),
              onPressed: _showAddTagDialog,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSEOKeywordsInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mots-clés SEO',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: [
            ..._seoKeywords.map((keyword) => Chip(
                  label: Text(
                    keyword,
                    style: TextStyle(fontSize: 10.sp, fontFamily: 'Poppins'),
                  ),
                  backgroundColor: AppColors.accent.withOpacity(0.1),
                  deleteIconColor: AppColors.textSecondary,
                  onDeleted: () => setState(() => _seoKeywords.remove(keyword)),
                )),
            ActionChip(
              label: Text(
                '+ Ajouter',
                style: TextStyle(fontSize: 10.sp, fontFamily: 'Poppins'),
              ),
              backgroundColor: AppColors.primary.withOpacity(0.1),
              onPressed: _showAddSEOKeywordDialog,
            ),
          ],
        ),
      ],
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

  Widget _buildReviewCard(String title, List<String> items) {
    return Card(
      color: AppColors.cardBackground,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 8.h),
            ...items
                .where((item) => !item.endsWith(': '))
                .map((item) => Padding(
                      padding: EdgeInsets.only(bottom: 4.h),
                      child: Text(
                        item,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.sp,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    )),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          if (_currentStep > 0)
            Expanded(
              child: CustomButton(
                onPressed: _previousStep,
                text: 'Précédent',
                backgroundColor: AppColors.textTertiary.withOpacity(0.1),
                textColor: AppColors.textSecondary,
              ),
            ),
          if (_currentStep > 0) SizedBox(width: 16.w),
          Expanded(
            child: CustomButton(
              onPressed:
                  _currentStep < _totalSteps - 1 ? _nextStep : _submitProject,
              text: _currentStep < _totalSteps - 1
                  ? 'Suivant'
                  : 'Créer le projet',
              backgroundColor: AppColors.primary,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void _nextStep() {
    if (_formKey.currentState == null || !_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Veuillez remplir tous les champs obligatoires.'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    if (_currentStep < _totalSteps - 1) {
      setState(() => _currentStep++);
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousStep() {
    if (_currentStep > 0) {
      setState(() => _currentStep--);
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _showAddTagDialog() {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Ajouter un tag'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Max 50 caractères',
          ),
          maxLength: 50,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annuler'),
          ),
          ElevatedButton(
            onPressed: () {
              if (controller.text.isNotEmpty &&
                  controller.text.length <= 50 &&
                  _tags.length < 10) {
                setState(() => _tags.add(controller.text.trim()));
                Navigator.pop(context);
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            child: const Text(
              'Ajouter',
              style: TextStyle(color: AppColors.background),
            ),
          ),
        ],
      ),
    );
  }

  void _showAddSEOKeywordDialog() {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Ajouter un mot-clé SEO'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Max 50 caractères',
          ),
          maxLength: 50,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annuler'),
          ),
          ElevatedButton(
            onPressed: () {
              if (controller.text.isNotEmpty &&
                  controller.text.length <= 50 &&
                  _seoKeywords.length < 20) {
                setState(() => _seoKeywords.add(controller.text.trim()));
                Navigator.pop(context);
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            child: const Text('Ajouter'),
          ),
        ],
      ),
    );
  }

  void _showExitDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Quitter la création'),
        content: const Text(
            'Votre progression sera sauvegardée. Vous pourrez reprendre plus tard.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Continuer'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.pop();
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
            child: const Text(
              'Quitter',
              style: TextStyle(color: AppColors.background),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _saveDraft() async {
    final projectData = _buildProjectData();
    try {
      await ref.read(projectProvider.notifier).createProject(projectData);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Brouillon sauvegardé avec succès'),
            backgroundColor: AppColors.success,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur lors de la sauvegarde: $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  Future<void> _submitProject() async {
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
            'Êtes-vous sûr de vouloir créer ce projet ? Vous ne pourrez pas modifier certains champs après soumission.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Annuler'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            child: const Text(
              'Créer',
              style: TextStyle(color: AppColors.background),
            ),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    final projectData = _buildProjectData();
    await ref.read(projectProvider.notifier).createProject(projectData);

    final state = ref.read(projectProvider);
    if (state.errorMessage == null) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Projet créé avec succès !'),
            backgroundColor: AppColors.success,
          ),
        );
        context.pop();
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur: ${state.errorMessage}'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  Map<String, dynamic> _buildProjectData() {
    final projectData = <String, dynamic>{
      'title': _titleController.text.trim(),
      'description': _descriptionController.text.trim(),
      'shortDescription': _shortDescriptionController.text.trim(),
      'category': _selectedCategory?.id,
      'sector': _selectedSector,
      'subSector': _subSectorController.text.trim(),
      'tags': _tags,
      'fundingGoal': double.tryParse(_fundingGoalController.text),
      'currency': _currency,
      'fundingType': _fundingType,
      'minimumInvestment': double.tryParse(_minimumInvestmentController.text),
      'maximumInvestment': double.tryParse(_maximumInvestmentController.text),
      'riskLevel': _riskLevel,
      'location': {
        'country': _countryController.text.trim(),
        'region': _regionController.text.trim(),
        'city': _cityController.text.trim(),
        'address': _addressController.text.trim(),
        'coordinates': _latitudeController.text.isNotEmpty &&
                _longitudeController.text.isNotEmpty
            ? [
                double.tryParse(_longitudeController.text) ?? 0.0,
                double.tryParse(_latitudeController.text) ?? 0.0,
              ]
            : null,
      },
      'startDate': _startDateController.text.isNotEmpty
          ? DateFormat('dd/MM/yyyy')
              .parse(_startDateController.text)
              .toIso8601String()
          : null,
      'endDate': _endDateController.text.isNotEmpty
          ? DateFormat('dd/MM/yyyy')
              .parse(_endDateController.text)
              .toIso8601String()
          : null,
      'fundingDeadline': _fundingDeadlineController.text.isNotEmpty
          ? DateFormat('dd/MM/yyyy')
              .parse(_fundingDeadlineController.text)
              .toIso8601String()
          : null,
      'visibility': _visibility,
      'priority': _priority,
      'type': _type,
      'collaborationType': _collaborationType,
      'expectedReturn': _expectedReturnPercentageController.text.isNotEmpty
          ? {
              'percentage':
                  double.tryParse(_expectedReturnPercentageController.text),
              'period': _expectedReturnPeriod,
            }
          : null,
      'settings': {
        'allowComments': _allowComments,
        'allowInvestments': _allowInvestments,
        'autoApproveInvestments': _autoApproveInvestments,
        'notifyOnInvestment': _notifyOnInvestment,
        'publicFinancials': _publicFinancials,
      },
      'seo': {
        'metaTitle': _metaTitleController.text.trim(),
        'metaDescription': _metaDescriptionController.text.trim(),
        'keywords': _seoKeywords,
      },
      if (_type == 'group')
        'groupSettings': {
          'isOpen': _groupIsOpen,
          'maxMembers': _groupMaxMembers,
          'requiresApproval': _groupRequiresApproval,
        },
    };

    // Remove null or empty values
    projectData.removeWhere((key, value) =>
        value == null ||
        (value is String && value.isEmpty) ||
        (value is List && value.isEmpty));
    if (projectData['location'] != null) {
      projectData['location'].removeWhere(
          (key, value) => value == null || (value is String && value.isEmpty));
      if (projectData['location'].isEmpty) projectData.remove('location');
    }
    if (projectData['expectedReturn'] != null &&
        projectData['expectedReturn'].isEmpty) {
      projectData.remove('expectedReturn');
    }
    if (projectData['seo'] != null) {
      projectData['seo'].removeWhere((key, value) =>
          value == null ||
          (value is String && value.isEmpty) ||
          (value is List && value.isEmpty));
      if (projectData['seo'].isEmpty) projectData.remove('seo');
    }
    if (projectData['groupSettings'] != null &&
        projectData['groupSettings'].isEmpty) {
      projectData.remove('groupSettings');
    }

    return projectData;
  }
}
