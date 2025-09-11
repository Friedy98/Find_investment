import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_text_field.dart';

class FinancialInfoFormComponent extends ConsumerStatefulWidget {
  final String projectId;
  final VoidCallback? onUpdate;

  const FinancialInfoFormComponent({
    super.key,
    required this.projectId,
    this.onUpdate,
  });

  @override
  ConsumerState<FinancialInfoFormComponent> createState() =>
      _FinancialInfoFormComponentState();
}

class _FinancialInfoFormComponentState
    extends ConsumerState<FinancialInfoFormComponent>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _formKey = GlobalKey<FormState>();
  final List<Map<String, TextEditingController>> _revenueEntries = [];
  final List<Map<String, TextEditingController>> _expenseEntries = [];
  final List<Map<String, TextEditingController>> _profitEntries = [];
  final TextEditingController _breakEvenMonthsController =
      TextEditingController();
  final TextEditingController _breakEvenDescController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    final project = ref.read(projectProvider).selectedProject;
    if (project != null && project.financialProjections != null) {
      // Initialize revenue
      if (project.financialProjections!.revenue != null) {
        for (var r in project.financialProjections!.revenue!) {
          _revenueEntries.add({
            'year': TextEditingController(text: r.year?.toString()),
            'amount': TextEditingController(text: r.amount?.toString()),
            'description': TextEditingController(text: r.description ?? ''),
          });
        }
      }
      if (_revenueEntries.isEmpty) _addRevenueEntry();

      // Initialize expenses
      if (project.financialProjections!.expenses != null) {
        for (var e in project.financialProjections!.expenses!) {
          _expenseEntries.add({
            'year': TextEditingController(text: e.year?.toString()),
            'amount': TextEditingController(text: e.amount?.toString()),
            'category': TextEditingController(text: e.category ?? ''),
            'description': TextEditingController(text: e.description ?? ''),
          });
        }
      }
      if (_expenseEntries.isEmpty) _addExpenseEntry();

      // Initialize profit
      if (project.financialProjections!.profit != null) {
        for (var p in project.financialProjections!.profit!) {
          _profitEntries.add({
            'year': TextEditingController(text: p.year?.toString()),
            'amount': TextEditingController(text: p.amount?.toString()),
          });
        }
      }
      if (_profitEntries.isEmpty) _addProfitEntry();

      // Initialize break even
      _breakEvenMonthsController.text =
          project.financialProjections!.breakEvenPoint?.months?.toString() ??
              '';
      _breakEvenDescController.text =
          project.financialProjections!.breakEvenPoint?.description ?? '';
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    for (var entry in [
      ..._revenueEntries,
      ..._expenseEntries,
      ..._profitEntries
    ]) {
      entry.forEach((key, controller) => controller.dispose());
    }
    _breakEvenMonthsController.dispose();
    _breakEvenDescController.dispose();
    super.dispose();
  }

  void _addRevenueEntry() {
    setState(() {
      _revenueEntries.add({
        'year': TextEditingController(),
        'amount': TextEditingController(),
        'description': TextEditingController(),
      });
    });
  }

  void _removeRevenueEntry(int index) {
    setState(() {
      _revenueEntries[index].forEach((key, controller) => controller.dispose());
      _revenueEntries.removeAt(index);
    });
  }

  void _addExpenseEntry() {
    setState(() {
      _expenseEntries.add({
        'year': TextEditingController(),
        'amount': TextEditingController(),
        'category': TextEditingController(),
        'description': TextEditingController(),
      });
    });
  }

  void _removeExpenseEntry(int index) {
    setState(() {
      _expenseEntries[index].forEach((key, controller) => controller.dispose());
      _expenseEntries.removeAt(index);
    });
  }

  void _addProfitEntry() {
    setState(() {
      _profitEntries.add({
        'year': TextEditingController(),
        'amount': TextEditingController(),
      });
    });
  }

  void _removeProfitEntry(int index) {
    setState(() {
      _profitEntries[index].forEach((key, controller) => controller.dispose());
      _profitEntries.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);
    if (projectState.isLoading)
      return const Center(child: CircularProgressIndicator());
    if (projectState.errorMessage != null)
      return Center(
          child: Text(projectState.errorMessage ?? 'Erreur inconnue'));

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: AppColors.cardBackground,
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Vue Générale'),
                Tab(text: 'Ajout/Modification'),
              ],
              labelStyle:
                  TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
              unselectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
              labelColor: AppColors.primary,
              unselectedLabelColor: AppColors.textSecondary,
              indicatorColor: AppColors.primary,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildOverviewTab(),
                _buildEditTab(),
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

  Widget _buildOverviewTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader('Revenus'),
          SizedBox(height: 8.h),
          if (_revenueEntries.isEmpty)
            const Center(
                child: Text('Aucun revenu enregistré',
                    style: TextStyle(color: AppColors.textSecondary))),
          ..._revenueEntries
              .asMap()
              .entries
              .map((entry) =>
                  _buildSummaryCard(entry.value, 'revenue', entry.key))
              .toList(),
          SizedBox(height: 24.h),
          _buildSectionHeader('Dépenses'),
          SizedBox(height: 8.h),
          if (_expenseEntries.isEmpty)
            const Center(
                child: Text('Aucune dépense enregistrée',
                    style: TextStyle(color: AppColors.textSecondary))),
          ..._expenseEntries
              .asMap()
              .entries
              .map((entry) =>
                  _buildSummaryCard(entry.value, 'expense', entry.key))
              .toList(),
          SizedBox(height: 24.h),
          _buildSectionHeader('Profits'),
          SizedBox(height: 8.h),
          if (_profitEntries.isEmpty)
            const Center(
                child: Text('Aucun profit enregistré',
                    style: TextStyle(color: AppColors.textSecondary))),
          ..._profitEntries
              .asMap()
              .entries
              .map((entry) =>
                  _buildSummaryCard(entry.value, 'profit', entry.key))
              .toList(),
          SizedBox(height: 24.h),
          _buildSectionHeader('Point d\'Équilibre'),
          SizedBox(height: 8.h),
          if (_breakEvenMonthsController.text.isEmpty &&
              _breakEvenDescController.text.isEmpty)
            const Center(
                child: Text('Aucun point d\'équilibre défini',
                    style: TextStyle(color: AppColors.textSecondary))),
          _buildTextField(
            label: 'Mois',
            controller: _breakEvenMonthsController,
            hintText: 'Ex: 12',
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value != null && value.isNotEmpty) {
                final months = int.tryParse(value);
                if (months == null || months < 0) return 'Mois valide requis';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          _buildTextField(
            label: 'Description',
            controller: _breakEvenDescController,
            hintText: 'Détails optionnels',
            maxLines: 3,
          ),
        ],
      ),
    );
  }

  Widget _buildEditTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader('Revenus'),
          SizedBox(height: 8.h),
          ..._buildEditableFields(_revenueEntries, 'revenue', _addRevenueEntry,
              _removeRevenueEntry),
          SizedBox(height: 24.h),
          _buildSectionHeader('Dépenses'),
          SizedBox(height: 8.h),
          ..._buildEditableFields(_expenseEntries, 'expense', _addExpenseEntry,
              _removeExpenseEntry),
          SizedBox(height: 24.h),
          _buildSectionHeader('Profits'),
          SizedBox(height: 8.h),
          ..._buildEditableFields(
              _profitEntries, 'profit', _addProfitEntry, _removeProfitEntry),
        ],
      ),
    );
  }

  List<Widget> _buildEditableFields(
    List<Map<String, TextEditingController>> entries,
    String type,
    VoidCallback addFunction,
    void Function(int) removeFunction,
  ) {
    return [
      ...List.generate(entries.length, (index) {
        final entry = entries[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: Card(
            // elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: const BorderSide(color: AppColors.gray200),
            ),
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextField(
                    label: 'Année',
                    controller: entry['year']!,
                    hintText: 'Ex: 2025',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Année requise';
                      final year = int.tryParse(value);
                      if (year == null || year < 2025 || year > 2100)
                        return 'Année invalide (2025-2100)';
                      return null;
                    },
                  ),
                  SizedBox(height: 16.h),
                  _buildTextField(
                    label: 'Montant',
                    controller: entry['amount']!,
                    hintText: 'Ex: 10000',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Montant requis';
                      final amount = double.tryParse(value);
                      if (amount == null || amount < 0)
                        return 'Montant invalide';
                      return null;
                    },
                  ),
                  if (type == 'revenue') ...[
                    SizedBox(height: 16.h),
                    _buildTextField(
                      label: 'Description',
                      controller: entry['description']!,
                      hintText: 'Optionnel',
                    ),
                  ],
                  if (type == 'expense') ...[
                    SizedBox(height: 16.h),
                    _buildTextField(
                      label: 'Catégorie',
                      controller: entry['category']!,
                      hintText: 'Ex: Marketing',
                    ),
                    SizedBox(height: 16.h),
                    _buildTextField(
                      label: 'Description',
                      controller: entry['description']!,
                      hintText: 'Optionnel',
                    ),
                  ],
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: const Icon(Icons.remove_circle_outline,
                          color: AppColors.error),
                      onPressed: entries.length > 1
                          ? () => removeFunction(index)
                          : null,
                    ),
                  ),
                ],
              ),
            ),
          )
              .animate()
              .fadeIn()
              .slideY(begin: 0.3, delay: Duration(milliseconds: index * 100)),
        );
      }),
      Padding(
        padding: EdgeInsets.only(top: 8.h),
        child: CustomButton(
          text: 'Ajouter une entrée',
          onPressed: addFunction,
        ),
      ),
    ];
  }

  Widget _buildSummaryCard(
      Map<String, TextEditingController> entry, String type, int index) {
    return Card(
      // elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: const BorderSide(color: AppColors.gray200),
      ),
      margin: EdgeInsets.only(bottom: 12.h),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Année: ${entry['year']!.text}',
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                IconButton(
                  icon: const Icon(Icons.edit, color: AppColors.primary),
                  onPressed: () => _tabController.animateTo(1),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Text('Montant: ${entry['amount']!.text}'),
            if (type == 'revenue' && entry['description']!.text.isNotEmpty)
              Text('Description: ${entry['description']!.text}'),
            if (type == 'expense') ...[
              if (entry['category']!.text.isNotEmpty)
                Text('Catégorie: ${entry['category']!.text}'),
              if (entry['description']!.text.isNotEmpty)
                Text('Description: ${entry['description']!.text}'),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    String? hintText,
    int? maxLines,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        CustomTextField(
          controller: controller,
          hintText: hintText,
          maxLines: maxLines,
          // keyboardType: keyboardType,
          validator: validator,
          onChanged: (value) {
            setState(() {});
          },
        ),
      ],
    );
  }

  void _submit() async {
    if (_formKey.currentState == null || !_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Veuillez remplir tous les champs correctement.'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    final data = {
      if (_revenueEntries.isNotEmpty)
        'revenue': _revenueEntries
            .map((entry) => {
                  'year': int.tryParse(entry['year']!.text),
                  'amount': double.tryParse(entry['amount']!.text),
                  'description': entry['description']!.text,
                })
            .toList(),
      if (_expenseEntries.isNotEmpty)
        'expenses': _expenseEntries
            .map((entry) => {
                  'year': int.tryParse(entry['year']!.text),
                  'amount': double.tryParse(entry['amount']!.text),
                  'category': entry['category']!.text,
                  'description': entry['description']!.text,
                })
            .toList(),
      if (_profitEntries.isNotEmpty)
        'profit': _profitEntries
            .map((entry) => {
                  'year': int.tryParse(entry['year']!.text),
                  'amount': double.tryParse(entry['amount']!.text),
                })
            .toList(),
      if (_breakEvenMonthsController.text.isNotEmpty ||
          _breakEvenDescController.text.isNotEmpty)
        'breakEvenPoint': {
          if (_breakEvenMonthsController.text.isNotEmpty)
            'months': int.parse(_breakEvenMonthsController.text),
          if (_breakEvenDescController.text.isNotEmpty)
            'description': _breakEvenDescController.text,
        },
    }..removeWhere((key, value) =>
        value == null ||
        (value is List && value.isEmpty) ||
        (value is Map && value.isEmpty));

    await ref
        .read(projectProvider.notifier)
        .updateProject(widget.projectId, data)
        .then((_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Informations financières mises à jour avec succès'),
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
