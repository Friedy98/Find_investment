// import 'package:find_invest_mobile/core/theme/app_colors.dart';
// import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ProjectStatsCard extends StatelessWidget {
//   final ProjectEntity project;

//   const ProjectStatsCard({
//     super.key,
//     required this.project,
//   }); 

//   @override
//   Widget build(BuildContext context) {
//     final progress = project.fundingGoal > 0
//         ? (project.currentFunding / project.fundingGoal).clamp(0.0, 1.0)
//         : 0.0;

//     final progressPercentage = (progress * 100).toInt();
//     final remainingAmount = project.fundingGoal - project.currentFunding;
//     final investorCount = 0; // TODO: Get actual investor count

//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             AppColors.primary.withOpacity(0.05),
//             AppColors.primary.withOpacity(0.02),
//           ],
//         ),
//         borderRadius: BorderRadius.circular(20.r),
//         border: Border.all(
//           color: AppColors.primary.withOpacity(0.1),
//           width: 1,
//         ),
//       ),
//       child: Column(
//         children: [
//           // Header with main funding info
//           _buildFundingHeader(context, progress, progressPercentage),

//           // Progress visualization
//           _buildProgressSection(context, progress, progressPercentage),

//           // Stats grid
//           _buildStatsGrid(context, remainingAmount, investorCount),

//           // Investment range
//           _buildInvestmentRange(context),
//         ],
//       ),
//     );
//   }

//   Widget _buildFundingHeader(
//       BuildContext context, double progress, int progressPercentage) {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Funding Progress',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.w600,
//                       color: AppColors.textPrimary,
//                     ),
//                   ),
//                   SizedBox(height: 4.h),
//                   Text(
//                     'Current Status',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 12.sp,
//                       color: AppColors.textSecondary,
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//                 decoration: BoxDecoration(
//                   color: _getProgressColor(progress).withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(20.r),
//                   border: Border.all(
//                     color: _getProgressColor(progress).withOpacity(0.3),
//                   ),
//                 ),
//                 child: Text(
//                   '$progressPercentage%',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w700,
//                     color: _getProgressColor(progress),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 16.h),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(
//                 _formatCurrency(project.currentFunding),
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 28.sp,
//                   fontWeight: FontWeight.w800,
//                   color: AppColors.primary,
//                 ),
//               ),
//               SizedBox(width: 8.w),
//               Padding(
//                 padding: EdgeInsets.only(bottom: 4.h),
//                 child: Text(
//                   project.currency,
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w600,
//                     color: AppColors.textSecondary,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 4.h),
//           Row(
//             children: [
//               Text(
//                 'of ',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14.sp,
//                   color: AppColors.textSecondary,
//                 ),
//               ),
//               Text(
//                 '${_formatCurrency(project.fundingGoal)} ${project.currency}',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.textPrimary,
//                 ),
//               ),
//               Text(
//                 ' goal',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14.sp,
//                   color: AppColors.textSecondary,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildProgressSection(
//       BuildContext context, double progress, int progressPercentage) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20.w),
//       child: Column(
//         children: [
//           // Circular progress with linear progress
//           Row(
//             children: [
//               // Circular progress indicator
//               SizedBox(
//                 width: 60.w,
//                 height: 60.h,
//                 child: Stack(
//                   children: [
//                     SizedBox(
//                       width: 60.w,
//                       height: 60.h,
//                       child: CircularProgressIndicator(
//                         value: progress,
//                         strokeWidth: 6.w,
//                         backgroundColor: AppColors.accent.withOpacity(0.3),
//                         valueColor: AlwaysStoppedAnimation<Color>(
//                             _getProgressColor(progress)),
//                       ),
//                     ),
//                     Center(
//                       child: Icon(
//                         Icons.trending_up,
//                         color: _getProgressColor(progress),
//                         size: 24.sp,
//                       ),
//                     ),
//                   ],
//                 ),
//               ).animate().scale(delay: 300.ms, duration: 800.ms),

//               SizedBox(width: 16.w),

//               // Linear progress with segments
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Progress',
//                           style: TextStyle(
//                             fontFamily: 'Poppins',
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w500,
//                             color: AppColors.textSecondary,
//                           ),
//                         ),
//                         Text(
//                           _getProgressLabel(progress),
//                           style: TextStyle(
//                             fontFamily: 'Poppins',
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w600,
//                             color: _getProgressColor(progress),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 8.h),
//                     Container(
//                       height: 8.h,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(4.r),
//                         color: AppColors.accent.withOpacity(0.3),
//                       ),
//                       child: Stack(
//                         children: [
//                           Container(
//                             width: double.infinity,
//                             height: 8.h,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(4.r),
//                               color: AppColors.accent.withOpacity(0.3),
//                             ),
//                           ),
//                           AnimatedContainer(
//                             duration: const Duration(milliseconds: 1500),
//                             curve: Curves.easeOutCubic,
//                             width: (MediaQuery.of(context).size.width - 112.w) *
//                                 progress,
//                             height: 8.h,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(4.r),
//                               gradient: LinearGradient(
//                                 colors: [
//                                   _getProgressColor(progress),
//                                   _getProgressColor(progress).withOpacity(0.8),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),

//           SizedBox(height: 16.h),

//           // Milestone indicators
//           _buildMilestones(progress),
//         ],
//       ),
//     );
//   }

//   Widget _buildMilestones(double progress) {
//     final milestones = [0.25, 0.5, 0.75, 1.0];

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: milestones.map((milestone) {
//         final isReached = progress >= milestone;
//         final isNext = !isReached && progress >= (milestone - 0.25);

//         return Column(
//           children: [
//             Container(
//               width: 12.w,
//               height: 12.h,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: isReached
//                     ? _getProgressColor(progress)
//                     : isNext
//                         ? _getProgressColor(progress).withOpacity(0.3)
//                         : AppColors.accent.withOpacity(0.3),
//                 border: Border.all(
//                   color: isReached || isNext
//                       ? _getProgressColor(progress)
//                       : AppColors.accent.withOpacity(0.5),
//                   width: 2,
//                 ),
//               ),
//               child: isReached
//                   ? Icon(
//                       Icons.check,
//                       size: 8.sp,
//                       color: Colors.white,
//                     )
//                   : null,
//             ),
//             SizedBox(height: 4.h),
//             Text(
//               '${(milestone * 100).toInt()}%',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 10.sp,
//                 fontWeight: FontWeight.w500,
//                 color: isReached
//                     ? _getProgressColor(progress)
//                     : AppColors.textSecondary,
//               ),
//             ),
//           ],
//         );
//       }).toList(),
//     );
//   }

//   Widget _buildStatsGrid(
//       BuildContext context, double remainingAmount, int investorCount) {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       child: Row(
//         children: [
//           Expanded(
//             child: _buildStatCard(
//               context,
//               icon: Icons.people_outline,
//               value: investorCount.toString(),
//               label: 'Investors',
//               color: AppColors.info,
//               trend: '+12%',
//               isPositive: true,
//             ),
//           ),
//           SizedBox(width: 12.w),
//           Expanded(
//             child: _buildStatCard(
//               context,
//               icon: Icons.schedule_outlined,
//               value: project.daysRemaining?.toString() ?? 'N/A',
//               label: 'Days Left',
//               color: AppColors.warning,
//               trend: null,
//               isPositive: null,
//             ),
//           ),
//           SizedBox(width: 12.w),
//           Expanded(
//             child: _buildStatCard(
//               context,
//               icon: Icons.trending_down,
//               value: _formatCurrency(remainingAmount),
//               label: 'Remaining',
//               color: AppColors.error,
//               trend: '-8%',
//               isPositive: false,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildStatCard(
//     BuildContext context, {
//     required IconData icon,
//     required String value,
//     required String label,
//     required Color color,
//     String? trend,
//     bool? isPositive,
//   }) {
//     return Container(
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: color.withOpacity(0.05),
//         borderRadius: BorderRadius.circular(16.r),
//         border: Border.all(
//           color: color.withOpacity(0.1),
//         ),
//       ),
//       child: Column(
//         children: [
//           Container(
//             width: 32.w,
//             height: 32.h,
//             decoration: BoxDecoration(
//               color: color.withOpacity(0.1),
//               borderRadius: BorderRadius.circular(8.r),
//             ),
//             child: Icon(
//               icon,
//               color: color,
//               size: 18.sp,
//             ),
//           ),
//           SizedBox(height: 8.h),
//           Text(
//             value,
//             style: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 16.sp,
//               fontWeight: FontWeight.w700,
//               color: AppColors.textPrimary,
//             ),
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//           SizedBox(height: 2.h),
//           Text(
//             label,
//             style: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 11.sp,
//               fontWeight: FontWeight.w500,
//               color: AppColors.textSecondary,
//             ),
//           ),
//           if (trend != null) ...[
//             SizedBox(height: 4.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   isPositive == true
//                       ? Icons.arrow_upward
//                       : Icons.arrow_downward,
//                   size: 10.sp,
//                   color:
//                       isPositive == true ? AppColors.success : AppColors.error,
//                 ),
//                 SizedBox(width: 2.w),
//                 Text(
//                   trend,
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 10.sp,
//                     fontWeight: FontWeight.w600,
//                     color: isPositive == true
//                         ? AppColors.success
//                         : AppColors.error,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ],
//       ),
//     )
//         .animate(delay: Duration(milliseconds: 100 * (label.hashCode % 5)))
//         .fadeIn()
//         .slideY(begin: 0.3);
//   }

//   Widget _buildInvestmentRange(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.fromLTRB(20.w, 0, 20.w, 20.w),
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             AppColors.primary.withOpacity(0.1),
//             AppColors.primary.withOpacity(0.05),
//           ],
//         ),
//         borderRadius: BorderRadius.circular(16.r),
//         border: Border.all(
//           color: AppColors.primary.withOpacity(0.2),
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Icon(
//                 Icons.account_balance_wallet_outlined,
//                 color: AppColors.primary,
//                 size: 20.sp,
//               ),
//               SizedBox(width: 8.w),
//               Text(
//                 'Investment Range',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.textPrimary,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 12.h),
//           Row(
//             children: [
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Minimum',
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         fontSize: 12.sp,
//                         color: AppColors.textSecondary,
//                       ),
//                     ),
//                     SizedBox(height: 2.h),
//                     Text(
//                       '${_formatCurrency(project.minimumInvestment)} ${project.currency}',
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.w700,
//                         color: AppColors.primary,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: 1.w,
//                 height: 30.h,
//                 color: AppColors.primary.withOpacity(0.3),
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Text(
//                       'Maximum',
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         fontSize: 12.sp,
//                         color: AppColors.textSecondary,
//                       ),
//                     ),
//                     SizedBox(height: 2.h),
//                     Text(
//                       project.maximumInvestment != null
//                           ? '${_formatCurrency(project.maximumInvestment!)} ${project.currency}'
//                           : 'No limit',
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.w700,
//                         color: AppColors.primary,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Color _getProgressColor(double progress) {
//     if (progress >= 1.0) return AppColors.success;
//     if (progress >= 0.75) return AppColors.info;
//     if (progress >= 0.5) return AppColors.primary;
//     if (progress >= 0.25) return AppColors.warning;
//     return AppColors.error;
//   }

//   String _getProgressLabel(double progress) {
//     if (progress >= 1.0) return 'Funded!';
//     if (progress >= 0.75) return 'Almost there';
//     if (progress >= 0.5) return 'Halfway';
//     if (progress >= 0.25) return 'Good start';
//     return 'Just started';
//   }

//   String _formatCurrency(double amount) {
//     if (amount >= 1000000) {
//       return '${(amount / 1000000).toStringAsFixed(1)}M';
//     } else if (amount >= 1000) {
//       return '${(amount / 1000).toStringAsFixed(1)}K';
//     }
//     return amount.toStringAsFixed(0);
//   }
// }
