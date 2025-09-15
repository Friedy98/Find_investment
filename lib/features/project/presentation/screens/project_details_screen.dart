// import 'package:find_invest_mobile/core/theme/app_colors.dart';
// import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
// import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
// import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
// import 'package:find_invest_mobile/features/project/presentation/widgets/project_stats_card.dart';
// import 'package:find_invest_mobile/features/project/presentation/widgets/project_team_card.dart';
// import 'package:find_invest_mobile/features/project/presentation/widgets/project_timeline_card.dart';
// import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:go_router/go_router.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ProjectDetailsPage extends ConsumerStatefulWidget {
//   final String projectId;

//   const ProjectDetailsPage({
//     super.key,
//     required this.projectId,
//   });

//   @override
//   ConsumerState<ProjectDetailsPage> createState() => _ProjectDetailsPageState();
// }

// class _ProjectDetailsPageState extends ConsumerState<ProjectDetailsPage>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   late ScrollController _scrollController;
//   bool _isAppBarCollapsed = false;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 6, vsync: this);
//     _scrollController = ScrollController();
//     _scrollController.addListener(_onScroll);
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       ref.read(projectProvider.notifier).fetchProjectById(widget.projectId);
//     });
//   }

//   void _onScroll() {
//     final isCollapsed = _scrollController.offset > 200;
//     if (isCollapsed != _isAppBarCollapsed) {
//       setState(() {
//         _isAppBarCollapsed = isCollapsed;
//       });
//     }
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final projectState = ref.watch(projectProvider);
//     final authState = ref.watch(authProvider);
//     final project = projectState.selectedProject;

//     if (projectState.isLoading && project == null) {
//       return const Scaffold(
//         backgroundColor: AppColors.background,
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }

//     if (project == null) {
//       return Scaffold(
//         backgroundColor: AppColors.background,
//         appBar: AppBar(
//           title: const Text('Project Not Found'),
//           backgroundColor: AppColors.cardBackground,
//         ),
//         body: const Center(
//           child: Text('This project does not exist or has been deleted.'),
//         ),
//       );
//     }

//     final isOwner = authState.user?.id == project.owner.id;

//     return Scaffold(
//       backgroundColor: AppColors.background,
//       body: LoadingOverlay(
//         isLoading: projectState.isLoading,
//         child: NestedScrollView(
//           controller: _scrollController,
//           headerSliverBuilder: (context, innerBoxIsScrolled) => [
//             _buildCustomSliverAppBar(project, isOwner),
//             _buildSliverTabBar(),
//           ],
//           body: TabBarView(
//             controller: _tabController,
//             children: [
//               _buildOverviewTab(project),
//               _buildDetailsTab(project),
//               _buildTimelineTab(project),
//               _buildTeamTab(project, isOwner),
//               _buildDocumentsTab(project),
//               _buildUpdatesTab(project),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: _buildFloatingActionButton(project, isOwner),
//     );
//   }

//   Widget _buildCustomSliverAppBar(ProjectEntity project, bool isOwner) {
//     final progress = project.fundingGoal > 0
//         ? (project.currentFunding / project.fundingGoal).clamp(0.0, 1.0)
//         : 0.0;

//     return SliverAppBar(
//       expandedHeight: 420.h,
//       pinned: true,
//       elevation: 0,
//       backgroundColor: AppColors.primary,
//       leading: Container(
//         margin: EdgeInsets.all(8.w),
//         decoration: BoxDecoration(
//           // color: AppColors.gray100.withOpacity(0.3),
//           borderRadius: BorderRadius.circular(12.r),
//           // backdropFilter: const ColorFilter.mode(Colors.white, BlendMode.overlay),
//         ),
//         child: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white, size: 20.sp),
//           onPressed: () => context.pop(),
//         ),
//       ),
//       actions: [
//         Container(
//           margin: EdgeInsets.all(8.w),
//           decoration: BoxDecoration(
//             // color: Colors.black.withOpacity(0.3),
//             borderRadius: BorderRadius.circular(12.r),
//           ),
//           child: isOwner
//               ? PopupMenuButton<String>(
//                   icon: Icon(Icons.more_vert, color: Colors.white, size: 20.sp),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12.r)),
//                   onSelected: (value) => _handleMenuAction(value, project),
//                   itemBuilder: (context) => [
//                     PopupMenuItem(
//                       value: 'edit',
//                       child: Row(
//                         children: [
//                           Icon(Icons.edit_outlined, size: 18.sp),
//                           SizedBox(width: 12.w),
//                           const Text('Edit Project'),
//                         ],
//                       ),
//                     ),
//                     PopupMenuItem(
//                       value: 'submit',
//                       child: Row(
//                         children: [
//                           Icon(Icons.send_outlined, size: 18.sp),
//                           SizedBox(width: 12.w),
//                           const Text('Submit for Review'),
//                         ],
//                       ),
//                     ),
//                     PopupMenuItem(
//                       value: 'delete',
//                       child: Row(
//                         children: [
//                           Icon(Icons.delete_outline,
//                               color: Colors.red, size: 18.sp),
//                           SizedBox(width: 12.w),
//                           const Text('Delete Project',
//                               style: TextStyle(color: Colors.red)),
//                         ],
//                       ),
//                     ),
//                   ],
//                 )
//               : IconButton(
//                   icon: Icon(Icons.share_outlined,
//                       color: Colors.white, size: 20.sp),
//                   onPressed: () => _shareProject(project),
//                 ),
//         ),
//       ],
//       flexibleSpace: FlexibleSpaceBar(
//         background: Stack(
//           fit: StackFit.expand,
//           children: [
//             // Background image with parallax effect
//             _buildBackgroundImage(project),

//             // Gradient overlays
//             // _buildGradientOverlays(),

//             // Floating content
//             _buildFloatingContent(project, progress),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildBackgroundImage(ProjectEntity project) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Color(int.parse(project.category.color.replaceFirst('#', '0xFF'))),
//             Color(int.parse(project.category.color.replaceFirst('#', '0xFF')))
//                 .withOpacity(0.7),
//           ],
//         ),
//       ),
//       child: project.media?.coverImage != null
//           ? CachedNetworkImage(
//               imageUrl: project.media!.coverImage!,
//               fit: BoxFit.cover,
//               placeholder: (context, url) => Container(
//                 color: AppColors.accent,
//                 child: const Center(child: CircularProgressIndicator()),
//               ),
//               errorWidget: (context, url, error) =>
//                   _buildDefaultBackground(project),
//             )
//           : _buildDefaultBackground(project),
//     );
//   }

//   Widget _buildDefaultBackground(ProjectEntity project) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Color(int.parse(project.category.color.replaceFirst('#', '0xFF'))),
//             Color(int.parse(project.category.color.replaceFirst('#', '0xFF')))
//                 .withOpacity(0.6),
//           ],
//         ),
//       ),
//       child: Center(
//         child: Icon(
//           _getCategoryIcon(project.category.icon),
//           size: 120.sp,
//           color: Colors.white.withOpacity(0.2),
//         ),
//       ),
//     );
//   }

//   Widget _buildGradientOverlays() {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           stops: const [0.0, 0.3, 0.7, 1.0],
//           colors: [
//             AppColors.gray700.withOpacity(0.3),
//             Colors.transparent,
//             Colors.transparent,
//             AppColors.gray700.withOpacity(0.8),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildFloatingContent(ProjectEntity project, double progress) {
//     return Positioned(
//       bottom: 0,
//       left: 0,
//       right: 0,
//       child: Container(
//         padding: EdgeInsets.all(24.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             // Status badges row
//             Row(
//               children: [
//                 _buildStatusChip(project.status),
//                 SizedBox(width: 8.w),
//                 if (project.featured) _buildFeaturedChip(),
//                 const Spacer(),
//                 _buildCategoryChip(project.category),
//               ],
//             ),

//             SizedBox(height: 16.h),

//             // Project title
//             Text(
//               project.title,
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 24.sp,
//                 fontWeight: FontWeight.w800,
//                 color: Colors.white,
//                 height: 1.2,
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ).animate().fadeIn(delay: 200.ms).slideY(begin: 0.3),

//             SizedBox(height: 8.h),

//             // Location
//             Row(
//               children: [
//                 Icon(
//                   Icons.location_on_outlined,
//                   color: Colors.white.withOpacity(0.8),
//                   size: 16.sp,
//                 ),
//                 SizedBox(width: 4.w),
//                 Text(
//                   '${project.location['city'] ?? ''}, ${project.location['country'] ?? ''}',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 14.sp,
//                     color: Colors.white.withOpacity(0.8),
//                   ),
//                 ),
//               ],
//             ).animate().fadeIn(delay: 300.ms).slideY(begin: 0.3),

//             SizedBox(height: 20.h),

//             // Compact funding info
//             _buildCompactFundingInfo(project, progress),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCompactFundingInfo(ProjectEntity project, double progress) {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.95),
//         borderRadius: BorderRadius.circular(20.r),
//         // boxShadow: [
//         //   BoxShadow(
//         //     color: Colors.black.withOpacity(0.1),
//         //     blurRadius: 20,
//         //     offset: const Offset(0, 10),
//         //   ),
//         // ],
//       ),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Raised',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 12.sp,
//                       color: AppColors.textSecondary,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   SizedBox(height: 2.h),
//                   Text(
//                     '${_formatCurrency(project.currentFunding)} ${project.currency}',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.w800,
//                       color: AppColors.primary,
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Text(
//                     'Goal',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 12.sp,
//                       color: AppColors.textSecondary,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   SizedBox(height: 2.h),
//                   Text(
//                     '${_formatCurrency(project.fundingGoal)} ${project.currency}',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.w800,
//                       color: AppColors.textPrimary,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),

//           SizedBox(height: 16.h),

//           // Progress bar
//           Container(
//             height: 6.h,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(3.r),
//               color: AppColors.accent.withOpacity(0.3),
//             ),
//             child: Stack(
//               children: [
//                 AnimatedContainer(
//                   duration: const Duration(milliseconds: 1500),
//                   curve: Curves.easeOutCubic,
//                   width: (MediaQuery.of(context).size.width - 88.w) * progress,
//                   height: 6.h,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(3.r),
//                     gradient: LinearGradient(
//                       colors: [
//                         AppColors.primary,
//                         AppColors.primary.withOpacity(0.8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           SizedBox(height: 12.h),

//           // Stats row
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               _buildMiniStat('${(progress * 100).toInt()}%', 'Funded'),
//               _buildMiniStat('0', 'Investors'), // TODO: Get actual count
//               _buildMiniStat('${project.daysRemaining ?? 0}', 'Days left'),
//             ],
//           ),
//         ],
//       ),
//     ).animate().fadeIn(delay: 400.ms).slideY(begin: 0.5);
//   }

//   Widget _buildMiniStat(String value, String label) {
//     return Column(
//       children: [
//         Text(
//           value,
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 16.sp,
//             fontWeight: FontWeight.w700,
//             color: AppColors.textPrimary,
//           ),
//         ),
//         Text(
//           label,
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 11.sp,
//             color: AppColors.textSecondary,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildStatusChip(String status) {
//     Color color;
//     String label;
//     IconData icon;

//     switch (status.toLowerCase()) {
//       case 'active':
//         color = AppColors.success;
//         label = 'Active';
//         icon = Icons.play_circle_outline;
//         break;
//       case 'draft':
//         color = AppColors.warning;
//         label = 'Draft';
//         icon = Icons.edit_outlined;
//         break;
//       case 'completed':
//         color = AppColors.info;
//         label = 'Completed';
//         icon = Icons.check_circle_outline;
//         break;
//       case 'cancelled':
//         color = AppColors.error;
//         label = 'Cancelled';
//         icon = Icons.cancel_outlined;
//         break;
//       default:
//         color = AppColors.textTertiary;
//         label = status;
//         icon = Icons.info_outline;
//     }

//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(20.r),
//         boxShadow: [
//           BoxShadow(
//             color: color.withOpacity(0.3),
//             blurRadius: 8,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(icon, color: Colors.white, size: 12.sp),
//           SizedBox(width: 4.w),
//           Text(
//             label,
//             style: TextStyle(
//               fontFamily: 'Poppins',
//               color: Colors.white,
//               fontSize: 11.sp,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     ).animate().scale(delay: 100.ms);
//   }

//   Widget _buildFeaturedChip() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           colors: [Colors.amber, Colors.orange],
//         ),
//         borderRadius: BorderRadius.circular(20.r),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.amber.withOpacity(0.3),
//             blurRadius: 8,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(Icons.star, size: 12.sp, color: Colors.white),
//           SizedBox(width: 4.w),
//           Text(
//             'Featured',
//             style: TextStyle(
//               fontFamily: 'Poppins',
//               color: Colors.white,
//               fontSize: 11.sp,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     ).animate().scale(delay: 150.ms);
//   }

//   Widget _buildCategoryChip(dynamic category) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(20.r),
//         border: Border.all(
//           color: Colors.white.withOpacity(0.3),
//         ),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(
//             _getCategoryIcon(category.icon),
//             size: 12.sp,
//             color: Colors.white,
//           ),
//           SizedBox(width: 4.w),
//           Text(
//             category.name,
//             style: TextStyle(
//               fontFamily: 'Poppins',
//               color: Colors.white,
//               fontSize: 11.sp,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     ).animate().scale(delay: 200.ms);
//   }

//   Widget _buildSliverTabBar() {
//     return SliverPersistentHeader(
//       pinned: true,
//       delegate: _SliverTabBarDelegate(
//         Container(
//           decoration: BoxDecoration(
//             color: AppColors.cardBackground,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.05),
//                 blurRadius: 10,
//                 offset: const Offset(0, 2),
//               ),
//             ],
//           ),
//           child: TabBar(
//             controller: _tabController,
//             isScrollable: true,
//             labelColor: AppColors.primary,
//             unselectedLabelColor: AppColors.textSecondary,
//             indicatorColor: AppColors.primary,
//             indicatorWeight: 3.h,
//             indicatorSize: TabBarIndicatorSize.label,
//             labelStyle: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 14.sp,
//               fontWeight: FontWeight.w600,
//             ),
//             unselectedLabelStyle: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 14.sp,
//               fontWeight: FontWeight.w400,
//             ),
//             tabs: const [
//               Tab(text: 'Overview'),
//               Tab(text: 'Details'),
//               Tab(text: 'Timeline'),
//               Tab(text: 'Team'),
//               Tab(text: 'Documents'),
//               Tab(text: 'Updates'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Rest of the methods remain the same as in the previous implementation
//   Widget _buildOverviewTab(ProjectEntity project) {
//     return SingleChildScrollView(
//       padding: EdgeInsets.all(16.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Funding progress
//           ProjectStatsCard(project: project)
//               .animate()
//               .fadeIn()
//               .slideY(begin: 0.3),

//           SizedBox(height: 20.h),

//           // Description card
//           _buildModernCard(
//             title: 'Description',
//             icon: Icons.description,
//             child: Text(
//               project.description,
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 14.sp,
//                 color: AppColors.textPrimary,
//                 height: 1.6,
//               ),
//             ),
//           ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),

//           SizedBox(height: 20.h),

//           // Key Information card
//           _buildModernCard(
//             title: 'Key Information',
//             icon: Icons.info_outline,
//             child: Column(
//               children: [
//                 _buildInfoRow(
//                     Icons.category, 'Category', project.category.name),
//                 _buildInfoRow(Icons.location_on, 'Location',
//                     '${project.location['city'] ?? ''}, ${project.location['region'] ?? ''}, ${project.location['country'] ?? 'Not specified'}'),
//                 _buildInfoRow(Icons.schedule, 'Duration',
//                     '${project.durationMonths ?? 0} months'),
//                 _buildInfoRow(Icons.security, 'Risk Level',
//                     project.riskLevel.toUpperCase()),
//                 if (project.daysRemaining != null)
//                   _buildInfoRow(Icons.timer, 'Days Remaining',
//                       '${project.daysRemaining} days'),
//               ],
//             ),
//           ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.3),

//           SizedBox(height: 20.h),

//           // Tags
//           if (project.tags.isNotEmpty)
//             _buildModernCard(
//               title: 'Tags',
//               icon: Icons.local_offer,
//               child: Wrap(
//                 spacing: 8.w,
//                 runSpacing: 8.h,
//                 children: project.tags
//                     .map((tag) => Container(
//                           padding: EdgeInsets.symmetric(
//                               horizontal: 12.w, vertical: 6.h),
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 AppColors.primary.withOpacity(0.1),
//                                 AppColors.primary.withOpacity(0.05),
//                               ],
//                             ),
//                             borderRadius: BorderRadius.circular(20.r),
//                             border: Border.all(
//                               color: AppColors.primary.withOpacity(0.2),
//                             ),
//                           ),
//                           child: Text(
//                             tag,
//                             style: TextStyle(
//                               fontFamily: 'Poppins',
//                               color: AppColors.primary,
//                               fontSize: 12.sp,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ))
//                     .toList(),
//               ),
//             ).animate(delay: 300.ms).fadeIn().slideY(begin: 0.3),
//         ],
//       ),
//     );
//   }

//   Widget _buildDetailsTab(ProjectEntity project) {
//     return SingleChildScrollView(
//       padding: EdgeInsets.all(16.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Financial details
//           _buildModernCard(
//             title: 'Financial Details',
//             icon: Icons.account_balance_wallet,
//             child: Column(
//               children: [
//                 _buildDetailRow('Funding Goal',
//                     '${project.fundingGoal.toStringAsFixed(0)} ${project.currency}'),
//                 _buildDetailRow('Current Funding',
//                     '${project.currentFunding.toStringAsFixed(0)} ${project.currency}'),
//                 _buildDetailRow('Minimum Investment',
//                     '${project.minimumInvestment.toStringAsFixed(0)} ${project.currency}'),
//                 if (project.maximumInvestment != null)
//                   _buildDetailRow('Maximum Investment',
//                       '${project.maximumInvestment!.toStringAsFixed(0)} ${project.currency}'),
//                 _buildDetailRow(
//                     'Funding Type', project.fundingType.toUpperCase()),
//                 _buildDetailRow('Risk Level', project.riskLevel.toUpperCase()),
//               ],
//             ),
//           ).animate().fadeIn().slideY(begin: 0.3),

//           SizedBox(height: 20.h),

//           // Expected return
//           if (project.expectedReturn != null)
//             _buildModernCard(
//               title: 'Expected Return',
//               icon: Icons.trending_up,
//               child: Column(
//                 children: [
//                   if (project.expectedReturn!['percentage'] != null)
//                     _buildDetailRow('Percentage',
//                         '${project.expectedReturn!['percentage']}%'),
//                   if (project.expectedReturn!['period'] != null)
//                     _buildDetailRow('Period',
//                         '${project.expectedReturn!['period']} months'),
//                   if (project.expectedReturn!['description'] != null)
//                     _buildDetailRow(
//                         'Description', project.expectedReturn!['description']),
//                 ],
//               ),
//             ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),

//           SizedBox(height: 20.h),

//           // Risks
//           if (project.risks.isNotEmpty)
//             _buildModernCard(
//               title: 'Identified Risks',
//               icon: Icons.warning_amber,
//               child: Column(
//                 children: project.risks.asMap().entries.map((entry) {
//                   final index = entry.key;
//                   final risk = entry.value;
//                   return Container(
//                     margin: EdgeInsets.only(bottom: 12.h),
//                     padding: EdgeInsets.all(12.w),
//                     decoration: BoxDecoration(
//                       color: _getRiskColor(risk['level']).withOpacity(0.1),
//                       borderRadius: BorderRadius.circular(8.r),
//                       border: Border.all(
//                         color: _getRiskColor(risk['level']).withOpacity(0.3),
//                       ),
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           width: 24.w,
//                           height: 24.h,
//                           decoration: BoxDecoration(
//                             color: _getRiskColor(risk['level']),
//                             shape: BoxShape.circle,
//                           ),
//                           child: Center(
//                             child: Text(
//                               '${index + 1}',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 12.w),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 risk['title'] ?? 'Risk ${index + 1}',
//                                 style: TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontSize: 14.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: AppColors.textPrimary,
//                                 ),
//                               ),
//                               if (risk['description'] != null) ...[
//                                 SizedBox(height: 4.h),
//                                 Text(
//                                   risk['description'],
//                                   style: TextStyle(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 13.sp,
//                                     color: AppColors.textSecondary,
//                                   ),
//                                 ),
//                               ],
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.3),
//         ],
//       ),
//     );
//   }

//   Widget _buildTimelineTab(ProjectEntity project) {
//     return SingleChildScrollView(
//       padding: EdgeInsets.all(16.w),
//       child: ProjectTimelineCard(project: project),
//     );
//   }

//   Widget _buildTeamTab(ProjectEntity project, bool isOwner) {
//     return SingleChildScrollView(
//       padding: EdgeInsets.all(16.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Owner card
//           _buildModernCard(
//             title: 'Project Owner',
//             icon: Icons.person,
//             action: isOwner
//                 ? TextButton.icon(
//                     onPressed: () =>
//                         context.push('/project/${project.id}/team/manage'),
//                     icon: Icon(Icons.settings, size: 16.sp),
//                     label: const Text('Manage Team'),
//                   )
//                 : null,
//             child: ListTile(
//               contentPadding: EdgeInsets.zero,
//               leading: CircleAvatar(
//                 radius: 24.r,
//                 backgroundImage: project.owner.profile?.avatar != null
//                     ? CachedNetworkImageProvider(project.owner.profile!.avatar!)
//                     : null,
//                 backgroundColor: AppColors.primary,
//                 child: project.owner.profile?.avatar == null
//                     ? Text(
//                         project.owner.firstName[0].toUpperCase(),
//                         style: TextStyle(
//                           fontSize: 16.sp,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white,
//                         ),
//                       )
//                     : null,
//               ),
//               title: Text(
//                 '${project.owner.firstName} ${project.owner.lastName}',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.textPrimary,
//                 ),
//               ),
//               subtitle: Text(
//                 project.owner.email,
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14.sp,
//                   color: AppColors.textSecondary,
//                 ),
//               ),
//               trailing: !isOwner
//                   ? IconButton(
//                       icon: Icon(Icons.message,
//                           size: 20.sp, color: AppColors.primary),
//                       onPressed: () => _contactOwner(project.owner),
//                     )
//                   : null,
//             ),
//           ).animate().fadeIn().slideY(begin: 0.3),

//           SizedBox(height: 20.h),

//           // Team members
//           if (project.team.isNotEmpty)
//             ProjectTeamCard(
//               team: project.team,
//               isOwner: isOwner,
//               onRemoveMember: (member) =>
//                   _removeTeamMember(project.id, member.user.id),
//             ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),
//         ],
//       ),
//     );
//   }

//   Widget _buildDocumentsTab(ProjectEntity project) {
//     return Padding(
//       padding: EdgeInsets.all(16.w),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Project Documents',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 18.sp,
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.textPrimary,
//                 ),
//               ),
//               ElevatedButton.icon(
//                 onPressed: () =>
//                     context.push('/project/${project.id}/documents'),
//                 icon: Icon(Icons.folder_open, size: 16.sp),
//                 label: const Text('View All'),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: AppColors.primary,
//                   foregroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.r),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 16.h),
//           Expanded(
//             child: project.media?.documents.isEmpty ?? true
//                 ? _buildEmptyDocumentsState()
//                 : ListView.builder(
//                     itemCount: project.media!.documents.length,
//                     itemBuilder: (context, index) {
//                       final document = project.media!.documents[index];
//                       return Container(
//                         margin: EdgeInsets.only(bottom: 8.h),
//                         child: Card(
//                           color: AppColors.cardBackground,
//                           elevation: 2,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12.r),
//                           ),
//                           child: ListTile(
//                             leading: Container(
//                               width: 40.w,
//                               height: 40.h,
//                               decoration: BoxDecoration(
//                                 color: AppColors.primary.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(8.r),
//                               ),
//                               child: Icon(
//                                 _getDocumentIcon(document.type),
//                                 size: 20.sp,
//                                 color: AppColors.primary,
//                               ),
//                             ),
//                             title: Text(
//                               document.name,
//                               style: TextStyle(
//                                 fontFamily: 'Poppins',
//                                 fontSize: 14.sp,
//                                 fontWeight: FontWeight.w500,
//                                 color: AppColors.textPrimary,
//                               ),
//                             ),
//                             subtitle: Text(
//                               document.description ?? 'No description',
//                               style: TextStyle(
//                                 fontFamily: 'Poppins',
//                                 fontSize: 12.sp,
//                                 color: AppColors.textSecondary,
//                               ),
//                             ),
//                             trailing: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 if (document.isApproved)
//                                   Icon(Icons.verified,
//                                       color: AppColors.success, size: 16.sp),
//                                 IconButton(
//                                   icon: Icon(Icons.download, size: 20.sp),
//                                   onPressed: () => _downloadDocument(document),
//                                 ),
//                               ],
//                             ),
//                             onTap: () => _viewDocument(document),
//                           ),
//                         ),
//                       )
//                           .animate(delay: Duration(milliseconds: index * 100))
//                           .fadeIn()
//                           .slideX(begin: 0.3);
//                     },
//                   ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildEmptyDocumentsState() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 80.w,
//             height: 80.h,
//             decoration: BoxDecoration(
//               color: AppColors.primary.withOpacity(0.1),
//               shape: BoxShape.circle,
//             ),
//             child: Icon(
//               Icons.description_outlined,
//               size: 40.sp,
//               color: AppColors.primary,
//             ),
//           ),
//           SizedBox(height: 16.h),
//           Text(
//             'No Documents Available',
//             style: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 18.sp,
//               fontWeight: FontWeight.w600,
//               color: AppColors.textPrimary,
//             ),
//           ),
//           SizedBox(height: 8.h),
//           Text(
//             'Documents will appear here once uploaded',
//             style: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 14.sp,
//               color: AppColors.textSecondary,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildUpdatesTab(ProjectEntity project) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 80.w,
//             height: 80.h,
//             decoration: BoxDecoration(
//               color: AppColors.primary.withOpacity(0.1),
//               shape: BoxShape.circle,
//             ),
//             child: Icon(
//               Icons.update,
//               size: 40.sp,
//               color: AppColors.primary,
//             ),
//           ),
//           SizedBox(height: 16.h),
//           Text(
//             'No Updates Available',
//             style: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 18.sp,
//               fontWeight: FontWeight.w600,
//               color: AppColors.textPrimary,
//             ),
//           ),
//           SizedBox(height: 8.h),
//           Text(
//             'Project updates will appear here',
//             style: TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 14.sp,
//               color: AppColors.textSecondary,
//             ),
//           ),
//         ],
//       ),
//     );
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
//               color: AppColors.primary.withOpacity(0.05),
//               borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
//             ),
//             child: Row(
//               children: [
//                 Container(
//                   width: 32.w,
//                   height: 32.h,
//                   decoration: BoxDecoration(
//                     color: AppColors.primary.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(8.r),
//                   ),
//                   child: Icon(
//                     icon,
//                     color: AppColors.primary,
//                     size: 18.sp,
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
//                       color: AppColors.textPrimary,
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

//   Widget _buildInfoRow(IconData icon, String label, String value) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: 12.h),
//       child: Row(
//         children: [
//           Icon(icon, size: 18.sp, color: AppColors.primary),
//           SizedBox(width: 12.w),
//           SizedBox(
//             width: 100.w,
//             child: Text(
//               label,
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 14.sp,
//                 fontWeight: FontWeight.w500,
//                 color: AppColors.textSecondary,
//               ),
//             ),
//           ),
//           SizedBox(width: 16.w),
//           Expanded(
//             child: Text(
//               value,
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 14.sp,
//                 color: AppColors.textPrimary,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDetailRow(String label, String value) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: 12.h),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             width: 120.w,
//             child: Text(
//               label,
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 14.sp,
//                 fontWeight: FontWeight.w500,
//                 color: AppColors.textSecondary,
//               ),
//             ),
//           ),
//           SizedBox(width: 16.w),
//           Expanded(
//             child: Text(
//               value,
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 14.sp,
//                 color: AppColors.textPrimary,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget? _buildFloatingActionButton(ProjectEntity project, bool isOwner) {
//     if (!isOwner && project.status == 'active') {
//       return FloatingActionButton.extended(
//         onPressed: () => _showInvestDialog(project),
//         backgroundColor: AppColors.primary,
//         elevation: 4,
//         icon: Icon(Icons.attach_money, color: Colors.white, size: 20.sp),
//         label: const Text(
//           'Invest',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             color: Colors.white,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ).animate().scale(delay: 800.ms);
//     }
//     return null;
//   }

//   Color _getRiskColor(String? level) {
//     switch (level?.toLowerCase()) {
//       case 'low':
//         return AppColors.success;
//       case 'medium':
//         return AppColors.warning;
//       case 'high':
//         return AppColors.error;
//       default:
//         return AppColors.textTertiary;
//     }
//   }

//   IconData _getCategoryIcon(String iconName) {
//     switch (iconName.toLowerCase()) {
//       case 'business':
//         return Icons.business;
//       case 'tech':
//         return Icons.computer;
//       case 'health':
//         return Icons.health_and_safety;
//       case 'education':
//         return Icons.school;
//       case 'agriculture':
//         return Icons.agriculture;
//       case 'environment':
//         return Icons.eco;
//       default:
//         return Icons.folder;
//     }
//   }

//   IconData _getDocumentIcon(String type) {
//     switch (type.toLowerCase()) {
//       case 'pdf':
//         return Icons.picture_as_pdf;
//       case 'image':
//         return Icons.image;
//       case 'video':
//         return Icons.video_file;
//       case 'document':
//         return Icons.description;
//       default:
//         return Icons.insert_drive_file;
//     }
//   }

//   String _formatCurrency(double amount) {
//     if (amount >= 1000000) {
//       return '${(amount / 1000000).toStringAsFixed(1)}M';
//     } else if (amount >= 1000) {
//       return '${(amount / 1000).toStringAsFixed(1)}K';
//     }
//     return amount.toStringAsFixed(0);
//   }

//   void _handleMenuAction(String action, ProjectEntity project) {
//     switch (action) {
//       case 'edit':
//         context.push('/project/${project.id}/edit');
//         break;
//       case 'submit':
//         _submitProject(project.id);
//         break;
//       case 'delete':
//         _showDeleteConfirmation(project);
//         break;
//     }
//   }

//   void _submitProject(String projectId) async {
//     try {
//       await ref.read(projectProvider.notifier).submit(projectId);
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Project submitted for review'),
//             backgroundColor: AppColors.success,
//           ),
//         );
//       }
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Error submitting project: $e'),
//             backgroundColor: AppColors.error,
//           ),
//         );
//       }
//     }
//   }

//   void _showDeleteConfirmation(ProjectEntity project) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: AppColors.cardBackground,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16.r),
//         ),
//         title: Text(
//           'Delete Project',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 18.sp,
//             fontWeight: FontWeight.w600,
//             color: AppColors.textPrimary,
//           ),
//         ),
//         content: Text(
//           'Are you sure you want to delete "${project.title}"? This action cannot be undone.',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 14.sp,
//             color: AppColors.textPrimary,
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text(
//               'Cancel',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 color: AppColors.textSecondary,
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.pop(context);
//               _deleteProject(project.id);
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: AppColors.error,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8.r),
//               ),
//             ),
//             child: const Text('Delete', style: TextStyle(color: Colors.white)),
//           ),
//         ],
//       ),
//     );
//   }

//   void _deleteProject(String projectId) async {
//     try {
//       await ref.read(projectProvider.notifier).delete(projectId);
//       if (mounted) {
//         context.pop();
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Project deleted successfully'),
//             backgroundColor: AppColors.success,
//           ),
//         );
//       }
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Error deleting project: $e'),
//             backgroundColor: AppColors.error,
//           ),
//         );
//       }
//     }
//   }

//   void _removeTeamMember(String projectId, String userId) async {
//     try {
//       await ref
//           .read(projectProvider.notifier)
//           .removeTeamMemberFromProject(projectId, userId);
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Team member removed successfully'),
//             backgroundColor: AppColors.success,
//           ),
//         );
//       }
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Error removing team member: $e'),
//             backgroundColor: AppColors.error,
//           ),
//         );
//       }
//     }
//   }

//   void _contactOwner(dynamic owner) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('Contact functionality coming soon')),
//     );
//   }

//   void _downloadDocument(dynamic document) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('Downloading...')),
//     );
//   }

//   void _viewDocument(dynamic document) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('Opening document...')),
//     );
//   }

//   void _showInvestDialog(ProjectEntity project) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: AppColors.cardBackground,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16.r),
//         ),
//         title: Text(
//           'Invest in this Project',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 18.sp,
//             fontWeight: FontWeight.w600,
//             color: AppColors.textPrimary,
//           ),
//         ),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               'Minimum amount: ${project.minimumInvestment.toStringAsFixed(0)} ${project.currency}',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 14.sp,
//                 color: AppColors.textPrimary,
//               ),
//             ),
//             SizedBox(height: 16.h),
//             TextFormField(
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 14.sp,
//                 color: AppColors.textPrimary,
//               ),
//               decoration: InputDecoration(
//                 labelText: 'Investment Amount',
//                 labelStyle: const TextStyle(
//                   fontFamily: 'Poppins',
//                   color: AppColors.textSecondary,
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12.r),
//                   borderSide: const BorderSide(color: AppColors.primary),
//                 ),
//               ),
//               keyboardType: TextInputType.number,
//             ),
//           ],
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text(
//               'Cancel',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 color: AppColors.textSecondary,
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.pop(context);
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(
//                   content: Text('Investment processing...'),
//                   backgroundColor: AppColors.primary,
//                 ),
//               );
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: AppColors.primary,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8.r),
//               ),
//             ),
//             child: const Text('Invest', style: TextStyle(color: Colors.white)),
//           ),
//         ],
//       ),
//     );
//   }

//   void _shareProject(ProjectEntity project) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('Share functionality coming soon')),
//     );
//   }
// }

// class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
//   final Widget tabBar;

//   _SliverTabBarDelegate(this.tabBar);

//   @override
//   double get minExtent => 48.0;

//   @override
//   double get maxExtent => 48.0;

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return tabBar;
//   }

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return false;
//   }
// }
