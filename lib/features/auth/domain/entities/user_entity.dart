import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String? phone;
  final String role;
  final List<String>? permissions;
  final ProfileEntity? profile;
  final PreferencesEntity? preferences;
  final String? kycStatus;
  final bool? isActive;
  final bool? isVerified;
  final DateTime? lastLogin;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const UserEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.phone,
    required this.role,
    this.permissions,
    this.profile,
    this.preferences,
    this.kycStatus,
    this.isActive,
    this.isVerified,
    this.lastLogin,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [id, email, role];
}

class ProfileEntity extends Equatable {
  final String? avatar;
  final String? bio;
  final String? location;
  final String? website;
  final SocialLinksEntity? socialLinks;
  final DateTime? dateOfBirth;
  final String? gender;

  const ProfileEntity({
    this.avatar,
    this.bio,
    this.location,
    this.website,
    this.socialLinks,
    this.dateOfBirth,
    this.gender,
  });

  @override
  List<Object?> get props => [avatar, bio, location];
}

class SocialLinksEntity extends Equatable {
  final String? linkedin;
  final String? twitter;
  final String? facebook;
  final String? instagram;

  const SocialLinksEntity({
    this.linkedin,
    this.twitter,
    this.facebook,
    this.instagram,
  });

  @override
  List<Object?> get props => [linkedin, twitter, facebook, instagram];
}

class PreferencesEntity extends Equatable {
  final String? language;
  final NotificationsEntity? notifications;
  final PrivacyEntity? privacy;

  const PreferencesEntity({
    this.language,
    this.notifications,
    this.privacy,
  });

  @override
  List<Object?> get props => [language];
}

class NotificationsEntity extends Equatable {
  final bool? email;
  final bool? push;
  final bool? sms;

  const NotificationsEntity({
    this.email,
    this.push,
    this.sms,
  });

  @override
  List<Object?> get props => [email, push, sms];
}

class PrivacyEntity extends Equatable {
  final String? profileVisibility;
  final bool? showEmail;
  final bool? showPhone;

  const PrivacyEntity({
    this.profileVisibility,
    this.showEmail,
    this.showPhone,
  });

  @override
  List<Object?> get props => [profileVisibility, showEmail, showPhone];
}
