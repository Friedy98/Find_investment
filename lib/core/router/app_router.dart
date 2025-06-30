import 'package:find_invest_mobile/presentation/pages/onboarding/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/pages/auth/login_page.dart';
import '../../presentation/pages/auth/register_page.dart';
// import '../../presentation/pages/auth/forgot_password_page.dart';
import '../../presentation/pages/onboarding/onboarding_page.dart';
import '../../presentation/pages/onboarding/splash_page.dart';
// import '../../presentation/pages/main/main_page.dart';
// import '../../presentation/pages/projects/project_list_page.dart';
// import '../../presentation/pages/projects/project_detail_page.dart';
// import '../../presentation/pages/jobs/job_list_page.dart';
// import '../../presentation/pages/profile/profile_page.dart';
import '../utils/logger.dart';
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
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: AppRoutes.register,
        name: 'register',
        builder: (context, state) => const RegisterPage(),
      ),
      // GoRoute(
      //   path: AppRoutes.forgotPassword,
      //   name: 'forgotPassword',
      //   builder: (context, state) => const ForgotPasswordPage(),
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
    AppLogger.info('Route pushed: ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    AppLogger.info('Route popped: ${route.settings.name}');
  }
}
