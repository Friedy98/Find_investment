// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';
// import 'package:find_invest_mobile/core/theme/app_colors.dart';
// import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
// // import 'package:find_invest_mobile/features/auth/presentation/widgets/auth_message_modal.dart';
// import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
// import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_text_field.dart';
// import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';

// class AddProjectScreen extends ConsumerStatefulWidget {
//   const AddProjectScreen({super.key});

//   @override
//   ConsumerState<AddProjectScreen> createState() => _AddProjectScreenState();
// }

// class _AddProjectScreenState extends ConsumerState<AddProjectScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _titleController = TextEditingController();
//   final _descriptionController = TextEditingController();
//   final _fundingGoalController = TextEditingController();
//   final _categoryController = TextEditingController();
//   final _locationController = TextEditingController();

//   @override
//   void dispose() {
//     _titleController.dispose();
//     _descriptionController.dispose();
//     _fundingGoalController.dispose();
//     _categoryController.dispose();
//     _locationController.dispose();
//     super.dispose();
//   }

//   Future<void> _handleAddProject() async {
//     print('AddProjectScreen: handleAddProject called');
//     if (!_formKey.currentState!.validate()) return;

//     final projectData = {
//       'title': _titleController.text.trim(),
//       'description': _descriptionController.text.trim(),
//       'fundingGoal': double.tryParse(_fundingGoalController.text.trim()) ?? 0.0,
//       'category': _categoryController.text.trim(),
//       'location': _locationController.text.trim(),
//       'owner': ref.read(authProvider).user?.id,
//     };

//     await ref.read(projectProvider.notifier).create(projectData);

//     // if (mounted) {
//     //   final projectState = ref.read(projectProvider);
//     //   if (projectState.error != null) {
//     //     showDialog(
//     //       context: context,
//     //       builder: (context) => AuthMessageModal(
//     //         title: 'Add Project Error',
//     //         message: projectState.error!,
//     //         code: projectState.error == 'Failed to create project' ? 'UNKNOWN_ERROR' : null,
//     //       ),
//     //     );
//     //   } else {
//     //     showDialog(
//     //       context: context,
//     //       builder: (context) => AuthMessageModal(
//     //         title: 'Success',
//     //         message: 'Project created successfully!',
//     //         isSuccess: true,
//     //         onClose: () => context.go('/project-owner/home'),
//     //       ),
//     //     );
//     //   }
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('AddProjectScreen build');
//     final projectState = ref.watch(projectProvider);

//     return Scaffold(
//       backgroundColor: AppColors.background,
//       appBar: AppBar(
//         backgroundColor: AppColors.cardBackground,
//         elevation: 0,
//         leading: IconButton(
//           icon:
//               Icon(Icons.arrow_back, size: 24.sp, color: AppColors.textPrimary),
//           onPressed: () => context.go('/project-owner/home'),
//         ),
//         title: Text(
//           'Add Project',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 20.sp,
//             fontWeight: FontWeight.bold,
//             color: AppColors.textPrimary,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.w),
//         child: Container(
//           padding: EdgeInsets.all(16.w),
//           decoration: BoxDecoration(
//             color: AppColors.cardBackground,
//             borderRadius: BorderRadius.circular(16.r),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.08),
//                 blurRadius: 12.r,
//                 offset: Offset(0, 4.h),
//               ),
//             ],
//           ),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(12.w),
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     gradient: LinearGradient(
//                       colors: [AppColors.primary, AppColors.primaryLight],
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                     ),
//                   ),
//                   child: Icon(
//                     Icons.work,
//                     size: 48.sp,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 24.h),
//                 Text(
//                   'Create New Project',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.textPrimary,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 8.h),
//                 Text(
//                   'Fill in the details to add your project',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 16.sp,
//                     color: AppColors.textSecondary,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 32.h),
//                 CustomTextField(
//                   controller: _titleController,
//                   label: 'Project Title',
//                   hintText: 'Enter project title',
//                   keyboardType: TextInputType.text,
//                   textInputAction: TextInputAction.next,
//                   prefixIcon: Icons.title,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a project title';
//                     }
//                     return null;
//                   },
//                   onChanged: (value) => print('Project Title input: $value'),
//                 ),
//                 SizedBox(height: 16.h),
//                 CustomTextField(
//                   controller: _descriptionController,
//                   label: 'Description',
//                   hintText: 'Describe your project',
//                   keyboardType: TextInputType.multiline,
//                   maxLines: 4,
//                   textInputAction: TextInputAction.next,
//                   prefixIcon: Icons.description,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a description';
//                     }
//                     return null;
//                   },
//                   onChanged: (value) => print('Description input: $value'),
//                 ),
//                 SizedBox(height: 16.h),
//                 CustomTextField(
//                   controller: _fundingGoalController,
//                   label: 'Funding Goal',
//                   hintText: 'Enter funding goal (e.g., 10000)',
//                   keyboardType: TextInputType.number,
//                   textInputAction: TextInputAction.next,
//                   prefixIcon: Icons.attach_money,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a funding goal';
//                     }
//                     if (double.tryParse(value) == null ||
//                         double.parse(value) <= 0) {
//                       return 'Please enter a valid funding goal';
//                     }
//                     return null;
//                   },
//                   onChanged: (value) => print('Funding Goal input: $value'),
//                 ),
//                 SizedBox(height: 16.h),
//                 CustomTextField(
//                   controller: _categoryController,
//                   label: 'Category',
//                   hintText: 'Enter project category',
//                   keyboardType: TextInputType.text,
//                   textInputAction: TextInputAction.next,
//                   prefixIcon: Icons.category,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a category';
//                     }
//                     return null;
//                   },
//                   onChanged: (value) => print('Category input: $value'),
//                 ),
//                 SizedBox(height: 16.h),
//                 CustomTextField(
//                   controller: _locationController,
//                   label: 'Location',
//                   hintText: 'Enter project location',
//                   keyboardType: TextInputType.text,
//                   textInputAction: TextInputAction.done,
//                   prefixIcon: Icons.location_on,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a location';
//                     }
//                     return null;
//                   },
//                   onChanged: (value) => print('Location input: $value'),
//                 ),
//                 SizedBox(height: 24.h),
//                 CustomButton(
//                   text: 'Create Project',
//                   onPressed: _handleAddProject,
//                   isLoading: projectState.isLoading,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
