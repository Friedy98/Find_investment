import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @appSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Christian Connection Platform'**
  String get appSubtitle;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @onboarding1Title.
  ///
  /// In en, this message translates to:
  /// **'Connect with Purpose'**
  String get onboarding1Title;

  /// No description provided for @onboarding1Description.
  ///
  /// In en, this message translates to:
  /// **'Join a community of Christian investors, project owners, and job seekers united by faith and values.'**
  String get onboarding1Description;

  /// No description provided for @onboarding2Title.
  ///
  /// In en, this message translates to:
  /// **'Invest with Impact'**
  String get onboarding2Title;

  /// No description provided for @onboarding2Description.
  ///
  /// In en, this message translates to:
  /// **'Support meaningful projects that align with Christian values and create positive social impact.'**
  String get onboarding2Description;

  /// No description provided for @onboarding3Title.
  ///
  /// In en, this message translates to:
  /// **'Find Meaningful Work'**
  String get onboarding3Title;

  /// No description provided for @onboarding3Description.
  ///
  /// In en, this message translates to:
  /// **'Discover job opportunities in organizations that share your Christian values and mission.'**
  String get onboarding3Description;

  /// No description provided for @onboarding4Title.
  ///
  /// In en, this message translates to:
  /// **'Secure & Transparent'**
  String get onboarding4Title;

  /// No description provided for @onboarding4Description.
  ///
  /// In en, this message translates to:
  /// **'Built with security, transparency, and Christian ethics at its core.'**
  String get onboarding4Description;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get welcomeBack;

  /// No description provided for @loginSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to continue your journey'**
  String get loginSubtitle;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @enterEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enterEmail;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enterPassword;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @orContinueWith.
  ///
  /// In en, this message translates to:
  /// **'Or continue with'**
  String get orContinueWith;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @joinCommunity.
  ///
  /// In en, this message translates to:
  /// **'Join Our Community'**
  String get joinCommunity;

  /// No description provided for @registerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Create your account to get started'**
  String get registerSubtitle;

  /// No description provided for @selectRole.
  ///
  /// In en, this message translates to:
  /// **'Select Your Role'**
  String get selectRole;

  /// No description provided for @investor.
  ///
  /// In en, this message translates to:
  /// **'Investor'**
  String get investor;

  /// No description provided for @projectOwner.
  ///
  /// In en, this message translates to:
  /// **'Project Owner'**
  String get projectOwner;

  /// No description provided for @jobSeeker.
  ///
  /// In en, this message translates to:
  /// **'Job Seeker'**
  String get jobSeeker;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @enterFirstName.
  ///
  /// In en, this message translates to:
  /// **'Enter first name'**
  String get enterFirstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @enterLastName.
  ///
  /// In en, this message translates to:
  /// **'Enter last name'**
  String get enterLastName;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @enterConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm your password'**
  String get enterConfirmPassword;

  /// No description provided for @iAgreeToThe.
  ///
  /// In en, this message translates to:
  /// **'I agree to the '**
  String get iAgreeToThe;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConditions;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @emailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailRequired;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get invalidEmail;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordRequired;

  /// No description provided for @passwordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get passwordTooShort;

  /// No description provided for @passwordTooWeak.
  ///
  /// In en, this message translates to:
  /// **'Password must contain uppercase, lowercase and numbers'**
  String get passwordTooWeak;

  /// No description provided for @confirmPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Please confirm your password'**
  String get confirmPasswordRequired;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @fieldRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get fieldRequired;

  /// No description provided for @nameTooShort.
  ///
  /// In en, this message translates to:
  /// **'Name must be at least 2 characters'**
  String get nameTooShort;

  /// No description provided for @acceptTermsRequired.
  ///
  /// In en, this message translates to:
  /// **'Please accept the terms and conditions'**
  String get acceptTermsRequired;

  /// No description provided for @loginError.
  ///
  /// In en, this message translates to:
  /// **'Login failed. Please try again.'**
  String get loginError;

  /// No description provided for @registrationError.
  ///
  /// In en, this message translates to:
  /// **'Registration failed. Please try again.'**
  String get registrationError;

  /// No description provided for @accountCreatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Account created successfully!'**
  String get accountCreatedSuccess;

  /// No description provided for @welcomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Connect with investors and projects aligned with Christian values'**
  String get welcomeSubtitle;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @go.
  ///
  /// In en, this message translates to:
  /// **'Go'**
  String get go;

  /// No description provided for @signInToAccount.
  ///
  /// In en, this message translates to:
  /// **'Sign in to your account'**
  String get signInToAccount;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @resetPasswordSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address and we\'ll send you a code to reset your password'**
  String get resetPasswordSubtitle;

  /// No description provided for @sendResetCode.
  ///
  /// In en, this message translates to:
  /// **'Send Reset Code'**
  String get sendResetCode;

  /// No description provided for @backToLogin.
  ///
  /// In en, this message translates to:
  /// **'Back to Login'**
  String get backToLogin;

  /// No description provided for @sendCodeError.
  ///
  /// In en, this message translates to:
  /// **'Failed to send reset code. Please try again.'**
  String get sendCodeError;

  /// No description provided for @verifyCode.
  ///
  /// In en, this message translates to:
  /// **'Verify Code'**
  String get verifyCode;

  /// No description provided for @verifyYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Verify Your Email'**
  String get verifyYourEmail;

  /// No description provided for @otpSentTo.
  ///
  /// In en, this message translates to:
  /// **'We\'ve sent a 6-digit code to '**
  String get otpSentTo;

  /// No description provided for @enterCompleteOtp.
  ///
  /// In en, this message translates to:
  /// **'Please enter the complete 6-digit code'**
  String get enterCompleteOtp;

  /// No description provided for @invalidOtp.
  ///
  /// In en, this message translates to:
  /// **'Invalid verification code'**
  String get invalidOtp;

  /// No description provided for @didntReceiveCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive the code?'**
  String get didntReceiveCode;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resendCode;

  /// No description provided for @resendIn.
  ///
  /// In en, this message translates to:
  /// **'Resend in '**
  String get resendIn;

  /// No description provided for @seconds.
  ///
  /// In en, this message translates to:
  /// **'s'**
  String get seconds;

  /// No description provided for @codeResent.
  ///
  /// In en, this message translates to:
  /// **'Code sent successfully!'**
  String get codeResent;

  /// No description provided for @resendError.
  ///
  /// In en, this message translates to:
  /// **'Failed to resend code. Please try again.'**
  String get resendError;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @createNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword;

  /// No description provided for @createNewPasswordSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your new password must be different from previous passwords'**
  String get createNewPasswordSubtitle;

  /// No description provided for @enterNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter new password'**
  String get enterNewPassword;

  /// No description provided for @confirmNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm New Password'**
  String get confirmNewPassword;

  /// No description provided for @enterConfirmNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm your new password'**
  String get enterConfirmNewPassword;

  /// No description provided for @passwordRequirements.
  ///
  /// In en, this message translates to:
  /// **'Password Requirements:'**
  String get passwordRequirements;

  /// No description provided for @requirement8Characters.
  ///
  /// In en, this message translates to:
  /// **'At least 8 characters'**
  String get requirement8Characters;

  /// No description provided for @requirementUppercase.
  ///
  /// In en, this message translates to:
  /// **'One uppercase letter'**
  String get requirementUppercase;

  /// No description provided for @requirementLowercase.
  ///
  /// In en, this message translates to:
  /// **'One lowercase letter'**
  String get requirementLowercase;

  /// No description provided for @requirementNumber.
  ///
  /// In en, this message translates to:
  /// **'One number'**
  String get requirementNumber;

  /// No description provided for @resetPasswordError.
  ///
  /// In en, this message translates to:
  /// **'Failed to reset password. Please try again.'**
  String get resetPasswordError;

  /// No description provided for @passwordResetSuccess.
  ///
  /// In en, this message translates to:
  /// **'Password Reset Successful!'**
  String get passwordResetSuccess;

  /// No description provided for @passwordResetSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Your password has been successfully reset. You can now login with your new password.'**
  String get passwordResetSuccessMessage;

  /// No description provided for @goToLogin.
  ///
  /// In en, this message translates to:
  /// **'Go to Login'**
  String get goToLogin;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe;

  /// No description provided for @termsConditionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsConditionsTitle;

  /// No description provided for @privacyPolicyTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicyTitle;

  /// No description provided for @lastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last updated: {date}'**
  String lastUpdated(Object date);

  /// No description provided for @dataCollection.
  ///
  /// In en, this message translates to:
  /// **'Data Collection'**
  String get dataCollection;

  /// No description provided for @dataCollectionContent.
  ///
  /// In en, this message translates to:
  /// **'We collect information you provide directly to us, such as when you create an account, update your profile, or contact us for support.'**
  String get dataCollectionContent;

  /// No description provided for @dataUsage.
  ///
  /// In en, this message translates to:
  /// **'How We Use Your Data'**
  String get dataUsage;

  /// No description provided for @dataUsageContent.
  ///
  /// In en, this message translates to:
  /// **'We use the information we collect to provide, maintain, and improve our services, communicate with you, and ensure platform security.'**
  String get dataUsageContent;

  /// No description provided for @dataSharing.
  ///
  /// In en, this message translates to:
  /// **'Data Sharing'**
  String get dataSharing;

  /// No description provided for @dataSharingContent.
  ///
  /// In en, this message translates to:
  /// **'We do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except as described in this policy.'**
  String get dataSharingContent;

  /// No description provided for @dataSecurity.
  ///
  /// In en, this message translates to:
  /// **'Data Security'**
  String get dataSecurity;

  /// No description provided for @dataSecurityContent.
  ///
  /// In en, this message translates to:
  /// **'We implement appropriate security measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction.'**
  String get dataSecurityContent;

  /// No description provided for @userRights.
  ///
  /// In en, this message translates to:
  /// **'Your Rights'**
  String get userRights;

  /// No description provided for @userRightsContent.
  ///
  /// In en, this message translates to:
  /// **'You have the right to access, update, or delete your personal information. You may also opt out of certain communications from us.'**
  String get userRightsContent;

  /// No description provided for @cookiesPolicy.
  ///
  /// In en, this message translates to:
  /// **'Cookies Policy'**
  String get cookiesPolicy;

  /// No description provided for @cookiesPolicyContent.
  ///
  /// In en, this message translates to:
  /// **'We use cookies to enhance your browsing experience, analyze site traffic, and personalize content.'**
  String get cookiesPolicyContent;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// No description provided for @contactUsContent.
  ///
  /// In en, this message translates to:
  /// **'If you have any questions about this Privacy Policy, please contact us at privacy@findapp.com.'**
  String get contactUsContent;

  /// No description provided for @acceptance.
  ///
  /// In en, this message translates to:
  /// **'Acceptance of Terms'**
  String get acceptance;

  /// No description provided for @acceptanceContent.
  ///
  /// In en, this message translates to:
  /// **'By accessing and using this service, you accept and agree to be bound by the terms and provision of this agreement.'**
  String get acceptanceContent;

  /// No description provided for @serviceDescription.
  ///
  /// In en, this message translates to:
  /// **'Service Description'**
  String get serviceDescription;

  /// No description provided for @serviceDescriptionContent.
  ///
  /// In en, this message translates to:
  /// **'Find App is a platform that connects Christian investors, project owners, and job seekers to create meaningful opportunities.'**
  String get serviceDescriptionContent;

  /// No description provided for @userResponsibilities.
  ///
  /// In en, this message translates to:
  /// **'User Responsibilities'**
  String get userResponsibilities;

  /// No description provided for @userResponsibilitiesContent.
  ///
  /// In en, this message translates to:
  /// **'Users are responsible for maintaining the confidentiality of their account information and for all activities under their account.'**
  String get userResponsibilitiesContent;

  /// No description provided for @prohibitedActivities.
  ///
  /// In en, this message translates to:
  /// **'Prohibited Activities'**
  String get prohibitedActivities;

  /// No description provided for @prohibitedActivitiesContent.
  ///
  /// In en, this message translates to:
  /// **'Users may not use the service for any unlawful purpose or to solicit others to perform unlawful acts.'**
  String get prohibitedActivitiesContent;

  /// No description provided for @intellectualProperty.
  ///
  /// In en, this message translates to:
  /// **'Intellectual Property'**
  String get intellectualProperty;

  /// No description provided for @intellectualPropertyContent.
  ///
  /// In en, this message translates to:
  /// **'The service and its original content, features, and functionality are owned by Find App and are protected by copyright and other laws.'**
  String get intellectualPropertyContent;

  /// No description provided for @limitation.
  ///
  /// In en, this message translates to:
  /// **'Limitation of Liability'**
  String get limitation;

  /// No description provided for @limitationContent.
  ///
  /// In en, this message translates to:
  /// **'Find App shall not be liable for any indirect, incidental, special, consequential, or punitive damages.'**
  String get limitationContent;

  /// No description provided for @termination.
  ///
  /// In en, this message translates to:
  /// **'Termination'**
  String get termination;

  /// No description provided for @terminationContent.
  ///
  /// In en, this message translates to:
  /// **'We may terminate or suspend your account and access to the service immediately, without prior notice, for conduct that we believe violates these Terms.'**
  String get terminationContent;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
