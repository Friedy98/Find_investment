import 'package:equatable/equatable.dart';

class Address with EquatableMixin {
  final String? street;
  final String? region;
  final String? postalCode;
  final Coordinates? coordinates;

  Address({
    this.street,
    this.region,
    this.postalCode,
    this.coordinates,
  });

  @override
  List<Object?> get props => [street, region, postalCode, coordinates];
}

// Nested class for Coordinates
class Coordinates with EquatableMixin {
  final double? latitude;
  final double? longitude;

  Coordinates({
    this.latitude,
    this.longitude,
  });

  @override
  List<Object?> get props => [latitude, longitude];
}

// Nested class for Location
class Location with EquatableMixin {
  final String? country;
  final String? city;
  final Address? address;

  Location({
    this.country,
    this.city,
    this.address,
  });

  @override
  List<Object?> get props => [country, city, address];
}

// Nested class for Avatar
class Avatar with EquatableMixin {
  final String? url;
  final String? filename;
  final DateTime? uploadedAt;

  Avatar({
    this.url,
    this.filename,
    this.uploadedAt,
  });

  @override
  List<Object?> get props => [url, filename, uploadedAt];
}

// Nested class for InvestmentPreferences
class InvestmentPreferences with EquatableMixin {
  final List<String>? sectors;
  final double? minAmount;
  final double? maxAmount;
  final List<String>? regions;

  InvestmentPreferences({
    this.sectors,
    this.minAmount,
    this.maxAmount,
    this.regions,
  });

  @override
  List<Object?> get props => [sectors, minAmount, maxAmount, regions];
}

// Nested class for InvestorProfile
class InvestorProfile with EquatableMixin {
  final String? riskTolerance; // Enum: low, medium, high
  final InvestmentPreferences? investmentPreferences;
  final double? totalInvested;
  final int? activeInvestments;

  InvestorProfile({
    this.riskTolerance,
    this.investmentPreferences,
    this.totalInvested,
    this.activeInvestments,
  });

  @override
  List<Object?> get props => [
        riskTolerance,
        investmentPreferences,
        totalInvested,
        activeInvestments,
      ];
}

// Nested class for Company
class Company with EquatableMixin {
  final String? name;
  final String? description;
  final String? website;
  final String? registrationNumber;
  final int? foundedYear;

  Company({
    this.name,
    this.description,
    this.website,
    this.registrationNumber,
    this.foundedYear,
  });

  @override
  List<Object?> get props => [
        name,
        description,
        website,
        registrationNumber,
        foundedYear,
      ];
}

// Nested class for ProjectOwnerProfile
class ProjectOwnerProfile with EquatableMixin {
  final Company? company;
  final List<String>? skills;
  final String? experience;
  final int? totalProjectsCreated;
  final int? successfulProjects;

  ProjectOwnerProfile({
    this.company,
    this.skills,
    this.experience,
    this.totalProjectsCreated,
    this.successfulProjects,
  });

  @override
  List<Object?> get props => [
        company,
        skills,
        experience,
        totalProjectsCreated,
        successfulProjects,
      ];
}

// Nested class for Notifications
class Notifications with EquatableMixin {
  final EmailNotifications? email;
  final PushNotifications? push;
  final SmsNotifications? sms;

  Notifications({
    this.email,
    this.push,
    this.sms,
  });

  @override
  List<Object?> get props => [email, push, sms];
}

// Nested class for EmailNotifications
class EmailNotifications with EquatableMixin {
  final bool? marketing;
  final bool? updates;
  final bool? security;

  EmailNotifications({
    this.marketing,
    this.updates,
    this.security,
  });

  @override
  List<Object?> get props => [marketing, updates, security];
}

// Nested class for PushNotifications
class PushNotifications with EquatableMixin {
  final bool? enabled;
  final bool? marketing;
  final bool? updates;

  PushNotifications({
    this.enabled,
    this.marketing,
    this.updates,
  });

  @override
  List<Object?> get props => [enabled, marketing, updates];
}

// Nested class for SmsNotifications
class SmsNotifications with EquatableMixin {
  final bool? enabled;
  final bool? security;

  SmsNotifications({
    this.enabled,
    this.security,
  });

  @override
  List<Object?> get props => [enabled, security];
}

// Nested class for Privacy
class Privacy with EquatableMixin {
  final String? profileVisibility; // Enum: public, members_only, private
  final bool? showEmail;
  final bool? showPhone;

  Privacy({
    this.profileVisibility,
    this.showEmail,
    this.showPhone,
  });

  @override
  List<Object?> get props => [profileVisibility, showEmail, showPhone];
}

// Nested class for Preferences
class Preferences with EquatableMixin {
  final String? language; // Enum: fr, en
  final String? timezone;
  final Notifications? notifications;
  final Privacy? privacy;

  Preferences({
    this.language,
    this.timezone,
    this.notifications,
    this.privacy,
  });

  @override
  List<Object?> get props => [language, timezone, notifications, privacy];
}

// Nested class for SocialLinks
class SocialLinks with EquatableMixin {
  final String? linkedin;
  final String? twitter;
  final String? facebook;
  final String? github;
  final String? website;

  SocialLinks({
    this.linkedin,
    this.twitter,
    this.facebook,
    this.github,
    this.website,
  });

  @override
  List<Object?> get props => [linkedin, twitter, facebook, github, website];
}

// Nested class for OAuth
class OAuth with EquatableMixin {
  final OAuthProvider? google;
  final OAuthProvider? facebook;

  OAuth({
    this.google,
    this.facebook,
  });

  @override
  List<Object?> get props => [google, facebook];
}

// Nested class for OAuthProvider
class OAuthProvider with EquatableMixin {
  final String? id;
  final String? email;

  OAuthProvider({
    this.id,
    this.email,
  });

  @override
  List<Object?> get props => [id, email];
}

// Nested class for LoginHistory
class LoginHistory with EquatableMixin {
  final String? ip;
  final String? userAgent;
  final DateTime? timestamp;
  final Location? location;

  LoginHistory({
    this.ip,
    this.userAgent,
    this.timestamp,
    this.location,
  });

  @override
  List<Object?> get props => [ip, userAgent, timestamp, location];
}

// Main User entity
class UserEntity with EquatableMixin {
  final String id; // MongoDB ObjectId as String
  final String firstName;
  final String lastName;
  final String email;
  final String?
      password; // Typically not sent to client, but included for completeness
  final String
      role; // Enum: investor, project_owner, job_candidate, admin, moderator, user
  final List<String> permissions;
  final String? phone;
  final Avatar? avatar;
  final String? bio;
  final Location? location;
  final InvestorProfile? investorProfile;
  final ProjectOwnerProfile? projectOwnerProfile;
  final bool? emailVerified;
  final String? emailVerificationToken;
  final DateTime? emailVerificationExpires;
  final bool? phoneVerified;
  final String? phoneVerificationToken;
  final DateTime? phoneVerificationExpires;
  final DateTime? passwordChangedAt;
  final String? passwordResetToken;
  final DateTime? passwordResetExpires;
  final int? loginAttempts;
  final DateTime? lockUntil;
  final bool? twoFactorEnabled;
  final String? twoFactorSecret;
  final String? fullName;
  final bool? active;
  final bool? suspended;
  final String? suspensionReason;
  final DateTime? suspendedAt;
  final String? suspendedBy; // MongoDB ObjectId as String
  final DateTime? lastLogin;
  final DateTime? lastActivity;
  final List<LoginHistory>? loginHistory;
  final Preferences? preferences;
  final SocialLinks? socialLinks;
  final OAuth? oauth;
  final bool? termsAccepted;
  final DateTime? termsAcceptedAt;
  final bool? privacyPolicyAccepted;
  final DateTime? privacyPolicyAcceptedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  // Constructor
  UserEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.password,
    required this.role,
    this.permissions = const [],
    this.phone,
    this.avatar,
    this.bio,
    this.location,
    this.investorProfile,
    this.projectOwnerProfile,
    this.emailVerified,
    this.emailVerificationToken,
    this.emailVerificationExpires,
    this.phoneVerified,
    this.phoneVerificationToken,
    this.phoneVerificationExpires,
    this.passwordChangedAt,
    this.passwordResetToken,
    this.passwordResetExpires,
    this.loginAttempts,
    this.lockUntil,
    this.twoFactorEnabled,
    this.twoFactorSecret,
    this.fullName,
    this.active,
    this.suspended,
    this.suspensionReason,
    this.suspendedAt,
    this.suspendedBy,
    this.lastLogin,
    this.lastActivity,
    this.loginHistory,
    this.preferences,
    this.socialLinks,
    this.oauth,
    this.termsAccepted,
    this.termsAcceptedAt,
    this.privacyPolicyAccepted,
    this.privacyPolicyAcceptedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Virtual: isLocked
  bool? get isLocked => lockUntil != null && lockUntil!.isAfter(DateTime.now());

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        email,
        password,
        role,
        permissions,
        phone,
        avatar,
        bio,
        location,
        investorProfile,
        projectOwnerProfile,
        emailVerified,
        emailVerificationToken,
        emailVerificationExpires,
        phoneVerified,
        phoneVerificationToken,
        phoneVerificationExpires,
        passwordChangedAt,
        passwordResetToken,
        passwordResetExpires,
        loginAttempts,
        lockUntil,
        twoFactorEnabled,
        twoFactorSecret,
        active,
        suspended,
        suspensionReason,
        suspendedAt,
        suspendedBy,
        lastLogin,
        lastActivity,
        loginHistory,
        preferences,
        socialLinks,
        oauth,
        termsAccepted,
        termsAcceptedAt,
        privacyPolicyAccepted,
        privacyPolicyAcceptedAt,
        createdAt,
        updatedAt,
      ];

  @override
  String toString() {
    return 'User(id: $id, fullName: $fullName, email: $email, role: $role)';
  }
}
