// import 'package:find_invest_mobile/presentation/pages/auth/login_page_v2.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/reset_password_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/reset_success_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/register_confirmation_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/register_screen.dart';
import 'package:find_invest_mobile/features/investor/screens/community/Tabs/group_details.dart';
import 'package:find_invest_mobile/features/investor/screens/invest_view.dart';
import 'package:find_invest_mobile/features/investor/screens/wallet/wallet_view.dart';
import 'package:find_invest_mobile/features/kyc/presentation/screens/kyc_audit_log_page.dart';
import 'package:find_invest_mobile/features/kyc/presentation/screens/kyc_dashboard_page.dart';
import 'package:find_invest_mobile/features/kyc/presentation/screens/kyc_start_page.dart';
import 'package:find_invest_mobile/features/kyc/presentation/screens/kyc_upload_page.dart';
import 'package:find_invest_mobile/features/project-milestone/presentation/screens/deliverable_add_page.dart';
import 'package:find_invest_mobile/features/project-milestone/presentation/screens/milestone_create_page.dart';
import 'package:find_invest_mobile/features/project-milestone/presentation/screens/milestone_edit_page.dart';
import 'package:find_invest_mobile/features/project-milestone/presentation/screens/milestone_management_page.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/screens/basic_info_form_component.dart';
import 'package:find_invest_mobile/features/project/presentation/screens/create_project_screen.dart';
import 'package:find_invest_mobile/features/project/presentation/screens/financial_info_update_page.dart';
import 'package:find_invest_mobile/features/project/presentation/screens/location_form_component.dart';
// import 'package:find_invest_mobile/features/project/presentation/screens/edit_project_page.dart';
import 'package:find_invest_mobile/features/project/presentation/screens/project_details_page.dart';

import 'package:find_invest_mobile/features/project/presentation/screens/project_owner_home_screen.dart';
import 'package:find_invest_mobile/features/project/presentation/screens/update_project_screen.dart';
import 'package:find_invest_mobile/features/project_doc/presentation/screens/document_management_page.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/screens/questionnaire_overview_page.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/screens/questionnaire_result_page.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/screens/take_questionnaire_page.dart';
import 'package:find_invest_mobile/presentation/pages/common/success_page.dart';
import 'package:find_invest_mobile/presentation/pages/onboarding/welcome_page.dart';
import 'package:find_invest_mobile/shared/pages/change_password_screen.dart';
import 'package:find_invest_mobile/shared/pages/help_screen.dart';
import 'package:find_invest_mobile/shared/pages/investor_edit_screen.dart';
import 'package:find_invest_mobile/shared/pages/notifications_screen.dart';
import 'package:find_invest_mobile/shared/pages/preferences_screen.dart';
import 'package:find_invest_mobile/shared/pages/privacy_policy_screen.dart';
import 'package:find_invest_mobile/shared/pages/privacy_screen.dart';
import 'package:find_invest_mobile/shared/pages/profile_page.dart';
import 'package:find_invest_mobile/shared/pages/project_owner_edit_screen.dart';
import 'package:find_invest_mobile/shared/pages/security_screen.dart';
import 'package:find_invest_mobile/shared/pages/terms_of_service_screen.dart';
import 'package:find_invest_mobile/shared/pages/update_profile_screen.dart';
import 'package:find_invest_mobile/shared/pages/update_social_link_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/job-seeker/screens/alertes/add_alert.dart';
import '../../features/job-seeker/screens/offers/offer_details_vierw.dart';
import '../../features/job-seeker/screens/root.dart';
import '../../features/investor/screens/Updates/update_details.dart';
import '../../features/investor/screens/root.dart';
import '../../features/investor/screens/investor_projects_view/project_details_vierw.dart';
import '../../features/investor/screens/wallet/historique_view.dart';
import '../../presentation/pages/onboarding/onboarding_page.dart';
import '../../presentation/pages/onboarding/splash_page.dart';
import 'app_routes.dart';

final routerProvider =
    Provider.family<GoRouter, GlobalKey<NavigatorState>>((ref, navigatorKey) {
  return GoRouter(
    navigatorKey: navigatorKey, // Use the passed navigatorKey
    initialLocation: AppRoutes.splash,
    debugLogDiagnostics: true,
    observers: [AppRouterObserver()],
    routes: [
      // Splash & Onboarding
      GoRoute(
        path: AppRoutes.splash,
        name: 'splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: AppRoutes.welcome,
        name: 'welcome',
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: AppRoutes.onboarding,
        name: 'onboarding',
        builder: (context, state) => const OnboardingPage(),
      ),

      // Authentication
      GoRoute(
        path: AppRoutes.login,
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.register,
        name: 'register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerConfirmation,
        name: 'register-confirmation',
        builder: (context, state) => const RegisterConfirmationScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        name: 'forgotPassword',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      // Authentication - ajout des nouvelles routes
      GoRoute(
        path: AppRoutes.otpVerification,
        name: 'otpVerification',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final email = extra['email'] as String;
          return VerifyOtpScreen(email: email);
        },
      ),
      GoRoute(
        path: AppRoutes.resetPassword,
        name: 'resetPassword',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final email = extra['email'] as String;
          final otp = extra['otp'] as String;
          return ResetPasswordScreen(email: email, otp: otp);
        },
      ),
      GoRoute(
        path: AppRoutes.resetPasswordSuccess,
        name: 'resetPasswordSuccess',
        builder: (context, state) => const ResetSuccessScreen(),
      ),

      ///Project owner
      GoRoute(
        path: '/project-owner/home',
        builder: (context, state) => const ProjectOwnerHomeScreen(),
      ),
      GoRoute(
        path: '/project-owner/profile',
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        path: '/project-owner/update-profile',
        builder: (context, state) => const UpdateProfileScreen(),
      ),

      ///investor
      GoRoute(
        path: '/investor/profile',
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        path: '/investor/home',
        builder: (context, state) => const InvestorHomeScreen(),
      ),
      GoRoute(
        path: '/investor/profile',
        builder: (context, state) => const ChangePasswordScreen(),
      ),
      GoRoute(
        path: '/investor/payment_methode',
        builder: (context, state) {
          final project = state.extra as ProjectEntity;
          return InvestView(projectDto: project);
          },
      ),

      ///Job-seeker
      GoRoute(
        path: '/job-seeker/home',
        builder: (context, state) => const JobSeekerHome(),
      ),
      GoRoute(
        path: '/my_applications/details',
        builder: (context, state) {
          final project = state.extra as ProjectEntity;
          return OfferDetailView(projectDto: project);
        },
      ),
      GoRoute(
        path: '/add-alert/form',
        builder: (context, state)=> const AddAlertForm(),
      ),


      GoRoute(
        path: '/projectDto/:id',
        builder: (context, state) {
          final project = state.extra as ProjectEntity; // <-- retrieve it
          return ProjectDetailView(projectDto: project);
        },
      ),
      GoRoute(
        path: '/investor/wallet',
        builder: (context, state) => const WalletPage(),
      ),
      GoRoute(
          path: '/investor/history',
        builder: (context, state) => const HistoryPage()
      ),
      GoRoute(
        path: '/projectDto/update/:id',
        builder: (context, state) {
          final project = state.extra as ProjectEntity; // <-- retrieve it
          return UpdateDetailPage(projectDto: project);
        },
      ),
      GoRoute(
          path: '/investor/group/details',
          builder: (context, state) => const GroupDetails()
      ),


      GoRoute(
        path: '/change-password',
        builder: (context, state) => const ChangePasswordScreen(),
      ),
      GoRoute(
        path: '/profile/social-links',
        builder: (context, state) => const UpdateSocialLinksScreen(),
      ),
      GoRoute(
        path: '/help',
        builder: (context, state) => const HelpAndSupportScreen(),
      ),
      GoRoute(
        path: '/profile/privacy',
        builder: (context, state) => const PrivacyScreen(),
      ),
      GoRoute(
        path: '/profile/project-owner-edit',
        builder: (context, state) => const ProjectOwnerEditScreen(),
      ),
      GoRoute(
        path: '/profile/investor-edit',
        builder: (context, state) => const InvestorEditScreen(),
      ),
      GoRoute(
        path: '/profile/security',
        builder: (context, state) => const SecurityScreen(),
      ),
      GoRoute(
        path: '/profile/preferences',
        builder: (context, state) => const PreferencesScreen(),
      ),
      GoRoute(
        path: '/profile/notifications',
        builder: (context, state) => const NotificationsScreen(),
      ),
      GoRoute(
        path: '/kyc/dashboard',
        builder: (context, state) => const KycDashboardPage(),
      ),
      GoRoute(
        path: '/kyc/audit-log',
        builder: (context, state) => const KycAuditLogPage(),
      ),
      GoRoute(
        path: '/kyc/start',
        builder: (context, state) => const KycStartPage(),
      ),
      GoRoute(
        path: '/kyc/upload',
        builder: (context, state) => const KycUploadPage(),
      ),
      GoRoute(
        path: '/questionnaire/overview',
        builder: (context, state) => const QuestionnaireOverviewPage(),
      ),
      GoRoute(
        path: '/questionnaire/:id/take',
        builder: (context, state) {
          final questionnaireId = state.pathParameters['id']!;
          return TakeQuestionnairePage(questionnaireId: questionnaireId);
        },
      ),
      GoRoute(
        path: '/questionnaire/:id/result',
        builder: (context, state) {
          final questionnaireId = state.pathParameters['id']!;
          return QuestionnaireResultPage(questionnaireId: questionnaireId);
        },
      ),
      GoRoute(
        path: '/project/create',
        builder: (context, state) => const CreateProjectScreen(),
      ),
      GoRoute(
        path: '/project/:id',
        builder: (context, state) => ProjectDetailsPage(
          projectId: state.pathParameters['id']!,
        ),
      ),
      GoRoute(
        path: '/project/:id/milestones',
        builder: (context, state) => MilestoneManagementPage(
          projectId: state.pathParameters['id']!,
        ),
      ),
      GoRoute(
        path: '/project/:id/documents/create',
        builder: (context, state) => DocumentManagementPage(
          projectId: state.pathParameters['id']!,
        ),
      ),
      GoRoute(
        path: '/project/:id/milestones/create',
        builder: (context, state) => MilestoneCreatePage(
          projectId: state.pathParameters['id']!,
        ),
      ),
      GoRoute(
        path: '/project/:id/update',
        builder: (context, state) => UpdateProjectScreen(
          projectId: state.pathParameters['id']!,
        ),
      ),
      GoRoute(
        path: '/project/:id/update/basic-info',
        builder: (context, state) => BasicInfoUpdatePage(
          projectId: state.pathParameters['id']!,
        ),
      ),
      GoRoute(
        path: '/project/:id/update/funding',
        builder: (context, state) => FinancialInfoUpdatePage(
          projectId: state.pathParameters['id']!,
        ),
      ),
      GoRoute(
        path: '/project/:id/update/location',
        builder: (context, state) => LocationFormComponent(
          projectId: state.pathParameters['id']!,
          onUpdate: () {
            context.pop();
          },
        ),
      ),
      GoRoute(
        path: '/project/:id/milestones/:milestone/edit',
        builder: (context, state) => MilestoneEditPage(
          projectId: state.pathParameters['id']!,
          milestoneId: state.pathParameters['milestone']!,
        ),
      ),
      GoRoute(
        path: '/project/:id/milestones/:milestone/deliverables/add',
        builder: (context, state) => DeliverableAddPage(
          projectId: state.pathParameters['id']!,
          milestoneId: state.pathParameters['milestone']!,
        ),
      ),
      // GoRoute(
      //   path: '/project/:id/edit',
      //   name: 'edit-project',
      //   builder: (context, state) {
      //     final projectId = state.pathParameters['id']!;
      //     return EditProjectPage(projectId: projectId);
      //   },
      // ),
      // GoRoute(
      //   path: '/project/:id/documents',
      //   name: 'project-documents',
      //   builder: (context, state) {
      //     final projectId = state.pathParameters['id']!;
      //     return ProjectDocumentsPage(projectId: projectId);
      //   },
      // ),
      // GoRoute(
      //   path: '/project/:id/team/manage',
      //   name: 'project-team',
      //   builder: (context, state) {
      //     final projectId = state.pathParameters['id']!;
      //     return TeamManagementPage(projectId: projectId);
      //   },
      // ),
      // Main App
      // ShellRoute(
      //   builder: (context, state, child) => MainPage(child: child),
      //   routes: [
      //     GoRoute(
      //       path: AppRoutes.home,
      //       name: 'home',
      //       builder: (context, state) => const ProjectListPage(),
      //     ),
      //     GoRoute(
      //       path: AppRoutes.jobs,
      //       name: 'jobs',
      //       builder: (context, state) => const JobListPage(),
      //     ),
      //     GoRoute(
      //       path: AppRoutes.profile,
      //       name: 'profile',
      //       builder: (context, state) => const ProfilePage(),
      //     ),
      //   ],
      // ),

      // Project Details
      // GoRoute(
      //   path: '${AppRoutes.projectDetail}/:id',
      //   name: 'projectDetail',
      //   builder: (context, state) {
      //     final id = state.pathParameters['id']!;
      //     return ProjectDetailPage(projectId: id);
      //   },
      // ),
      // Success Page
      GoRoute(
        path: AppRoutes.successPage,
        name: 'successPage',
        builder: (context, state) {
          final title = state.uri.queryParameters['title'] ?? '';
          final message = state.uri.queryParameters['message'] ?? '';
          final buttonText = state.uri.queryParameters['buttonText'] ?? '';
          final targetRoute =
              state.uri.queryParameters['route'] ?? AppRoutes.home;
          return SuccessPage(
            title: Uri.decodeComponent(title),
            message: Uri.decodeComponent(message),
            buttonText: Uri.decodeComponent(buttonText),
            targetRoute: Uri.decodeComponent(targetRoute),
          );
        },
      ),

      // Legal Pages
      GoRoute(
        path: AppRoutes.privacyPolicy,
        name: 'privacyPolicy',
        builder: (context, state) => const PrivacyPolicyScreen(),
      ),
      GoRoute(
        path: AppRoutes.termsConditions,
        name: 'termsConditions',
        builder: (context, state) => const TermsOfServiceScreen(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64),
            const SizedBox(height: 16),
            Text('Page not found: ${state.uri.toString()}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go(AppRoutes.home),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    ),
  );
});

class AppRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    LoggingService.info('Route pushed: ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    LoggingService.info('Route popped: ${route.settings.name}');
  }
}
