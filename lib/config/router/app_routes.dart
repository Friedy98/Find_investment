class AppRoutes {
  // Splash & Onboarding
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String onboarding = '/onboarding';

  // Authentication
  static const String login = '/login';
  static const String register = '/register';
  static const String registerConfirmation = '/register-confirmation';
  static const String forgotPassword = '/forgot-password';

  // Authentication - ajout des nouvelles routes
  static const String otpVerification = '/otp-verification';
  static const String resetPassword = '/reset-password';
  static const String resetPasswordSuccess = '/reset-success';

  // Main App
  static const String home = '/home';
  static const String jobs = '/jobs';
  static const String profile = '/profile';

  // Projects
  static const String projectDetail = '/project';
  static const String createProject = '/create-project';

  // Jobs
  static const String jobDetail = '/job';
  static const String createJob = '/create-job';

  // Messages
  static const String messages = '/messages';
  static const String chat = '/chat';

  // Settings
  static const String settings = '/settings';
  static const String notifications = '/notifications';

  // Legal
  static const String privacyPolicy = '/privacy-policy';
  static const String termsConditions = '/terms-conditions';

  // Common
  static const String successPage = '/success';
}
