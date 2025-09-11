import 'package:cached_network_image/cached_network_image.dart';
import 'package:find_invest_mobile/features/project-milestone/presentation/providers/project_milestone_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:find_invest_mobile/features/project_comments/presentation/providers/project_comment_provider.dart';
import 'package:find_invest_mobile/features/project_doc/presentation/providers/project_document_provider.dart';
import 'package:find_invest_mobile/features/project_invitations/presentation/providers/project_invitation_provider.dart';
import 'package:find_invest_mobile/features/project_repport/presentation/providers/project_report_provider.dart';
import 'package:find_invest_mobile/features/project_update/presentation/providers/project_update_provider.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:intl/intl.dart';

class ProjectDetailPage extends ConsumerStatefulWidget {
  final String projectId;

  const ProjectDetailPage({super.key, required this.projectId});

  @override
  ConsumerState<ProjectDetailPage> createState() => _ProjectDetailPageState();
}

class _ProjectDetailPageState extends ConsumerState<ProjectDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(projectProvider.notifier).getProject(widget.projectId);
      ref
          .read(projectCommentProvider.notifier)
          .fetchProjectComments(projectId: widget.projectId);
      ref
          .read(projectDocumentProvider.notifier)
          .fetchDocuments(projectId: widget.projectId);
      ref
          .read(projectInvitationProvider.notifier)
          .fetchInvitations(projectId: widget.projectId);
      ref
          .read(projectReportProvider.notifier)
          .listPublishedReports(projectId: widget.projectId);
      ref
          .read(projectUpdateProvider.notifier)
          .fetchPublicUpdates(projectId: widget.projectId);
      ref
          .read(projectMilestoneProvider.notifier)
          .fetchMilestones(projectId: widget.projectId);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final projectState = ref.watch(projectProvider);
    final commentState = ref.watch(projectCommentProvider);
    final documentState = ref.watch(projectDocumentProvider);
    final invitationState = ref.watch(projectInvitationProvider);
    final reportState = ref.watch(projectReportProvider);
    final updateState = ref.watch(projectUpdateProvider);
    final milestoneState = ref.watch(projectMilestoneProvider);

    if (projectState.isLoading || projectState.selectedProject == null) {
      return const Scaffold(
        backgroundColor: AppColors.background,
        body: LoadingOverlay(
          isLoading: true,
          child: Center(child: CircularProgressIndicator()),
        ),
      );
    }

    final project = projectState.selectedProject!;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 200.h,
            floating: false,
            pinned: true,
            backgroundColor: AppColors.cardBackground,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                project.title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              background: project.coverImage != null
                  ? CachedNetworkImage(
                      imageUrl: project.coverImage!,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        color: AppColors.accent,
                        child: const Center(child: CircularProgressIndicator()),
                      ),
                      errorWidget: (context, error, stackTrace) => Container(
                        color: AppColors.textTertiary.withOpacity(0.2),
                        child: const Icon(Icons.broken_image, size: 50),
                      ),
                    )
                  : Container(color: AppColors.textTertiary.withOpacity(0.2)),
            ),
            bottom: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: AppColors.primary,
              unselectedLabelColor: AppColors.textSecondary,
              indicatorColor: AppColors.primary,
              labelStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
              tabs: const [
                Tab(text: 'Overview'),
                Tab(text: 'Comments'),
                Tab(text: 'Documents'),
                Tab(text: 'Invitations'),
                Tab(text: 'Reports'),
                Tab(text: 'Updates'),
                Tab(text: 'Milestones'),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildOverviewTab(project),
            _buildCommentsTab(commentState),
            _buildDocumentsTab(documentState),
            _buildInvitationsTab(invitationState),
            _buildReportsTab(reportState),
            _buildUpdatesTab(updateState),
            _buildMilestonesTab(milestoneState),
          ],
        ),
      ),
    );
  }

  Widget _buildOverviewTab(ProjectEntity project) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Description'),
          if (project.description != null)
            Text(
              project.description!,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
              ),
            ).animate().fadeIn().slideY(begin: 0.3),
          SizedBox(height: 16.h),
          _buildSectionTitle('Details'),
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: [
              _buildInfoChip(
                label: project.category is String
                    ? project.category as String
                    : (project.category as Map<String, dynamic>)['name'] ??
                        'Non spécifié',
                icon: Icons.category,
              ),
              _buildInfoChip(label: project.sector, icon: Icons.business),
              if (project.subSector != null)
                _buildInfoChip(
                    label: project.subSector!,
                    icon: Icons.subdirectory_arrow_right),
              if (project.tags != null && project.tags!.isNotEmpty)
                _buildInfoChip(
                    label: project.tags!.join(', '), icon: Icons.tag),
            ],
          ).animate().fadeIn().slideY(begin: 0.3),
          SizedBox(height: 16.h),
          _buildSectionTitle('Funding'),
          LinearProgressIndicator(
            value: (project.fundingProgress ?? 0) / 100,
            backgroundColor: AppColors.textTertiary.withOpacity(0.2),
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
            minHeight: 4.h,
            borderRadius: BorderRadius.circular(4.r),
          ).animate().fadeIn(),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${(project.currentFunding ?? 0).toStringAsFixed(0)} ${project.currency ?? 'EUR'} / ${project.fundingGoal.toStringAsFixed(0)} ${project.currency ?? 'EUR'}',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                  color: AppColors.textSecondary,
                ),
              ),
              Text(
                project.daysRemaining != null && project.daysRemaining! > 0
                    ? '${project.daysRemaining} jours restants'
                    : 'Terminé',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                  color: project.daysRemaining != null &&
                          project.daysRemaining! > 0
                      ? AppColors.textSecondary
                      : AppColors.error,
                ),
              ),
            ],
          ).animate().fadeIn().slideY(begin: 0.3),
          if (project.expectedReturn != null &&
              project.expectedReturn!.percentage != null)
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Text(
                'Retour attendu : ${project.expectedReturn!.percentage}% ${project.expectedReturn!.period ?? ''}',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                  color: AppColors.accent,
                ),
              ),
            ).animate().fadeIn().slideY(begin: 0.3),
          if (project.location != null && project.location!.city != null)
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Text(
                'Lieu : ${project.location!.city}, ${project.location!.country}',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                  color: AppColors.textSecondary,
                ),
              ),
            ).animate().fadeIn().slideY(begin: 0.3),
          SizedBox(height: 16.h),
          if (project.team != null && project.team!.isNotEmpty)
            _buildSectionTitle('Team'),
          if (project.team != null && project.team!.isNotEmpty)
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: project.team!
                  .map((member) => _buildInfoChip(
                        label: member.user['name'] ?? 'Unknown',
                        icon: Icons.person,
                      ))
                  .toList(),
            ).animate().fadeIn().slideY(begin: 0.3),
        ],
      ),
    );
  }

  Widget _buildCommentsTab(ProjectCommentState commentState) {
    if (commentState.comments.isEmpty) {
      return _buildEmptyState('No comments available');
    }
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: commentState.comments.length,
      itemBuilder: (context, index) {
        final comment = commentState.comments[index];
        return Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
          margin: EdgeInsets.symmetric(vertical: 8.h),
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comment.author is String
                      ? comment.author
                      : (comment.author as Map<String, dynamic>)['name'] ??
                          'Anonymous',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  comment.content,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  comment.createdAt != null
                      ? DateFormat('dd/MM/yyyy').format(comment.createdAt!)
                      : 'Unknown date',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 10.sp,
                    color: AppColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
        ).animate().fadeIn().slideY(begin: 0.3);
      },
    );
  }

  Widget _buildDocumentsTab(ProjectDocumentState documentState) {
    if (documentState.documents.isEmpty) {
      return _buildEmptyState('No documents available');
    }
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: documentState.documents.length,
      itemBuilder: (context, index) {
        final document = documentState.documents[index];
        return ListTile(
          leading:
              Icon(Icons.description, color: AppColors.primary, size: 24.sp),
          title: Text(
            document.name,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.textPrimary,
            ),
          ),
          subtitle: Text(
            document.description ?? 'No description',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.sp,
              color: AppColors.textSecondary,
            ),
          ),
          trailing: document.isApproved
              ? Icon(Icons.check_circle, color: AppColors.success, size: 20.sp)
              : Icon(Icons.pending, color: AppColors.warning, size: 20.sp),
          onTap: () {
            ref
                .read(projectDocumentProvider.notifier)
                .incrementDownload(document.id!);
            // Handle document view/download
          },
        ).animate().fadeIn().slideY(begin: 0.3);
      },
    );
  }

  Widget _buildInvitationsTab(ProjectInvitationState invitationState) {
    if (invitationState.invitations.isEmpty) {
      return _buildEmptyState('No invitations available');
    }
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: invitationState.invitations.length,
      itemBuilder: (context, index) {
        final invitation = invitationState.invitations[index];
        return Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
          margin: EdgeInsets.symmetric(vertical: 8.h),
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  invitation.email != null
                      ? invitation.email!
                      : invitation.user == null
                          ? "Unknown"
                          : invitation.user is String
                              ? invitation.user as String
                              : (invitation.user
                                      as Map<String, dynamic>)["name"] ??
                                  "Unknown",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Role: ${invitation.role}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
                Text(
                  'Status: ${invitation.status}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: _getStatusColor(invitation.status),
                  ),
                ),
              ],
            ),
          ),
        ).animate().fadeIn().slideY(begin: 0.3);
      },
    );
  }

  Widget _buildReportsTab(ProjectReportState reportState) {
    if (reportState.reports.isEmpty) {
      return _buildEmptyState('No reports available');
    }
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: reportState.reports.length,
      itemBuilder: (context, index) {
        final report = reportState.reports[index];
        return Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
          margin: EdgeInsets.symmetric(vertical: 8.h),
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  report.title,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  report.content,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Type: ${report.type}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ).animate().fadeIn().slideY(begin: 0.3);
      },
    );
  }

  Widget _buildUpdatesTab(ProjectUpdateState updateState) {
    if (updateState.updates.isEmpty) {
      return _buildEmptyState('No updates available');
    }
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: updateState.updates.length,
      itemBuilder: (context, index) {
        final update = updateState.updates[index];
        return Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
          margin: EdgeInsets.symmetric(vertical: 8.h),
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  update.title,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  update.content,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  update.publishedAt != null
                      ? DateFormat('dd/MM/yyyy').format(update.publishedAt!)
                      : 'Unknown date',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 10.sp,
                    color: AppColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
        ).animate().fadeIn().slideY(begin: 0.3);
      },
    );
  }

  Widget _buildMilestonesTab(ProjectMilestoneState milestoneState) {
    if (milestoneState.milestones.isEmpty) {
      return _buildEmptyState('No milestones available');
    }
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: milestoneState.milestones.length,
      itemBuilder: (context, index) {
        final milestone = milestoneState.milestones[index];
        return Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
          margin: EdgeInsets.symmetric(vertical: 8.h),
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  milestone.title,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  milestone.description ?? 'No description',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 8.h),
                LinearProgressIndicator(
                  value: milestone.progress / 100,
                  backgroundColor: AppColors.textTertiary.withOpacity(0.2),
                  valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
                  minHeight: 4.h,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Due: ${DateFormat('dd/MM/yyyy').format(milestone.dueDate)}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
                Text(
                  'Status: ${milestone.status}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: _getStatusColor(milestone.status),
                  ),
                ),
              ],
            ),
          ),
        ).animate().fadeIn().slideY(begin: 0.3);
      },
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
      ),
    ).animate().fadeIn().slideY(begin: 0.3);
  }

  Widget _buildInfoChip({required String label, required IconData icon}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.accent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 12.sp,
            color: AppColors.accent,
          ),
          SizedBox(width: 4.w),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 10.sp,
              color: AppColors.textSecondary,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.info_outline,
            size: 80.sp,
            color: AppColors.textTertiary,
          ),
          SizedBox(height: 16.h),
          Text(
            message,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sp,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    ).animate().fadeIn();
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'completed':
      case 'accepted':
        return AppColors.success;
      case 'pending':
        return AppColors.warning;
      case 'rejected':
      case 'cancelled':
        return AppColors.error;
      default:
        return AppColors.textSecondary;
    }
  }
}
