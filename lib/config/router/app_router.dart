// import 'package:find_invest_mobile/presentation/pages/auth/login_page_v2.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/reset_password_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/reset_success_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/register_confirmation_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/register_screen.dart';
import 'package:find_invest_mobile/features/kyc/presentation/screens/kyc_audit_log_page.dart';
import 'package:find_invest_mobile/features/kyc/presentation/screens/kyc_dashboard_page.dart';
import 'package:find_invest_mobile/features/kyc/presentation/screens/kyc_start_page.dart';
import 'package:find_invest_mobile/features/kyc/presentation/screens/kyc_upload_page.dart';
// import 'package:find_invest_mobile/features/project/presentation/screens/add_project_screen.dart';
import 'package:find_invest_mobile/features/project/presentation/screens/create_project_screen.dart';
// import 'package:find_invest_mobile/features/project/presentation/screens/edit_project_page.dart';
import 'package:find_invest_mobile/features/project/presentation/screens/project_details_page.dart';
// import 'package:find_invest_mobile/features/project/presentation/screens/profile_screen.dart';
// import 'package:find_invest_mobile/features/project/presentation/screens/project_details_screen.dart';
// import 'package:find_invest_mobile/features/project/presentation/screens/project_documents_page.dart';
import 'package:find_invest_mobile/features/project/presentation/screens/project_owner_home_screen.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/screens/questionnaire_overview_page.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/screens/questionnaire_result_page.dart';
import 'package:find_invest_mobile/features/questionnaire/presentation/screens/take_questionnaire_page.dart';
// import 'package:find_invest_mobile/features/project/presentation/screens/team_management_page.dart';
// import 'package:find_invest_mobile/features/project/presentation/screens/update_profile_screen.dart';
// import 'package:find_invest_mobile/presentation/pages/auth/reset_password_page.dart';
import 'package:find_invest_mobile/presentation/pages/common/success_page.dart';
// import 'package:find_invest_mobile/presentation/pages/legal/privacy_policy_page.dart';
// import 'package:find_invest_mobile/presentation/pages/legal/terms_conditions_page.dart';
import 'package:find_invest_mobile/presentation/pages/onboarding/welcome_page.dart';
import 'package:find_invest_mobile/shared/pages/change_password_screen.dart';
import 'package:find_invest_mobile/shared/pages/help_screen.dart';
import 'package:find_invest_mobile/shared/pages/investor_edit_screen.dart';
import 'package:find_invest_mobile/shared/pages/notifications_screen.dart';
import 'package:find_invest_mobile/shared/pages/preferences_screen.dart';
// import 'package:find_invest_mobile/shared/pages/edit_profile_page.dart';
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

// import '../../presentation/pages/auth/login_page.dart';
// import '../../presentation/pages/auth/register_page.dart';
// import '../../presentation/pages/auth/forgot_password_page.dart';
import '../../presentation/pages/onboarding/onboarding_page.dart';
import '../../presentation/pages/onboarding/splash_page.dart';
// import '../../presentation/pages/auth/otp_verification_page.dart';
// import '../../presentation/pages/main/main_page.dart';
// import '../../presentation/pages/projects/project_list_page.dart';
// import '../../presentation/pages/projects/project_detail_page.dart';
// import '../../presentation/pages/jobs/job_list_page.dart';
// import '../../presentation/pages/profile/profile_page.dart';
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
        path: '/project/:id',
        builder: (context, state) => ProjectDetailPage(
          projectId: state.pathParameters['id']!,
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
      GoRoute(
        path: '/project/create',
        builder: (context, state) => const CreateProjectScreen(),
      ),
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
