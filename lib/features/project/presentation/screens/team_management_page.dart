// import 'package:find_invest_mobile/core/theme/app_colors.dart';
// import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
// import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
// import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
// // import 'package:find_invest_mobile/presentation/widgets/custom_button.dart';
// import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class TeamManagementPage extends ConsumerStatefulWidget {
//   final String projectId;

//   const TeamManagementPage({
//     super.key,
//     required this.projectId,
//   });

//   @override
//   ConsumerState<TeamManagementPage> createState() => _TeamManagementPageState();
// }

// class _TeamManagementPageState extends ConsumerState<TeamManagementPage> {
//   final TextEditingController _emailController = TextEditingController();
//   String _selectedRole = 'member';
//   List<String> _selectedPermissions = [];

//   final List<String> _availableRoles = [
//     'member',
//     'manager',
//     'admin',
//     'viewer',
//   ];

//   final List<String> _availablePermissions = [
//     'view_project',
//     'edit_project',
//     'manage_documents',
//     'manage_team',
//     'view_financials',
//     'manage_updates',
//   ];

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       ref.read(projectProvider.notifier).fetchProjectById(widget.projectId);
//     });
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final projectState = ref.watch(projectProvider);
//     final project = projectState.selectedProject;

//     if (projectState.isLoading && project == null) {
//       return Scaffold(
//         backgroundColor: AppColors.background,
//         appBar: AppBar(
//           title: const Text('Team Management'),
//           backgroundColor: AppColors.cardBackground,
//         ),
//         body: const Center(child: CircularProgressIndicator()),
//       );
//     }

//     if (project == null) {
//       return Scaffold(
//         backgroundColor: AppColors.background,
//         appBar: AppBar(
//           title: const Text('Team Management'),
//           backgroundColor: AppColors.cardBackground,
//         ),
//         body: const Center(
//           child: Text('Project not found'),
//         ),
//       );
//     }

//     return Scaffold(
//       backgroundColor: AppColors.background,
//       appBar: AppBar(
//         title: Text(
//           'Team Management',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 18.sp,
//             fontWeight: FontWeight.bold,
//             color: AppColors.textPrimary,
//           ),
//         ),
//         backgroundColor: AppColors.cardBackground,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.person_add, size: 24.sp),
//             onPressed: () => _showAddMemberDialog(),
//           ),
//         ],
//       ),
//       body: LoadingOverlay(
//         isLoading: projectState.isLoading,
//         child: SingleChildScrollView(
//           padding: EdgeInsets.all(16.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Project Owner
//               Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(16.w),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Project Owner',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 18.sp,
//                           fontWeight: FontWeight.bold,
//                           color: AppColors.textPrimary,
//                         ),
//                       ),
//                       SizedBox(height: 16.h),
//                       _buildMemberTile(
//                         user: project.owner,
//                         role: 'Owner',
//                         permissions: ['All Permissions'],
//                         isOwner: true,
//                       ),
//                     ],
//                   ),
//                 ),
//               ).animate().fadeIn().slideY(begin: 0.3),

//               SizedBox(height: 16.h),

//               // Team Members
//               Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(16.w),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'Team Members (${project.team.length})',
//                             style: TextStyle(
//                               fontFamily: 'Poppins',
//                               fontSize: 18.sp,
//                               fontWeight: FontWeight.bold,
//                               color: AppColors.textPrimary,
//                             ),
//                           ),
//                           CustomButton(
//                             text: 'Add',
//                             onPressed: _showAddMemberDialog,
//                             backgroundColor: AppColors.primary,
//                             textColor: Colors.white,
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 16.h),
//                       if (project.team.isEmpty)
//                         Center(
//                           child: Column(
//                             children: [
//                               Icon(
//                                 Icons.group_add,
//                                 size: 64.sp,
//                                 color: AppColors.textTertiary,
//                               ),
//                               SizedBox(height: 16.h),
//                               Text(
//                                 'No team members yet',
//                                 style: TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontSize: 16.sp,
//                                   color: AppColors.textSecondary,
//                                 ),
//                               ),
//                               SizedBox(height: 8.h),
//                               Text(
//                                 'Add team members to collaborate on this project',
//                                 style: TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontSize: 14.sp,
//                                   color: AppColors.textTertiary,
//                                 ),
//                                 textAlign: TextAlign.center,
//                               ),
//                             ],
//                           ),
//                         )
//                       else
//                         ...project.team.asMap().entries.map((entry) {
//                           final index = entry.key;
//                           final member = entry.value;
//                           return _buildMemberTile(
//                             user: member.user,
//                             role: member.role ?? 'Member',
//                             permissions: member.permissions,
//                             isOwner: false,
//                             onRemove: () => _removeMember(member.user.id),
//                             onEditRole: () => _editMemberRole(member),
//                           )
//                               .animate(
//                                   delay: Duration(milliseconds: index * 100))
//                               .fadeIn()
//                               .slideX(begin: 0.3);
//                         }),
//                     ],
//                   ),
//                 ),
//               ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildMemberTile({
//     required dynamic user,
//     required String role,
//     required List<String> permissions,
//     required bool isOwner,
//     VoidCallback? onRemove,
//     VoidCallback? onEditRole,
//   }) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 12.h),
//       padding: EdgeInsets.all(12.w),
//       decoration: BoxDecoration(
//         color: AppColors.background,
//         borderRadius: BorderRadius.circular(8.r),
//         border: Border.all(color: AppColors.gray200),
//       ),
//       child: Row(
//         children: [
//           CircleAvatar(
//             radius: 24.r,
//             backgroundImage: user.profile?.avatar != null
//                 ? CachedNetworkImageProvider(user.profile!.avatar!)
//                 : null,
//             child: user.profile?.avatar == null
//                 ? Text(
//                     user.firstName[0].toUpperCase(),
//                     style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   )
//                 : null,
//           ),
//           SizedBox(width: 12.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   '${user.firstName} ${user.lastName}',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w600,
//                     color: AppColors.textPrimary,
//                   ),
//                 ),
//                 Text(
//                   user.email,
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 14.sp,
//                     color: AppColors.textSecondary,
//                   ),
//                 ),
//                 SizedBox(height: 4.h),
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
//                   decoration: BoxDecoration(
//                     color: isOwner
//                         ? AppColors.primary.withOpacity(0.1)
//                         : AppColors.success.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                   child: Text(
//                     role,
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 12.sp,
//                       color: isOwner ? AppColors.primary : AppColors.success,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 if (permissions.isNotEmpty) ...[
//                   SizedBox(height: 8.h),
//                   Wrap(
//                     spacing: 4.w,
//                     runSpacing: 4.h,
//                     children: permissions
//                         .take(3)
//                         .map((permission) => Container(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: 6.w, vertical: 2.h),
//                               decoration: BoxDecoration(
//                                 color: AppColors.textTertiary.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(8.r),
//                               ),
//                               child: Text(
//                                 permission.replaceAll('_', ' ').toUpperCase(),
//                                 style: TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontSize: 10.sp,
//                                   color: AppColors.textTertiary,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ))
//                         .toList(),
//                   ),
//                   if (permissions.length > 3)
//                     Text(
//                       '+${permissions.length - 3} more',
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         fontSize: 10.sp,
//                         color: AppColors.textTertiary,
//                       ),
//                     ),
//                 ],
//               ],
//             ),
//           ),
//           if (!isOwner) ...[
//             IconButton(
//               icon: Icon(Icons.edit, size: 20.sp, color: AppColors.primary),
//               onPressed: onEditRole,
//             ),
//             IconButton(
//               icon: Icon(Icons.remove_circle,
//                   size: 20.sp, color: AppColors.error),
//               onPressed: onRemove,
//             ),
//           ],
//         ],
//       ),
//     );
//   }

//   void _showAddMemberDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text(
//           'Add Team Member',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 18.sp,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         content: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(
//                   labelText: 'Email Address',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8.r),
//                   ),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//               ),
//               SizedBox(height: 16.h),
//               Text(
//                 'Role',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               SizedBox(height: 8.h),
//               DropdownButtonFormField<String>(
//                 value: _selectedRole,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8.r),
//                   ),
//                 ),
//                 items: _availableRoles
//                     .map((role) => DropdownMenuItem(
//                           value: role,
//                           child: Text(role.toUpperCase()),
//                         ))
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedRole = value!;
//                   });
//                 },
//               ),
//               SizedBox(height: 16.h),
//               Text(
//                 'Permissions',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               SizedBox(height: 8.h),
//               ..._availablePermissions.map((permission) => CheckboxListTile(
//                     title: Text(
//                       permission.replaceAll('_', ' ').toUpperCase(),
//                       style: TextStyle(fontSize: 12.sp),
//                     ),
//                     value: _selectedPermissions.contains(permission),
//                     onChanged: (value) {
//                       setState(() {
//                         if (value == true) {
//                           _selectedPermissions.add(permission);
//                         } else {
//                           _selectedPermissions.remove(permission);
//                         }
//                       });
//                     },
//                     dense: true,
//                     contentPadding: EdgeInsets.zero,
//                   )),
//             ],
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//               _clearForm();
//             },
//             child: const Text('Cancel'),
//           ),
//           ElevatedButton(
//             onPressed: _addMember,
//             child: const Text('Add Member'),
//           ),
//         ],
//       ),
//     );
//   }

//   void _editMemberRole(ProjectTeamMember member) {
//     setState(() {
//       _selectedRole = member.role ?? 'member';
//       _selectedPermissions = List.from(member.permissions);
//     });

//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text(
//           'Edit Member Role',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 18.sp,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         content: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Member: ${member.user.firstName} ${member.user.lastName}',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               SizedBox(height: 16.h),
//               Text(
//                 'Role',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               SizedBox(height: 8.h),
//               DropdownButtonFormField<String>(
//                 value: _selectedRole,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8.r),
//                   ),
//                 ),
//                 items: _availableRoles
//                     .map((role) => DropdownMenuItem(
//                           value: role,
//                           child: Text(role.toUpperCase()),
//                         ))
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedRole = value!;
//                   });
//                 },
//               ),
//               SizedBox(height: 16.h),
//               Text(
//                 'Permissions',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               SizedBox(height: 8.h),
//               ..._availablePermissions.map((permission) => CheckboxListTile(
//                     title: Text(
//                       permission.replaceAll('_', ' ').toUpperCase(),
//                       style: TextStyle(fontSize: 12.sp),
//                     ),
//                     value: _selectedPermissions.contains(permission),
//                     onChanged: (value) {
//                       setState(() {
//                         if (value == true) {
//                           _selectedPermissions.add(permission);
//                         } else {
//                           _selectedPermissions.remove(permission);
//                         }
//                       });
//                     },
//                     dense: true,
//                     contentPadding: EdgeInsets.zero,
//                   )),
//             ],
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//               _clearForm();
//             },
//             child: const Text('Cancel'),
//           ),
//           ElevatedButton(
//             onPressed: () => _updateMemberRole(member.user.id),
//             child: const Text('Update'),
//           ),
//         ],
//       ),
//     );
//   }

//   void _addMember() async {
//     if (_emailController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Please enter an email address')),
//       );
//       return;
//     }

//     try {
//       // In a real app, you would first find the user by email
//       // For now, we'll simulate with a user ID
//       await ref.read(projectProvider.notifier).addTeamMemberToProject(
//             widget.projectId,
//             'user_id_from_email', // This should be resolved from email
//             _selectedRole,
//             _selectedPermissions,
//           );

//       if (mounted) {
//         Navigator.pop(context);
//         _clearForm();
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Team member added successfully')),
//         );
//       }
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error adding team member: $e')),
//         );
//       }
//     }
//   }

//   void _updateMemberRole(String userId) async {
//     try {
//       // Remove and re-add with new role and permissions
//       await ref.read(projectProvider.notifier).removeTeamMemberFromProject(
//             widget.projectId,
//             userId,
//           );

//       await ref.read(projectProvider.notifier).addTeamMemberToProject(
//             widget.projectId,
//             userId,
//             _selectedRole,
//             _selectedPermissions,
//           );

//       if (mounted) {
//         Navigator.pop(context);
//         _clearForm();
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Member role updated successfully')),
//         );
//       }
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error updating member role: $e')),
//         );
//       }
//     }
//   }

//   void _removeMember(String userId) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Remove Team Member'),
//         content:
//             const Text('Are you sure you want to remove this team member?'),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text('Cancel'),
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               Navigator.pop(context);
//               try {
//                 await ref
//                     .read(projectProvider.notifier)
//                     .removeTeamMemberFromProject(
//                       widget.projectId,
//                       userId,
//                     );
//                 if (mounted) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(
//                         content: Text('Team member removed successfully')),
//                   );
//                 }
//               } catch (e) {
//                 if (mounted) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Error removing team member: $e')),
//                   );
//                 }
//               }
//             },
//             style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
//             child: const Text('Remove', style: TextStyle(color: Colors.white)),
//           ),
//         ],
//       ),
//     );
//   }

//   void _clearForm() {
//     _emailController.clear();
//     _selectedRole = 'member';
//     _selectedPermissions.clear();
//   }
// }
