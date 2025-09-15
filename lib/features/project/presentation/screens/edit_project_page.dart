// import 'package:find_invest_mobile/core/theme/app_colors.dart';
// import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
// import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
// import 'package:find_invest_mobile/features/project_category/domain/entities/project_category_entity.dart';
// import 'package:find_invest_mobile/features/project_category/presentation/providers/project_category_provider.dart';
// import 'package:find_invest_mobile/shared/widgets/custom_dropdown.dart';
// import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
// import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_text_field.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:go_router/go_router.dart';
// import 'package:find_invest_mobile/shared/widgets/custom_button.dart';

// class EditProjectPage extends ConsumerStatefulWidget {
//   final String projectId;

//   const EditProjectPage({
//     super.key,
//     required this.projectId,
//   });

//   @override
//   ConsumerState<EditProjectPage> createState() => _EditProjectPageState();
// }

// class _EditProjectPageState extends ConsumerState<EditProjectPage> {
//   final _formKey = GlobalKey<FormState>();

//   // Form controllers
//   final _titleController = TextEditingController();
//   final _shortDescriptionController = TextEditingController();
//   final _descriptionController = TextEditingController();
//   final _fundingGoalController = TextEditingController();
//   final _minimumInvestmentController = TextEditingController();
//   final _maximumInvestmentController = TextEditingController();
//   final _durationController = TextEditingController();
//   final _countryController = TextEditingController();
//   final _regionController = TextEditingController();
//   final _cityController = TextEditingController();

//   // Form data
//   ProjectCategoryEntity? _selectedCategory;
//   List<String> _tags = [];
//   String _fundingType = 'investment';
//   String _riskLevel = 'low';
//   String _priority = 'medium';
//   String _period = 'monthly';
//   String _status = 'draft';
//   Map<String, dynamic> _expectedReturn = {};

//   ProjectEntity? _originalProject;
//   bool _hasChanges = false;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       ref.read(projectProvider.notifier).fetchProjectById(widget.projectId);
//       ref.read(projectCategoryProvider.notifier).fetchCategories();
//     });
//   }

//   @override
//   void dispose() {
//     _titleController.dispose();
//     _shortDescriptionController.dispose();
//     _descriptionController.dispose();
//     _fundingGoalController.dispose();
//     _minimumInvestmentController.dispose();
//     _maximumInvestmentController.dispose();
//     _durationController.dispose();
//     _countryController.dispose();
//     _regionController.dispose();
//     _cityController.dispose();
//     super.dispose();
//   }

//   void _populateForm(ProjectEntity project) {
//     if (_originalProject != null) return; // Already populated

//     _originalProject = project;
//     _titleController.text = project.title;
//     _shortDescriptionController.text = project.shortDescription;
//     _descriptionController.text = project.description;
//     _fundingGoalController.text = project.fundingGoal.toString();
//     _minimumInvestmentController.text = project.minimumInvestment.toString();
//     _maximumInvestmentController.text =
//         project.maximumInvestment?.toString() ?? '';
//     _durationController.text = project.durationMonths?.toString() ?? '';
//     _countryController.text = project.location['country'] ?? '';
//     _regionController.text = project.location['region'] ?? '';
//     _cityController.text = project.location['city'] ?? '';

//     _tags = List.from(project.tags);
//     _fundingType = project.fundingType;
//     _riskLevel = project.riskLevel;
//     _priority = project.priority;
//     _status = project.status;
//     _expectedReturn = Map.from(project.expectedReturn ?? {});
//     _period = _expectedReturn['period'] ?? "monthly";

//     // Find and set the selected category
//     final categories = ref.read(projectCategoryProvider).categories;
//     _selectedCategory = categories.firstWhere(
//       (cat) => cat.id == project.category.id,
//       orElse: () => categories.first,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final projectState = ref.watch(projectProvider);
//     final categoryState = ref.watch(projectCategoryProvider);
//     final project = projectState.selectedProject;

//     if (projectState.isLoading && project == null) {
//       return const Scaffold(
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }

//     if (project == null) {
//       return Scaffold(
//         appBar: AppBar(title: const Text('Projet introuvable')),
//         body: const Center(
//           child: Text('Ce projet n\'existe pas ou a été supprimé.'),
//         ),
//       );
//     }

//     // Populate form with project data
//     _populateForm(project);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Modifier le projet'),
//         leading: IconButton(
//           icon: const Icon(Icons.close),
//           onPressed: () => _handleBack(),
//         ),
//         actions: [
//           TextButton(
//             onPressed: _hasChanges ? _saveChanges : null,
//             child: const Text('Enregistrer'),
//           ),
//         ],
//       ),
//       body: LoadingOverlay(
//         isLoading: projectState.isLoading,
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(16),
//           child: Form(
//             key: _formKey,
//             onChanged: () {
//               if (!_hasChanges) {
//                 setState(() {
//                   _hasChanges = true;
//                 });
//               }
//             },
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Status selector
//                 _buildStatusSelector().animate().fadeIn().slideX(begin: -0.3),

//                 const SizedBox(height: 24),

//                 // Basic information section
//                 _buildSectionHeader('Informations de base'),
//                 const SizedBox(height: 16),

//                 CustomTextField(
//                   controller: _titleController,
//                   label: 'Titre du projet',
//                   hintText: 'Entrez le titre de votre projet',
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Le titre est requis';
//                     }
//                     if (value.length < 5) {
//                       return 'Le titre doit contenir au moins 5 caractères';
//                     }
//                     return null;
//                   },
//                 ).animate(delay: 100.ms).fadeIn().slideX(begin: -0.3),

//                 const SizedBox(height: 16),

//                 CustomTextField(
//                   controller: _shortDescriptionController,
//                   label: 'Description courte',
//                   hintText: 'Résumé en quelques mots',
//                   maxLines: 2,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'La description courte est requise';
//                     }
//                     return null;
//                   },
//                 ).animate(delay: 200.ms).fadeIn().slideX(begin: -0.3),

//                 const SizedBox(height: 16),

//                 CustomDropdown<ProjectCategoryEntity>(
//                   label: 'Catégorie',
//                   hint: 'Sélectionnez une catégorie',
//                   value: _selectedCategory,
//                   items: categoryState.categories,
//                   itemBuilder: (category) => Text(category.name),
//                   onChanged: (category) {
//                     setState(() {
//                       _selectedCategory = category;
//                       _hasChanges = true;
//                     });
//                   },
//                   validator: (value) {
//                     if (value == null) {
//                       return 'Veuillez sélectionner une catégorie';
//                     }
//                     return null;
//                   },
//                 ).animate(delay: 300.ms).fadeIn().slideX(begin: -0.3),

//                 const SizedBox(height: 16),

//                 CustomTextField(
//                   controller: _descriptionController,
//                   label: 'Description détaillée',
//                   hintText: 'Décrivez votre projet en détail',
//                   maxLines: 5,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'La description détaillée est requise';
//                     }
//                     if (value.length < 50) {
//                       return 'La description doit contenir au moins 50 caractères';
//                     }
//                     return null;
//                   },
//                 ).animate(delay: 400.ms).fadeIn().slideX(begin: -0.3),

//                 const SizedBox(height: 16),

//                 _buildTagsInput()
//                     .animate(delay: 500.ms)
//                     .fadeIn()
//                     .slideX(begin: -0.3),

//                 const SizedBox(height: 32),

//                 // Funding section
//                 _buildSectionHeader('Financement'),
//                 const SizedBox(height: 16),

//                 CustomTextField(
//                   controller: _fundingGoalController,
//                   label: 'Objectif de financement (XAF)',
//                   hintText: 'Montant souhaité',
//                   keyboardType: TextInputType.number,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'L\'objectif de financement est requis';
//                     }
//                     final amount = double.tryParse(value);
//                     if (amount == null || amount <= 0) {
//                       return 'Veuillez entrer un montant valide';
//                     }
//                     return null;
//                   },
//                 ).animate(delay: 600.ms).fadeIn().slideX(begin: -0.3),

//                 const SizedBox(height: 16),

//                 Row(
//                   children: [
//                     Expanded(
//                       child: CustomTextField(
//                         controller: _minimumInvestmentController,
//                         label: 'Investissement minimum (XAF)',
//                         hintText: 'Montant minimum',
//                         keyboardType: TextInputType.number,
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Requis';
//                           }
//                           final amount = double.tryParse(value);
//                           if (amount == null || amount <= 0) {
//                             return 'Montant invalide';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     const SizedBox(width: 16),
//                     Expanded(
//                       child: CustomTextField(
//                         controller: _maximumInvestmentController,
//                         label: 'Investissement maximum (XAF)',
//                         hintText: 'Montant maximum (optionnel)',
//                         keyboardType: TextInputType.number,
//                       ),
//                     ),
//                   ],
//                 ).animate(delay: 700.ms).fadeIn().slideX(begin: -0.3),

//                 const SizedBox(height: 16),

//                 _buildFundingTypeSelector()
//                     .animate(delay: 800.ms)
//                     .fadeIn()
//                     .slideX(begin: -0.3),

//                 const SizedBox(height: 16),

//                 _buildRiskLevelSelector()
//                     .animate(delay: 900.ms)
//                     .fadeIn()
//                     .slideX(begin: -0.3),

//                 const SizedBox(height: 32),

//                 // Details section
//                 _buildSectionHeader('Détails supplémentaires'),
//                 const SizedBox(height: 16),

//                 CustomTextField(
//                   controller: _countryController,
//                   label: 'Pays',
//                   hintText: 'Ex: Cameroun',
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Le pays est requis';
//                     }
//                     return null;
//                   },
//                 ).animate(delay: 1000.ms).fadeIn().slideX(begin: -0.3),

//                 const SizedBox(height: 16),

//                 Row(
//                   children: [
//                     Expanded(
//                       child: CustomTextField(
//                         controller: _regionController,
//                         label: 'Région',
//                         hintText: 'Ex: Centre',
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'La région est requise';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     const SizedBox(width: 16),
//                     Expanded(
//                       child: CustomTextField(
//                         controller: _cityController,
//                         label: 'Ville',
//                         hintText: 'Ex: Yaoundé',
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'La ville est requise';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                   ],
//                 ).animate(delay: 1100.ms).fadeIn().slideX(begin: -0.3),

//                 const SizedBox(height: 16),

//                 CustomTextField(
//                   controller: _durationController,
//                   label: 'Durée du projet (mois)',
//                   hintText: 'Durée estimée',
//                   keyboardType: TextInputType.number,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'La durée est requise';
//                     }
//                     final duration = int.tryParse(value);
//                     if (duration == null || duration <= 0) {
//                       return 'Veuillez entrer une durée valide';
//                     }
//                     return null;
//                   },
//                 ).animate(delay: 1100.ms).fadeIn().slideX(begin: -0.3),

//                 const SizedBox(height: 16),

//                 _buildPrioritySelector()
//                     .animate(delay: 1200.ms)
//                     .fadeIn()
//                     .slideX(begin: -0.3),

//                 const SizedBox(height: 24),

//                 _buildExpectedReturnSection()
//                     .animate(delay: 1300.ms)
//                     .fadeIn()
//                     .slideX(begin: -0.3),

//                 const SizedBox(height: 24),

//                 _buildPeriodSelector()
//                     .animate(delay: 1200.ms)
//                     .fadeIn()
//                     .slideX(begin: -0.3),

//                 const SizedBox(height: 32),

//                 // Action buttons
//                 Row(
//                   children: [
//                     Expanded(
//                       child: OutlinedButton(
//                         onPressed: () => _handleBack(),
//                         child: const Text('Annuler'),
//                       ),
//                     ),
//                     const SizedBox(width: 16),
//                     Expanded(
//                       child: CustomButton(
//                         onPressed: _hasChanges ? _saveChanges : null,
//                         text: 'Enregistrer',
//                       ),
//                     ),
//                   ],
//                 ).animate(delay: 1400.ms).fadeIn().slideY(begin: 0.3),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSectionHeader(String title) {
//     return Text(
//       title,
//       style: Theme.of(context).textTheme.titleLarge?.copyWith(
//             fontWeight: FontWeight.bold,
//             color: AppColors.primary,
//           ),
//     );
//   }

//   Widget _buildStatusSelector() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Statut du projet',
//           style: Theme.of(context).textTheme.titleMedium?.copyWith(
//                 fontWeight: FontWeight.bold,
//               ),
//         ),
//         const SizedBox(height: 12),
//         DropdownButtonFormField<String>(
//           value: _status,
//           decoration: const InputDecoration(
//             border: OutlineInputBorder(),
//           ),
//           items: const [
//             DropdownMenuItem(value: 'draft', child: Text('Brouillon')),
//             // DropdownMenuItem(value: 'active', child: Text('Actif')),
//             DropdownMenuItem(value: 'paused', child: Text('En pause')),
//             // DropdownMenuItem(value: 'completed', child: Text('Terminé')),
//             DropdownMenuItem(value: 'cancelled', child: Text('Annulé')),
//           ],
//           onChanged: (value) {
//             setState(() {
//               _status = value!;
//               _hasChanges = true;
//             });
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildTagsInput() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Tags',
//           style: Theme.of(context).textTheme.labelLarge,
//         ),
//         const SizedBox(height: 8),
//         Wrap(
//           spacing: 8,
//           runSpacing: 8,
//           children: [
//             ..._tags.map((tag) => Chip(
//                   label: Text(tag),
//                   onDeleted: () {
//                     setState(() {
//                       _tags.remove(tag);
//                       _hasChanges = true;
//                     });
//                   },
//                 )),
//             ActionChip(
//               label: const Text('+ Ajouter'),
//               onPressed: _showAddTagDialog,
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildFundingTypeSelector() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Type de financement',
//           style: Theme.of(context).textTheme.labelLarge,
//         ),
//         const SizedBox(height: 8),
//         Row(
//           children: [
//             Expanded(
//               child: RadioListTile<String>(
//                 title: const Text('Investissement'),
//                 value: 'investment',
//                 groupValue: _fundingType,
//                 onChanged: (value) {
//                   setState(() {
//                     _fundingType = value!;
//                     _hasChanges = true;
//                   });
//                 },
//               ),
//             ),
//             Expanded(
//               child: RadioListTile<String>(
//                 title: const Text('Prêt'),
//                 value: 'loan',
//                 groupValue: _fundingType,
//                 onChanged: (value) {
//                   setState(() {
//                     _fundingType = value!;
//                     _hasChanges = true;
//                   });
//                 },
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildRiskLevelSelector() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Niveau de risque',
//           style: Theme.of(context).textTheme.labelLarge,
//         ),
//         const SizedBox(height: 8),
//         SegmentedButton<String>(
//           segments: const [
//             ButtonSegment(value: 'low', label: Text('Faible')),
//             ButtonSegment(value: 'medium', label: Text('Moyen')),
//             ButtonSegment(value: 'high', label: Text('Élevé')),
//           ],
//           selected: {_riskLevel},
//           onSelectionChanged: (Set<String> selection) {
//             setState(() {
//               _riskLevel = selection.first;
//               _hasChanges = true;
//             });
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildPrioritySelector() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Priorité',
//           style: Theme.of(context).textTheme.labelLarge,
//         ),
//         const SizedBox(height: 8),
//         DropdownButtonFormField<String>(
//           value: _priority,
//           decoration: const InputDecoration(
//             border: OutlineInputBorder(),
//           ),
//           items: const [
//             DropdownMenuItem(value: 'low', child: Text('Basse')),
//             DropdownMenuItem(value: 'medium', child: Text('Moyenne')),
//             DropdownMenuItem(value: 'high', child: Text('Haute')),
//             DropdownMenuItem(value: 'urgent', child: Text('Urgente')),
//           ],
//           onChanged: (value) {
//             setState(() {
//               _priority = value!;
//               _hasChanges = true;
//             });
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildPeriodSelector() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Period',
//           style: Theme.of(context).textTheme.labelLarge,
//         ),
//         const SizedBox(height: 8),
//         DropdownButtonFormField<String>(
//           value: _period,
//           decoration: const InputDecoration(
//             border: OutlineInputBorder(),
//           ),
//           items: const [
//             DropdownMenuItem(value: 'monthly', child: Text('Mensuel ')),
//             DropdownMenuItem(value: 'quarterly', child: Text('Trimestriel')),
//             DropdownMenuItem(value: 'annually', child: Text('Annuel ')),
//           ],
//           onChanged: (value) {
//             setState(() {
//               _period = value!;
//               _hasChanges = true;
//             });
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildExpectedReturnSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Retour sur investissement attendu',
//           style: Theme.of(context).textTheme.labelLarge,
//         ),
//         const SizedBox(height: 8),
//         Column(
//           children: [
//             TextFormField(
//               initialValue: _expectedReturn['percentage']?.toString() ?? '',
//               decoration: const InputDecoration(
//                 labelText: 'Pourcentage (%)',
//                 border: OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.number,
//               onChanged: (value) {
//                 _expectedReturn['percentage'] = double.tryParse(value);
//                 _hasChanges = true;
//               },
//             ),
//           ],
//         )
//       ],
//     );
//   }

//   void _showAddTagDialog() {
//     final controller = TextEditingController();
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Ajouter un tag'),
//         content: TextField(
//           controller: controller,
//           decoration: const InputDecoration(
//             hintText: 'Entrez un tag',
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text('Annuler'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               if (controller.text.isNotEmpty) {
//                 setState(() {
//                   _tags.add(controller.text);
//                   _hasChanges = true;
//                 });
//                 Navigator.pop(context);
//               }
//             },
//             child: const Text('Ajouter'),
//           ),
//         ],
//       ),
//     );
//   }

//   void _handleBack() {
//     if (_hasChanges) {
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: const Text('Modifications non sauvegardées'),
//           content: const Text(
//               'Vous avez des modifications non sauvegardées. Voulez-vous les perdre ?'),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text('Annuler'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 context.pop();
//               },
//               child: const Text('Quitter sans sauvegarder'),
//             ),
//           ],
//         ),
//       );
//     } else {
//       context.pop();
//     }
//   }

//   Future<void> _saveChanges() async {
//     if (!_formKey.currentState!.validate()) return;

//     _expectedReturn['period'] = _period;
//     final projectData = {
//       'title': _titleController.text,
//       'description': _descriptionController.text,
//       'shortDescription': _shortDescriptionController.text,
//       'category': _selectedCategory?.id,
//       'tags': _tags,
//       'fundingGoal': double.tryParse(_fundingGoalController.text) ?? 0,
//       'minimumInvestment':
//           double.tryParse(_minimumInvestmentController.text) ?? 0,
//       'maximumInvestment': _maximumInvestmentController.text.isNotEmpty
//           ? double.tryParse(_maximumInvestmentController.text)
//           : null,
//       'fundingType': _fundingType,
//       'riskLevel': _riskLevel,
//       'priority': _priority,
//       'status': _status,
//       'durationMonths': int.tryParse(_durationController.text) ?? 0,
//       'location': {
//         'country': _countryController.text,
//         'region': _regionController.text,
//         'city': _cityController.text,
//       },
//       'expectedReturn': _expectedReturn,
//     };

//     await ref
//         .read(projectProvider.notifier)
//         .update(widget.projectId, projectData);

//     final state = ref.read(projectProvider);
//     if (state.errorMessage == null) {
//       setState(() {
//         _hasChanges = false;
//       });
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Projet mis à jour avec succès !'),
//             backgroundColor: AppColors.success,
//           ),
//         );
//         context.pop();
//       }
//     } else {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Erreur: ${state.errorMessage}'),
//             backgroundColor: AppColors.error,
//           ),
//         );
//       }
//     }
//   }
// }
