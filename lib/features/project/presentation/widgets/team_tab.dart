import 'package:cached_network_image/cached_network_image.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
// import 'package:find_invest_mobile/features/project/presentation/widgets/project_team_card.dart';
import 'package:go_router/go_router.dart';

class TeamTab extends ConsumerWidget {
  final ProjectEntity project;
  final bool isOwner;

  const TeamTab({super.key, required this.project, required this.isOwner});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildModernCard(
            title: 'Project Owner',
            icon: Icons.person,
            action: isOwner
                ? TextButton.icon(
                    onPressed: () =>
                        context.push('/project/${project.id}/team/manage'),
                    icon: Icon(Icons.settings, size: 16.sp),
                    label: const Text('Manage Team'),
                  )
                : null,
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 24.r,
                backgroundImage: (project.owner is Map &&
                        project.owner['profile']?['avatar'] != null)
                    ? CachedNetworkImageProvider(
                        project.owner['profile']['avatar'])
                    : null,
                backgroundColor: AppColors.primary,
                child: (project.owner is Map &&
                        project.owner['profile']?['avatar'] == null)
                    ? Text(
                        (project.owner['firstName'] ?? 'U')[0].toUpperCase(),
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )
                    : null,
              ),
              title: Text(
                project.owner is Map
                    ? '${project.owner['firstName'] ?? ''} ${project.owner['lastName'] ?? ''}'
                    : 'Unknown Owner',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              subtitle: Text(
                project.owner is Map
                    ? project.owner['email'] ?? 'No email'
                    : 'No email',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: AppColors.textSecondary,
                ),
              ),
              trailing: !isOwner
                  ? IconButton(
                      icon: Icon(Icons.message,
                          size: 20.sp, color: AppColors.primary),
                      onPressed: () => _contactOwner(project.owner, context),
                    )
                  : null,
            ),
          ).animate().fadeIn().slideY(begin: 0.3),
          SizedBox(height: 20.h),
          // if (project.team?.isNotEmpty ?? false)
            // ProjectTeamCard(
            //   team: project.team!,
            //   isOwner: isOwner,
            //   onRemoveMember: (member) => ref
            //       .read(projectProvider.notifier)
            //       .removeTeamMember(
            //           project.id, member.user is UserEntity ? member.user['id'] : ''),
            // ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),
        ],
      ),
    );
  }

  Widget _buildModernCard({
    required String title,
    required IconData icon,
    required Widget child,
    Widget? action,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.05),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
            ),
            child: Row(
              children: [
                Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    icon,
                    color: AppColors.primary,
                    size: 18.sp,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                if (action != null) action,
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.w),
            child: child,
          ),
        ],
      ),
    );
  }

  void _contactOwner(dynamic owner, BuildContext context) {
    // Placeholder for contact functionality
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Contact functionality coming soon')),
    );
  }
}
