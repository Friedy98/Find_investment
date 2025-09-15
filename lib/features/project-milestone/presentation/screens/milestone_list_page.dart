// import 'package:find_invest_mobile/features/project-milestone/presentation/providers/project_milestone_provider.dart';
// import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:find_invest_mobile/core/theme/app_colors.dart';
// import 'package:find_invest_mobile/features/project_milestone/domain/entities/project_milestone_entity.dart';
// import 'package:find_invest_mobile/features/project_milestone/presentation/providers/project_milestone_provider.dart';
// import 'package:go_router/go_router.dart';
// import 'package:intl/intl.dart';

// class MilestoneListPage extends ConsumerStatefulWidget {
//   final String projectId;

//   const MilestoneListPage({super.key, required this.projectId});

//   @override
//   ConsumerState<MilestoneListPage> createState() => _MilestoneListPageState();
// }

// class _MilestoneListPageState extends ConsumerState<MilestoneListPage> {
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       ref.read(projectMilestoneProvider.notifier).fetchMilestones(projectId: widget.projectId);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final milestoneState = ref.watch(projectMilestoneProvider);

//     return Scaffold(
//       backgroundColor: AppColors.background,
//       appBar: AppBar(
//         backgroundColor: AppColors.cardBackground,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: AppColors.textPrimary, size: 24.sp),
//           onPressed: () => context.pop(),
//         ),
//         title: Text(
//           'Milestones',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 18.sp,
//             fontWeight: FontWeight.w600,
//             color: AppColors.textPrimary,
//           ),
//         ),
//       ),
//       body: LoadingOverlay(
//         isLoading: milestoneState.isLoading,
//         child: RefreshIndicator(
//           onRefresh: () => ref.read(projectMilestoneProvider.notifier).fetchMilestones(projectId: widget.projectId),
//           color: AppColors.primary,
//           child: milestoneState.milestones.isEmpty
//               ? _buildEmptyState('No milestones available')
//               : ListView.builder(
//                   padding: EdgeInsets.all(20.w),
//                   itemCount: milestoneState.milestones.length,
//                   itemBuilder: (context, index) {
//                     final milestone = milestoneState.milestones[index];
//                     return Container(
//                       margin: EdgeInsets.only(bottom: 16.h),
//                       child: Card(
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
//                         elevation: 2,
//                         child: Padding(
//                           padding: EdgeInsets.all(16.w),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Expanded(
//                                     child: Text(
//                                       milestone.title,
//                                       style: TextStyle(
//                                         fontFamily: 'Poppins',
//                                         fontSize: 16.sp,
//                                         fontWeight: FontWeight.w600,
//                                         color: AppColors.textPrimary,
//                                       ),
//                                     ),
//                                   ),
//                                   PopupMenuButton<String>(
//                                     icon: Icon(Icons.more_vert, size: 20.sp),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(12.r),
//                                     ),
//                                     onSelected: (value) => _handleMilestoneAction(value, milestone),
//                                     itemBuilder: (context) => [
//                                       PopupMenuItem(
//                                         value: 'edit',
//                                         child: Row(
//                                           children: [
//                                             Icon(Icons.edit_outlined, size: 18.sp),
//                                             SizedBox(width: 12.w),
//                                             const Text('Edit'),
//                                           ],
//                                         ),
//                                       ),
//                                       PopupMenuItem(
//                                         value: 'update_progress',
//                                         child: Row(
//                                           children: [
//                                             Icon(Icons.update, size: 18.sp),
//                                             SizedBox(width: 12.w),
//                                             const Text('Update Progress'),
//                                           ],
//                                         ),
//                                       ),
//                                       PopupMenuItem(
//                                         value: 'update_status',
//                                         child: Row(
//                                           children: [
//                                             Icon(Icons.change_circle_outlined, size: 18.sp),
//                                             SizedBox(width: 12.w),
//                                             const Text('Update Status'),
//                                           ],
//                                         ),
//                                       ),
//                                       PopupMenuItem(
//                                         value: 'add_deliverable',
//                                         child: Row(
//                                           children: [
//                                             Icon(Icons.add_box_outlined, size: 18.sp),
//                                             SizedBox(width: 12.w),
//                                             const Text('Add Deliverable'),
//                                           ],
//                                         ),
//                                       ),
//                                       PopupMenuItem(
//                                         value: 'delete',
//                                         child: Row(
//                                           children: [
//                                             Icon(Icons.delete_outline, color: AppColors.error, size: 18.sp),
//                                             SizedBox(width: 12.w),
//                                             const Text('Delete', style: TextStyle(color: AppColors.error)),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(height: 8.h),
//                               Text(
//                                 milestone.description ?? 'No description available',
//                                 style: TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontSize: 14.sp,
//                                   color: AppColors.textSecondary,
//                                   height: 1.5,
//                                 ),
//                               ),
//                               SizedBox(height: 8.h),
//                               Row(
//                                 children: [
//                                   _buildMiniChip('Due: ${DateFormat('dd/MM/yyyy').format(milestone.dueDate)}', AppColors.textSecondary),
//                                   SizedBox(width: 8.w),
//                                   _buildMiniChip(milestone.status.toUpperCase(), _getStatusColor(milestone.status)),
//                                 ],
//                               ),
//                               SizedBox(height: 8.h),
//                               LinearProgressIndicator(
//                                 value: milestone.progress / 100,
//                                 backgroundColor: AppColors.textTertiary.withOpacity(0.2),
//                                 valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
//                                 minHeight: 4.h,
//                                 borderRadius: BorderRadius.circular(4.r),
//                               ),
//                               SizedBox(height: 4.h),
//                               Text(
//                                 '${milestone.progress}% Complete',
//                                 style: TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontSize: 12.sp,
//                                   color: AppColors.textSecondary,
//                                 ),
//                               ),
//                               if (milestone.deliverables.isNotEmpty) ...[
//                                 SizedBox(height: 12.h),
//                                 Text(
//                                   'Deliverables',
//                                   style: TextStyle(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 14.sp,
//                                     fontWeight: FontWeight.w600,
//                                     color: AppColors.textPrimary,
//                                   ),
//                                 ),
//                                 SizedBox(height: 8.h),
//                                 Column(
//                                   children: milestone.deliverables.asMap().entries.map((entry) {
//                                     final index = entry.key;
//                                     final deliverable = entry.value;
//                                     return Container(
//                                       margin: EdgeInsets.only(bottom: 8.h),
//                                       padding: EdgeInsets.all(12.w),
//                                       decoration: BoxDecoration(
//                                         color: AppColors.cardBackground,
//                                         borderRadius: BorderRadius.circular(12.r),
//                                         border: Border.all(
//                                           color: AppColors.primary.withOpacity(0.2),
//                                         ),
//                                       ),
//                                       child: Row(
//                                         children: [
//                                           Icon(Icons.check_circle_outline, size: 20.sp, color: AppColors.success),
//                                           SizedBox(width: 12.w),
//                                           Expanded(
//                                             child: Text(
//                                               deliverable.name,
//                                               style: TextStyle(
//                                                 fontFamily: 'Poppins',
//                                                 fontSize: 14.sp,
//                                                 color: AppColors.textPrimary,
//                                               ),
//                                             ),
//                                           ),
//                                           IconButton(
//                                             icon: Icon(Icons.delete_outline, size: 20.sp, color: AppColors.error),
//                                             onPressed: () => _removeDeliverable(milestone.id, deliverable.name),
//                                           ),
//                                         ],
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ],
//                             ],
//                           ),
//                         ),
//                       );
//                     }).animate(delay: Duration(milliseconds: index * 100)).fadeIn().slideX(begin: 0.3);
//                   },
//                 ),
//               );
//             }
//           },
//         ),
//       );
//     );
//   }

//   Widget _buildMiniChip(String text, Color color) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//       decoration: BoxDecoration(
//         color: color.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(20.r),
//         border: Border.all(color: color.withOpacity(0.3)),
//       ),
//       child: Text(
//         text,
//         style: TextStyle(
//           fontFamily: 'Poppins',
//           fontSize: 12.sp,
//           color: color,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//     );
//   }

//   Color _getStatusColor(String status) {
//     switch (status.toLowerCase()) {
//       case 'completed':
//         return AppColors.success;
//       case 'in_progress':
//         return AppColors.warning;
//       case 'pending':
//         return AppColors.info;
//       case 'cancelled':
//         return AppColors.error;
//       default:
//         return AppColors.textTertiary;
//     }
//   }

//   Widget _buildModernCard({
//     required String title,
//     required IconData icon,
//     required Widget child,
//     Widget? action,
//   }) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColors.cardBackground,
//         borderRadius: BorderRadius.circular(16.r),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 10,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: EdgeInsets.all(16.w),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [
//                   AppColors.primary,
//                   AppColors.primaryLight,
//                 ],
//               ),
//               borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
//             ),
//             child: Row(
//               children: [
//                 Container(
//                   width: 40.w,
//                   height: 40.h,
//                   decoration: BoxDecoration(
//                     color: Colors.white.withOpacity(0.2),
//                     borderRadius: BorderRadius.circular(10.r),
//                   ),
//                   child: Icon(
//                     icon,
//                     color: Colors.white,
//                     size: 20.sp,
//                   ),
//                 ),
//                 SizedBox(width: 12.w),
//                 Expanded(
//                   child: Text(
//                     title,
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 if (action != null) action,
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(16.w),
//             child: child,
//           ),
//         ],
//       ),
//     );
//   }

//   void _removeDeliverable(String milestoneId, String deliverableId) {
//     // Assuming deliverableId is deliverable.name; adjust if it's an ID
//     ref.read(projectMilestoneProvider.notifier).removeDeliverable(milestoneId, deliverableId);
//   }
// }