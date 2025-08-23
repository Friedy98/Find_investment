import 'package:find_invest_mobile/features/auth/data/models/user_model.dart'
    as model;
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart'
    as entity;

extension UserModelExtension on model.UserModel {
  entity.UserEntity toEntity() {
    return entity.UserEntity(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      role: role,
      permissions: permissions,
      phone: phone,
      avatar: avatar != null
          ? entity.Avatar(
              url: avatar!.url,
              filename: avatar!.filename,
              uploadedAt: avatar!.uploadedAt,
            )
          : null,
      bio: bio,
      location: location != null
          ? entity.Location(
              country: location!.country,
              city: location!.city,
              address: location!.address != null
                  ? entity.Address(
                      street: location!.address!.street,
                      region: location!.address!.region,
                      postalCode: location!.address!.postalCode,
                      coordinates: location!.address!.coordinates != null
                          ? entity.Coordinates(
                              latitude:
                                  location!.address!.coordinates!.latitude,
                              longitude:
                                  location!.address!.coordinates!.longitude,
                            )
                          : null,
                    )
                  : null,
            )
          : null,
      investorProfile: investorProfile != null
          ? entity.InvestorProfile(
              riskTolerance: investorProfile!.riskTolerance,
              investmentPreferences: investorProfile!.investmentPreferences !=
                      null
                  ? entity.InvestmentPreferences(
                      sectors: investorProfile!.investmentPreferences!.sectors,
                      minAmount:
                          investorProfile!.investmentPreferences!.minAmount,
                      maxAmount:
                          investorProfile!.investmentPreferences!.maxAmount,
                      regions: investorProfile!.investmentPreferences!.regions,
                    )
                  : null,
              totalInvested: investorProfile!.totalInvested,
              activeInvestments: investorProfile!.activeInvestments,
            )
          : null,
      projectOwnerProfile: projectOwnerProfile != null
          ? entity.ProjectOwnerProfile(
              company: projectOwnerProfile!.company != null
                  ? entity.Company(
                      name: projectOwnerProfile!.company!.name,
                      description: projectOwnerProfile!.company!.description,
                      website: projectOwnerProfile!.company!.website,
                      registrationNumber:
                          projectOwnerProfile!.company!.registrationNumber,
                      foundedYear: projectOwnerProfile!.company!.foundedYear,
                    )
                  : null,
              skills: projectOwnerProfile!.skills,
              experience: projectOwnerProfile!.experience,
              totalProjectsCreated: projectOwnerProfile!.totalProjectsCreated,
              successfulProjects: projectOwnerProfile!.successfulProjects,
            )
          : null,
      emailVerified: emailVerified,
      emailVerificationToken: emailVerificationToken,
      emailVerificationExpires: emailVerificationExpires,
      phoneVerified: phoneVerified,
      phoneVerificationToken: phoneVerificationToken,
      phoneVerificationExpires: phoneVerificationExpires,
      passwordChangedAt: passwordChangedAt,
      passwordResetToken: passwordResetToken,
      passwordResetExpires: passwordResetExpires,
      loginAttempts: loginAttempts,
      lockUntil: lockUntil,
      twoFactorEnabled: twoFactorEnabled,
      twoFactorSecret: twoFactorSecret,
      active: active,
      suspended: suspended,
      suspensionReason: suspensionReason,
      suspendedAt: suspendedAt,
      suspendedBy: suspendedBy,
      lastLogin: lastLogin,
      lastActivity: lastActivity,
      loginHistory: loginHistory
          ?.map((e) => entity.LoginHistory(
                ip: e.ip,
                userAgent: e.userAgent,
                timestamp: e.timestamp,
                location: e.location != null
                    ? entity.Location(
                        country: e.location!.country,
                        city: e.location!.city,
                        address: e.location!.address != null
                            ? entity.Address(
                                street: e.location!.address!.street,
                                region: e.location!.address!.region,
                                postalCode: e.location!.address!.postalCode,
                                coordinates:
                                    e.location!.address!.coordinates != null
                                        ? entity.Coordinates(
                                            latitude: e.location!.address!
                                                .coordinates!.latitude,
                                            longitude: e.location!.address!
                                                .coordinates!.longitude,
                                          )
                                        : null,
                              )
                            : null,
                      )
                    : null,
              ))
          .toList(),
      preferences: preferences != null
          ? entity.Preferences(
              language: preferences!.language,
              timezone: preferences!.timezone,
              notifications: preferences!.notifications != null
                  ? entity.Notifications(
                      email: preferences!.notifications!.email != null
                          ? entity.EmailNotifications(
                              marketing:
                                  preferences!.notifications!.email!.marketing,
                              updates:
                                  preferences!.notifications!.email!.updates,
                              security:
                                  preferences!.notifications!.email!.security,
                            )
                          : null,
                      push: preferences!.notifications!.push != null
                          ? entity.PushNotifications(
                              enabled:
                                  preferences!.notifications!.push!.enabled,
                              marketing:
                                  preferences!.notifications!.push!.marketing,
                              updates:
                                  preferences!.notifications!.push!.updates,
                            )
                          : null,
                      sms: preferences!.notifications!.sms != null
                          ? entity.SmsNotifications(
                              enabled: preferences!.notifications!.sms!.enabled,
                              security:
                                  preferences!.notifications!.sms!.security,
                            )
                          : null,
                    )
                  : null,
              privacy: preferences!.privacy != null
                  ? entity.Privacy(
                      profileVisibility:
                          preferences!.privacy!.profileVisibility,
                      showEmail: preferences!.privacy!.showEmail,
                      showPhone: preferences!.privacy!.showPhone,
                    )
                  : null,
            )
          : null,
      socialLinks: socialLinks != null
          ? entity.SocialLinks(
              linkedin: socialLinks!.linkedin,
              twitter: socialLinks!.twitter,
              facebook: socialLinks!.facebook,
              github: socialLinks!.github,
              website: socialLinks!.website,
            )
          : null,
      oauth: oauth != null
          ? entity.OAuth(
              google: oauth!.google != null
                  ? entity.OAuthProvider(
                      id: oauth!.google!.id,
                      email: oauth!.google!.email,
                    )
                  : null,
              facebook: oauth!.facebook != null
                  ? entity.OAuthProvider(
                      id: oauth!.facebook!.id,
                      email: oauth!.facebook!.email,
                    )
                  : null,
            )
          : null,
      termsAccepted: termsAccepted,
      termsAcceptedAt: termsAcceptedAt,
      privacyPolicyAccepted: privacyPolicyAccepted,
      privacyPolicyAcceptedAt: privacyPolicyAcceptedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

extension UserEntityExtension on entity.UserEntity {
  model.UserModel toModel() {
    return model.UserModel(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      role: role,
      permissions: permissions,
      phone: phone,
      avatar: avatar != null
          ? model.AvatarModel(
              url: avatar!.url,
              filename: avatar!.filename,
              uploadedAt: avatar!.uploadedAt,
            )
          : null,
      bio: bio,
      location: location != null
          ? model.LocationModel(
              country: location!.country,
              city: location!.city,
              address: location!.address != null
                  ? model.AddressModel(
                      street: location!.address!.street,
                      region: location!.address!.region,
                      postalCode: location!.address!.postalCode,
                      coordinates: location!.address!.coordinates != null
                          ? model.CoordinatesModel(
                              latitude:
                                  location!.address!.coordinates!.latitude,
                              longitude:
                                  location!.address!.coordinates!.longitude,
                            )
                          : null,
                    )
                  : null,
            )
          : null,
      investorProfile: investorProfile != null
          ? model.InvestorProfileModel(
              riskTolerance: investorProfile!.riskTolerance,
              investmentPreferences: investorProfile!.investmentPreferences !=
                      null
                  ? model.InvestmentPreferencesModel(
                      sectors: investorProfile!.investmentPreferences!.sectors,
                      minAmount:
                          investorProfile!.investmentPreferences!.minAmount,
                      maxAmount:
                          investorProfile!.investmentPreferences!.maxAmount,
                      regions: investorProfile!.investmentPreferences!.regions,
                    )
                  : null,
              totalInvested: investorProfile!.totalInvested,
              activeInvestments: investorProfile!.activeInvestments,
            )
          : null,
      projectOwnerProfile: projectOwnerProfile != null
          ? model.ProjectOwnerProfileModel(
              company: projectOwnerProfile!.company != null
                  ? model.CompanyModel(
                      name: projectOwnerProfile!.company!.name,
                      description: projectOwnerProfile!.company!.description,
                      website: projectOwnerProfile!.company!.website,
                      registrationNumber:
                          projectOwnerProfile!.company!.registrationNumber,
                      foundedYear: projectOwnerProfile!.company!.foundedYear,
                    )
                  : null,
              skills: projectOwnerProfile!.skills,
              experience: projectOwnerProfile!.experience,
              totalProjectsCreated: projectOwnerProfile!.totalProjectsCreated,
              successfulProjects: projectOwnerProfile!.successfulProjects,
            )
          : null,
      emailVerified: emailVerified,
      emailVerificationToken: emailVerificationToken,
      emailVerificationExpires: emailVerificationExpires,
      phoneVerified: phoneVerified,
      phoneVerificationToken: phoneVerificationToken,
      phoneVerificationExpires: phoneVerificationExpires,
      passwordChangedAt: passwordChangedAt,
      passwordResetToken: passwordResetToken,
      passwordResetExpires: passwordResetExpires,
      loginAttempts: loginAttempts,
      lockUntil: lockUntil,
      twoFactorEnabled: twoFactorEnabled,
      twoFactorSecret: twoFactorSecret,
      active: active,
      suspended: suspended,
      suspensionReason: suspensionReason,
      suspendedAt: suspendedAt,
      suspendedBy: suspendedBy,
      lastLogin: lastLogin,
      lastActivity: lastActivity,
      loginHistory: loginHistory
          ?.map((e) => model.LoginHistoryModel(
                ip: e.ip,
                userAgent: e.userAgent,
                timestamp: e.timestamp,
                location: e.location != null
                    ? model.LocationModel(
                        country: e.location!.country,
                        city: e.location!.city,
                        address: e.location!.address != null
                            ? model.AddressModel(
                                street: e.location!.address!.street,
                                region: e.location!.address!.region,
                                postalCode: e.location!.address!.postalCode,
                                coordinates:
                                    e.location!.address!.coordinates != null
                                        ? model.CoordinatesModel(
                                            latitude: e.location!.address!
                                                .coordinates!.latitude,
                                            longitude: e.location!.address!
                                                .coordinates!.longitude,
                                          )
                                        : null,
                              )
                            : null,
                      )
                    : null,
              ))
          .toList(),
      preferences: preferences != null
          ? model.PreferencesModel(
              language: preferences!.language,
              timezone: preferences!.timezone,
              notifications: preferences!.notifications != null
                  ? model.NotificationsModel(
                      email: preferences!.notifications!.email != null
                          ? model.EmailNotificationsModel(
                              marketing:
                                  preferences!.notifications!.email!.marketing,
                              updates:
                                  preferences!.notifications!.email!.updates,
                              security:
                                  preferences!.notifications!.email!.security,
                            )
                          : null,
                      push: preferences!.notifications!.push != null
                          ? model.PushNotificationsModel(
                              enabled:
                                  preferences!.notifications!.push!.enabled,
                              marketing:
                                  preferences!.notifications!.push!.marketing,
                              updates:
                                  preferences!.notifications!.push!.updates,
                            )
                          : null,
                      sms: preferences!.notifications!.sms != null
                          ? model.SmsNotificationsModel(
                              enabled: preferences!.notifications!.sms!.enabled,
                              security:
                                  preferences!.notifications!.sms!.security,
                            )
                          : null,
                    )
                  : null,
              privacy: preferences!.privacy != null
                  ? model.PrivacyModel(
                      profileVisibility:
                          preferences!.privacy!.profileVisibility,
                      showEmail: preferences!.privacy!.showEmail,
                      showPhone: preferences!.privacy!.showPhone,
                    )
                  : null,
            )
          : null,
      socialLinks: socialLinks != null
          ? model.SocialLinksModel(
              linkedin: socialLinks!.linkedin,
              twitter: socialLinks!.twitter,
              facebook: socialLinks!.facebook,
              github: socialLinks!.github,
              website: socialLinks!.website,
            )
          : null,
      oauth: oauth != null
          ? model.OAuthModel(
              google: oauth!.google != null
                  ? model.OAuthProviderModel(
                      id: oauth!.google!.id,
                      email: oauth!.google!.email,
                    )
                  : null,
              facebook: oauth!.facebook != null
                  ? model.OAuthProviderModel(
                      id: oauth!.facebook!.id,
                      email: oauth!.facebook!.email,
                    )
                  : null,
            )
          : null,
      termsAccepted: termsAccepted,
      termsAcceptedAt: termsAcceptedAt,
      privacyPolicyAccepted: privacyPolicyAccepted,
      privacyPolicyAcceptedAt: privacyPolicyAcceptedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
