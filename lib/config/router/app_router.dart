// import 'package:find_invest_mobile/presentation/pages/auth/login_page_v2.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/reset_password_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/reset_success_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/register_confirmation_screen.dart';
import 'package:find_invest_mobile/features/auth/presentation/screens/register_screen.dart';
import 'package:find_invest_mobile/presentation/pages/auth/reset_password_page.dart';
import 'package:find_invest_mobile/presentation/pages/common/success_page.dart';
// import 'package:find_invest_mobile/presentation/pages/legal/privacy_policy_page.dart';
// import 'package:find_invest_mobile/presentation/pages/legal/terms_conditions_page.dart';
import 'package:find_invest_mobile/presentation/pages/onboarding/welcome_page.dart';
import 'package:find_invest_mobile/shared/pages/privacy_policy_screen.dart';
import 'package:find_invest_mobile/shared/pages/terms_of_service_screen.dart';
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

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
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
          final email = state.uri.queryParameters['email'] ?? '';
          return VerifyOtpScreen(email: email);
        },
      ),
      GoRoute(
        path: AppRoutes.resetPassword,
        name: 'resetPassword',
        builder: (context, state) {
          final email = state.uri.queryParameters['email'] ?? '';
          final otp = state.uri.queryParameters['otp'] ?? '';
          return ResetPasswordScreen(email: email, otp: otp);
        },
      ),
      GoRoute(
        path: AppRoutes.resetPasswordSuccess,
        name: 'resetPasswordSuccess',
        builder: (context, state) => const ResetSuccessScreen(),
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
