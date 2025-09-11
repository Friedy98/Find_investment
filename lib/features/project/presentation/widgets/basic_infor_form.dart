import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/features/project_category/domain/entities/project_category_entity.dart';
import 'package:find_invest_mobile/features/project_category/presentation/providers/project_category_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_dropdown.dart';
import 'package:find_invest_mobile/shared/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';
// import 'package:intl/intl.dart';

class BasicInfoFormComponent extends ConsumerStatefulWidget {
  final String projectId;
  final VoidCallback? onUpdate;

  const BasicInfoFormComponent({
    super.key,
    required this.projectId,
    this.onUpdate,
  });

  @override
  ConsumerState<BasicInfoFormComponent> createState() =>
      _BasicInfoFormComponentState();
}

class _BasicInfoFormComponentState
    extends ConsumerState<BasicInfoFormComponent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> _tags = [];
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _shortDescriptionController =
      TextEditingController();
  final TextEditingController _subSectorController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _regionController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _fundingGoalController = TextEditingController();
  final TextEditingController _minimumInvestmentController =
      TextEditingController();
  final TextEditingController _maximumInvestmentController =
      TextEditingController();
  final TextEditingController _expectedReturnPercentageController =
      TextEditingController();
  final TextEditingController _durationController = TextEditingController();
  final TextEditingController _maxMembersController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();
  final _fundingDeadlineController = TextEditingController();
  String? _selectedCategory;
  String? _selectedSector;
  String? _selectedCurrency;
  String? _selectedFundingType;
  String? _selectedPeriod;
  String? _selectedStatus;
  String? _selectedVisibility;
  bool? _selectedFeatured;
  String? _selectedPriority;
  String? _selectedType;
  String? _selectedCollaborationType;
  bool? _selectedIsOpen;
  bool? _selectedRequiresApproval;

  @override
  void initState() {
    super.initState();
    final project = ref.read(projectProvider).selectedProject;
    if (project != null) {
      _titleController.text = project.title ?? '';
      _descriptionController.text = project.description ?? '';
      _shortDescriptionController.text = project.shortDescription ?? '';
      _subSectorController.text = project.subSector ?? '';
      _countryController.text = project.location?.country ?? '';
      _cityController.text = project.location?.city ?? '';
      _regionController.text = project.location?.region ?? '';
      _addressController.text = project.location?.address ?? '';
      _fundingGoalController.text = project.fundingGoal?.toString() ?? '';
      _minimumInvestmentController.text =
          project.minimumInvestment?.toString() ?? '';
      _maximumInvestmentController.text =
          project.maximumInvestment?.toString() ?? '';
      _expectedReturnPercentageController.text =
          project.expectedReturn?.percentage?.toString() ?? '';
      _durationController.text = project.duration?.toString() ?? '';
      _maxMembersController.text =
          project.groupSettings?.maxMembers?.toString() ?? '';
      _tags.addAll(project.tags ?? []);
      if (project.category is String) {
        _selectedCategory = project.category as String;
      } else if (project.category is ProjectCategoryEntity) {
        _selectedCategory = (project.category as ProjectCategoryEntity).id;
      }
      _selectedSector = project.sector;
      _selectedCurrency = project.currency;
      _selectedFundingType = project.fundingType;
      _selectedPeriod = project.expectedReturn?.period;
      _selectedStatus = project.status;
      _selectedVisibility = project.visibility;
      _selectedFeatured = project.featured;
      _selectedPriority = project.priority;
      _selectedType = project.type;
      _selectedCollaborationType = project.collaborationType;
      _selectedIsOpen = project.groupSettings?.isOpen;
      _selectedRequiresApproval = project.groupSettings?.requiresApproval;
      _startDateController.text =
          DateFormat('dd/MM/yyyy').format(project.startDate ?? DateTime.now());
      _endDateController.text =
          DateFormat('dd/MM/yyyy').format(project.endDate ?? DateTime.now());
      _fundingDeadlineController.text = DateFormat('dd/MM/yyyy')
          .format(project.fundingDeadline ?? DateTime.now());
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _shortDescriptionController.dispose();
    _subSectorController.dispose();
    _countryController.dispose();
    _cityController.dispose();
    _regionController.dispose();
    _addressController.dispose();
    _fundingGoalController.dispose();
    _minimumInvestmentController.dispose();
    _maximumInvestmentController.dispose();
    _expectedReturnPercentageController.dispose();
    _durationController.dispose();
    _maxMembersController.dispose();
    _startDateController.dispose();
    _endDateController.dispose();
    _fundingDeadlineController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);
    final categoryState = ref.watch(projectCategoryProvider);

    if (projectState.isLoading || categoryState.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (projectState.errorMessage != null) {
      return Center(
          child: Text(projectState.errorMessage ?? 'Erreur inconnue'));
    }

    final project = projectState.selectedProject;
    if (project == null) {
      return const Center(child: Text('Projet non trouvé'));
    }

    return Form(
      key: _formKey,
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTextField(
                  label: 'Titre du projet',
                  controller: _titleController,
                  minLength: 5,
                  maxLength: 200,
                  required: true,
                ).animate().fadeIn().slideY(begin: 0.3),
                SizedBox(height: 16.h),
                _buildTextArea(
                  label: 'Description',
                  controller: _descriptionController,
                  minLength: 50,
                  maxLength: 5000,
                  required: true,
                ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),
                SizedBox(height: 16.h),
                _buildTextArea(
                  label: 'Description courte',
                  controller: _shortDescriptionController,
                  maxLength: 500,
                  required: false,
                ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.3),
                SizedBox(height: 16.h),
                _buildCategoryDropdown(categoryState.categories)
                    .animate(delay: 300.ms)
                    .fadeIn()
                    .slideY(begin: 0.3),
                SizedBox(height: 16.h),
                _buildSectorDropdown()
                    .animate(delay: 400.ms)
                    .fadeIn()
                    .slideY(begin: 0.3),
                SizedBox(height: 16.h),
                _buildTextField(
                  label: 'Sous-secteur',
                  controller: _subSectorController,
                  maxLength: 100,
                  required: false,
                ).animate(delay: 500.ms).fadeIn().slideY(begin: 0.3),
                SizedBox(height: 16.h),
                _buildTagsInput()
                    .animate(delay: 600.ms)
                    .fadeIn()
                    .slideY(begin: 0.3),
                SizedBox(height: 16.h),
                _buildLocationFields(),
                SizedBox(height: 16.h),
                _buildFundingFields(),
                SizedBox(height: 16.h),
                _buildExpectedReturnFields(),
                SizedBox(height: 16.h),
                _buildStatusVisibilityFields(),
                SizedBox(height: 16.h),
                _buildDateFields(context),
                SizedBox(height: 16.h),
                _buildTypeCollaborationFields(),
                SizedBox(height: 100.h), // Espacement pour le bouton fixe
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
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
              child: CustomButton(
                text: 'Enregistrer',
                onPressed: _submit,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    int? minLength,
    int? maxLength,
    bool required = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(label,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600)),
            if (required)
              Text('*',
                  style: TextStyle(color: AppColors.error, fontSize: 14.sp)),
          ],
        ),
        SizedBox(height: 8.h),
        CustomTextField(
          controller: controller,
          validator: (value) {
            if (required && (value == null || value.isEmpty)) {
              return '$label est requis';
            }
            if (minLength != null && value!.length < minLength) {
              return 'Au moins $minLength caractères';
            }
            if (maxLength != null && value!.length > maxLength) {
              return 'Au plus $maxLength caractères';
            }
            return null;
          },
          onChanged: (value) {
            setState(() {});
          },
        ),
      ],
    );
  }

  Widget _buildTextArea({
    required String label,
    required TextEditingController controller,
    int? minLength,
    int? maxLength,
    bool required = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(label,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600)),
            if (required)
              Text('*',
                  style: TextStyle(color: AppColors.error, fontSize: 14.sp)),
          ],
        ),
        SizedBox(height: 8.h),
        CustomTextField(
          controller: controller,
          maxLines: 5,
          validator: (value) {
            if (required && (value == null || value.isEmpty)) {
              return '$label est requise';
            }
            if (minLength != null && value!.length < minLength) {
              return 'Au moins $minLength caractères';
            }
            if (maxLength != null && value!.length > maxLength) {
              return 'Au plus $maxLength caractères';
            }
            return null;
          },
          onChanged: (value) {
            setState(() {});
          },
        ),
      ],
    );
  }

  Widget _buildCategoryDropdown(List<ProjectCategoryEntity> categories) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Catégorie',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600)),
            Text('*',
                style: TextStyle(color: AppColors.error, fontSize: 14.sp)),
          ],
        ),
        SizedBox(height: 8.h),
        CustomDropdown<String>(
          label: "Catégorie",
          value: _selectedCategory,
          items: categories.map((category) => category.id).toList(),
          itemBuilder: (value) => Text(
              categories.firstWhere((category) => category.id == value).name),
          onChanged: (value) {
            setState(() => _selectedCategory = value);
          },
          validator: (value) {
            if (value == null) return 'La catégorie est requise';
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildSectorDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Secteur',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600)),
            Text('*',
                style: TextStyle(color: AppColors.error, fontSize: 14.sp)),
          ],
        ),
        SizedBox(height: 8.h),
        CustomDropdown<String>(
          label: "Secteur",
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
          itemBuilder: (value) => Text(value),
          onChanged: (value) {
            setState(() => _selectedSector = value);
          },
          validator: (value) {
            if (value == null) return 'Le secteur est requis';
            if (!const [
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
            ].contains(value)) return 'Secteur invalide';
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildTagsInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Tags',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600)),
        SizedBox(height: 8.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: _tags
              .map((tag) => Chip(
                    label: Text(
                      tag,
                      style: TextStyle(fontSize: 10.sp, fontFamily: 'Poppins'),
                    ),
                    backgroundColor: AppColors.accent.withOpacity(0.1),
                    deleteIconColor: AppColors.textSecondary,
                    onDeleted: () {
                      setState(() => _tags.remove(tag));
                    },
                  ))
              .toList(),
        ),
        ActionChip(
          label: Text(
            '+ Ajouter',
            style: TextStyle(fontSize: 10.sp, fontFamily: 'Poppins'),
          ),
          backgroundColor: AppColors.primary.withOpacity(0.1),
          onPressed: _showAddTagDialog,
        ),
        // SizedBox(height: 8.h),
        // CustomButton(
        //   text: 'Ajouter un tag',
        //   onPressed: _showAddTagDialog,
        // ),
      ],
    );
  }

  void _showAddTagDialog() {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Ajouter un tag'),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Max 50 caractères',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
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
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content:
                        Text('Tag invalide ou limite de 10 tags atteinte.'),
                    backgroundColor: AppColors.error,
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            child: const Text(
              'Ajouter',
              style: TextStyle(color: AppColors.background),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text('Localisation',
        //     style: TextStyle(
        //         fontFamily: 'Poppins',
        //         fontSize: 14.sp,
        //         fontWeight: FontWeight.w600)),
        // SizedBox(height: 8.h),
        _buildTextField(
          label: 'Pays',
          controller: _countryController,
          maxLength: 100,
          required: false,
        ),
        SizedBox(height: 16.h),
        _buildTextField(
          label: 'Ville',
          controller: _cityController,
          maxLength: 100,
          required: false,
        ),
        SizedBox(height: 16.h),
        _buildTextField(
          label: 'Région',
          controller: _regionController,
          maxLength: 100,
          required: false,
        ),
        SizedBox(height: 16.h),
        _buildTextField(
          label: 'Adresse',
          controller: _addressController,
          maxLength: 200,
          required: false,
        ),
      ],
    );
  }

  Widget _buildFundingFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text('Financement',
        //     style: TextStyle(
        //         fontFamily: 'Poppins',
        //         fontSize: 14.sp,
        //         fontWeight: FontWeight.w600)),
        // SizedBox(height: 8.h),
        _buildTextField(
          label: 'Objectif de financement',
          controller: _fundingGoalController,
          required: false,
        ),
        SizedBox(height: 16.h),
        CustomDropdown<String>(
          label: 'Devise',
          value: _selectedCurrency,
          items: const ['EUR', 'USD', 'XAF', 'GBP'],
          itemBuilder: (value) => Text(value),
          onChanged: (value) {
            setState(() => _selectedCurrency = value);
          },
          validator: (value) {
            if (value != null &&
                !const ['EUR', 'USD', 'XAF', 'GBP'].contains(value))
              return 'Devise invalide';
            return null;
          },
        ),
        SizedBox(height: 16.h),
        CustomDropdown<String>(
          label: 'Type de financement',
          value: _selectedFundingType,
          items: const [
            'donation',
            'investment',
            'loan',
            'equity',
            'revenue_share',
            'debt',
            'hybrid'
          ],
          itemBuilder: (value) => Text(value),
          onChanged: (value) {
            setState(() => _selectedFundingType = value);
          },
          validator: (value) {
            if (value != null &&
                !const [
                  'donation',
                  'investment',
                  'loan',
                  'equity',
                  'revenue_share',
                  'debt',
                  'hybrid'
                ].contains(value)) return 'Type invalide';
            return null;
          },
        ),
        SizedBox(height: 16.h),
        _buildTextField(
          label: 'Investissement minimum',
          controller: _minimumInvestmentController,
          required: false,
        ),
        SizedBox(height: 16.h),
        _buildTextField(
          label: 'Investissement maximum',
          controller: _maximumInvestmentController,
          required: false,
        ),
      ],
    );
  }

  Widget _buildExpectedReturnFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text('Retour attendu',
        //     style: TextStyle(
        //         fontFamily: 'Poppins',
        //         fontSize: 14.sp,
        //         fontWeight: FontWeight.w600)),
        // SizedBox(height: 8.h),
        _buildTextField(
          label: 'Pourcentage',
          controller: _expectedReturnPercentageController,
          required: false,
        ),
        SizedBox(height: 16.h),
        CustomDropdown<String>(
          label: 'Période',
          value: _selectedPeriod,
          items: const ['monthly', 'quarterly', 'annually'],
          itemBuilder: (value) => Text(value),
          onChanged: (value) {
            setState(() => _selectedPeriod = value);
          },
          validator: (value) {
            if (value != null &&
                !const ['monthly', 'quarterly', 'annually'].contains(value))
              return 'Période invalide';
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildStatusVisibilityFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text('Statut & Visibilité',
        //     style: TextStyle(
        //         fontFamily: 'Poppins',
        //         fontSize: 14.sp,
        //         fontWeight: FontWeight.w600)),
        // SizedBox(height: 8.h),
        CustomDropdown<String>(
          label: 'Statut',
          value: _selectedStatus,
          items: const [
            'draft',
            'submitted',
            'under_review',
            'approved',
            'active',
            'funded',
            'in_progress',
            'completed',
            'rejected',
            'cancelled',
            'suspended',
          ],
          itemBuilder: (value) => Text(value),
          onChanged: (value) {
            setState(() => _selectedStatus = value);
          },
          validator: (value) {
            if (value != null &&
                !const [
                  'draft',
                  'submitted',
                  'under_review',
                  'approved',
                  'active',
                  'funded',
                  'in_progress',
                  'completed',
                  'rejected',
                  'cancelled',
                  'suspended',
                ].contains(value)) return 'Statut invalide';
            return null;
          },
        ),
        SizedBox(height: 16.h),
        CustomDropdown<String>(
          label: 'Visibilité',
          value: _selectedVisibility,
          items: const ['public', 'private', 'members_only'],
          itemBuilder: (value) => Text(value),
          onChanged: (value) {
            setState(() => _selectedVisibility = value);
          },
          validator: (value) {
            if (value != null &&
                !const ['public', 'private', 'members_only'].contains(value))
              return 'Visibilité invalide';
            return null;
          },
        ),
        SizedBox(height: 16.h),
        CustomDropdown<bool>(
          label: 'Mis en avant',
          value: _selectedFeatured,
          items: const [true, false],
          itemBuilder: (value) => Text(value.toString()),
          onChanged: (value) {
            setState(() => _selectedFeatured = value);
          },
        ),
        SizedBox(height: 16.h),
        CustomDropdown<String>(
          label: 'Priorité',
          value: _selectedPriority,
          items: const ['low', 'medium', 'high', 'urgent'],
          itemBuilder: (value) => Text(value),
          onChanged: (value) {
            setState(() => _selectedPriority = value);
          },
          validator: (value) {
            if (value != null &&
                !const ['low', 'medium', 'high', 'urgent'].contains(value))
              return 'Priorité invalide';
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildDateFields(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text('Dates',
        //     style: TextStyle(
        //         fontFamily: 'Poppins',
        //         fontSize: 14.sp,
        //         fontWeight: FontWeight.w600)),
        // SizedBox(height: 8.h),
        _buildDatePicker('Date de début', context, _startDateController),
        SizedBox(height: 16.h),
        _buildDatePicker('Date de fin', context, _endDateController),
        SizedBox(height: 16.h),
        _buildDatePicker(
            'Échéance de financement', context, _fundingDeadlineController),
        SizedBox(height: 16.h),
        _buildTextField(
          label: 'Durée',
          controller: _durationController,
          required: false,
        ),
      ],
    );
  }

  Widget _buildDatePicker(String label, BuildContext context,
      TextEditingController dateController) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          // initialValue: initialDate != null
          //     ? DateFormat('yyyy-MM-dd').format(initialDate)
          //     : '',
          controller: dateController,
          label: label,
          hintText: 'Sélectionnez une date',
          readOnly: true,
          suffixIcon: const Icon(Icons.calendar_today),
          onTap: () async {
            final picked = await showDatePicker(
              context: context,
              initialDate: DateTime.tryParse(dateController.text),
              firstDate: DateTime.now(),
              lastDate: DateTime(2100),
            );
            if (picked != null) {
              dateController.text = DateFormat('dd/MM/yyyy').format(picked);
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
        ),
      ],
    );
  }

  Widget _buildTypeCollaborationFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text('Type & Collaboration',
        //     style: TextStyle(
        //         fontFamily: 'Poppins',
        //         fontSize: 14.sp,
        //         fontWeight: FontWeight.w600)),
        // SizedBox(height: 8.h),
        CustomDropdown<String>(
          label: 'Type',
          value: _selectedType,
          items: const ['individual', 'group'],
          itemBuilder: (value) => Text(value),
          onChanged: (value) {
            setState(() => _selectedType = value);
          },
          validator: (value) {
            if (value != null && !const ['individual', 'group'].contains(value))
              return 'Type invalide';
            return null;
          },
        ),
        SizedBox(height: 16.h),
        CustomDropdown<String>(
          label: 'Type de collaboration',
          value: _selectedCollaborationType,
          items: const ['solo', 'team', 'group', 'community'],
          itemBuilder: (value) => Text(value),
          onChanged: (value) {
            setState(() => _selectedCollaborationType = value);
          },
          validator: (value) {
            if (value != null &&
                !const ['solo', 'team', 'group', 'community'].contains(value))
              return 'Type invalide';
            return null;
          },
        ),
        SizedBox(height: 16.h),
        if (_selectedType == 'group') ...[
          CustomDropdown<bool>(
            label: 'Groupe ouvert',
            value: _selectedIsOpen,
            items: const [true, false],
            itemBuilder: (value) => Text(value.toString()),
            onChanged: (value) {
              setState(() => _selectedIsOpen = value);
            },
          ),
          SizedBox(height: 16.h),
          _buildTextField(
            label: 'Nombre max de membres',
            controller: _maxMembersController,
            required: false,
          ),
          SizedBox(height: 16.h),
          CustomDropdown<bool>(
            label: 'Approbation requise',
            value: _selectedRequiresApproval,
            items: const [true, false],
            itemBuilder: (value) => Text(value.toString()),
            onChanged: (value) {
              setState(() => _selectedRequiresApproval = value);
            },
          ),
        ],
      ],
    );
  }

  void _submit() async {
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
        title: const Text('Confirmer la mise à jour'),
        content: const Text(
            'Êtes-vous sûr de vouloir mettre à jour les informations de base ?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
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

    final Map<String, dynamic> data = {};

    if (_titleController.text.isNotEmpty) {
      data['title'] = _titleController.text;
    }
    if (_descriptionController.text.isNotEmpty) {
      data['description'] = _descriptionController.text;
    }
    if (_shortDescriptionController.text.isNotEmpty) {
      data['shortDescription'] = _shortDescriptionController.text;
    }
    if (_selectedCategory != null) {
      data['category'] = _selectedCategory;
    }
    if (_selectedSector != null) {
      data['sector'] = _selectedSector;
    }
    if (_subSectorController.text.isNotEmpty) {
      data['subSector'] = _subSectorController.text;
    }
    if (_tags.isNotEmpty) {
      data['tags'] = _tags;
    }
    if (_countryController.text.isNotEmpty ||
        _cityController.text.isNotEmpty ||
        _regionController.text.isNotEmpty ||
        _addressController.text.isNotEmpty) {
      data['location'] = {};
      if (_countryController.text.isNotEmpty) {
        data['location']['country'] = _countryController.text;
      }
      if (_cityController.text.isNotEmpty) {
        data['location']['city'] = _cityController.text;
      }
      if (_regionController.text.isNotEmpty) {
        data['location']['region'] = _regionController.text;
      }
      if (_addressController.text.isNotEmpty) {
        data['location']['address'] = _addressController.text;
      }
    }
    if (_fundingGoalController.text.isNotEmpty) {
      data['fundingGoal'] = num.tryParse(_fundingGoalController.text);
    }
    if (_selectedCurrency != null) {
      data['currency'] = _selectedCurrency;
    }
    if (_selectedFundingType != null) {
      data['fundingType'] = _selectedFundingType;
    }
    if (_minimumInvestmentController.text.isNotEmpty) {
      data['minimumInvestment'] =
          num.tryParse(_minimumInvestmentController.text);
    }
    if (_maximumInvestmentController.text.isNotEmpty) {
      data['maximumInvestment'] =
          num.tryParse(_maximumInvestmentController.text);
    }
    if (_expectedReturnPercentageController.text.isNotEmpty ||
        _selectedPeriod != null) {
      data['expectedReturn'] = {};
      if (_expectedReturnPercentageController.text.isNotEmpty) {
        data['expectedReturn']['percentage'] =
            num.tryParse(_expectedReturnPercentageController.text);
      }
      if (_selectedPeriod != null) {
        data['expectedReturn']['period'] = _selectedPeriod;
      }
    }
    if (_selectedStatus != null) {
      data['status'] = _selectedStatus;
    }
    if (_selectedVisibility != null) {
      data['visibility'] = _selectedVisibility;
    }
    if (_selectedFeatured != null) {
      data['featured'] = _selectedFeatured;
    }
    if (_selectedPriority != null) {
      data['priority'] = _selectedPriority;
    }
    if (_startDateController.text.isNotEmpty) {
      data['startDate'] = DateFormat('dd/MM/yyyy')
          .parse(_startDateController.text)
          .toIso8601String();
    }
    if (_endDateController.text.isNotEmpty) {
      data['endDate'] = DateFormat('dd/MM/yyyy')
          .parse(_endDateController.text)
          .toIso8601String();
    }
    if (_fundingDeadlineController.text.isNotEmpty) {
      data['fundingDeadline'] = DateFormat('dd/MM/yyyy')
          .parse(_endDateController.text)
          .toIso8601String();
    }
    if (_durationController.text.isNotEmpty) {
      data['duration'] = num.tryParse(_durationController.text);
    }
    if (_selectedType != null) {
      data['type'] = _selectedType;
    }
    if (_selectedCollaborationType != null) {
      data['collaborationType'] = _selectedCollaborationType;
    }
    if (_selectedType == 'group' &&
        (_selectedIsOpen != null ||
            _maxMembersController.text.isNotEmpty ||
            _selectedRequiresApproval != null)) {
      data['groupSettings'] = {};
      if (_selectedIsOpen != null) {
        data['groupSettings']['isOpen'] = _selectedIsOpen;
      }
      if (_maxMembersController.text.isNotEmpty) {
        data['groupSettings']['maxMembers'] =
            num.tryParse(_maxMembersController.text);
      }
      if (_selectedRequiresApproval != null) {
        data['groupSettings']['requiresApproval'] = _selectedRequiresApproval;
      }
    }

    await ref
        .read(projectProvider.notifier)
        .updateProject(widget.projectId, data)
        .then((_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Informations de base mises à jour avec succès'),
            backgroundColor: AppColors.success,
          ),
        );
        widget.onUpdate?.call();
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
