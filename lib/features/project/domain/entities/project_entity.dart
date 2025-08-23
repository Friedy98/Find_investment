import 'package:equatable/equatable.dart';

class ProjectEntity extends Equatable {
  final String id; // _id de MongoDB
  final String title;
  final String slug;
  final String description;
  final String? shortDescription;
  final dynamic category; // Peut être null, String (ID), ou ProjectCategoryEntity (populé)
  final String sector;
  final String? subSector;
  final List<String>? tags;
  final dynamic owner; // Peut être null, String (ID), ou UserEntity (populé)
  final List<TeamMember>? team;
  final Location? location;
  final num fundingGoal;
  final num? currentFunding;
  final String? currency;
  final String? fundingType;
  final num? minimumInvestment;
  final num? maximumInvestment;
  final ExpectedReturn? expectedReturn;
  final String? status;
  final String? visibility;
  final bool? featured;
  final String? priority;
  final DateTime? startDate;
  final DateTime? endDate;
  final DateTime? fundingDeadline;
  final num? duration;
  final List<Image>? images;
  final String? logo;
  final String? coverImage;
  final List<Video>? videos;
  final Analytics? analytics;
  final Seo? seo;
  final List<AuditLog>? auditLog;
  final Settings? settings;
  final DateTime? archivedAt;
  final dynamic archivedBy; // Peut être null, String (ID), ou UserEntity (populé)
  final String? archiveReason;
  final ModerationStatus? moderationStatus;
  final String? type;
  final String? collaborationType;
  final GroupSettings? groupSettings;
  final FinancialProjections? financialProjections;
  final Impact? impact;
  final List<Risk>? risks;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final num? fundingProgress; // Champ virtuel
  final num? daysRemaining; // Champ virtuel
  final num? durationMonths; // Champ virtuel
  final String? riskLevel; // Champ virtuel

  const ProjectEntity({
    required this.id,
    required this.title,
    required this.slug,
    required this.description,
    this.shortDescription,
    this.category,
    required this.sector,
    this.subSector,
    this.tags,
    this.owner,
    this.team,
    this.location,
    required this.fundingGoal,
    this.currentFunding,
    this.currency,
    this.fundingType,
    this.minimumInvestment,
    this.maximumInvestment,
    this.expectedReturn,
    this.status,
    this.visibility,
    this.featured,
    this.priority,
    this.startDate,
    this.endDate,
    this.fundingDeadline,
    this.duration,
    this.images,
    this.logo,
    this.coverImage,
    this.videos,
    this.analytics,
    this.seo,
    this.auditLog,
    this.settings,
    this.archivedAt,
    this.archivedBy,
    this.archiveReason,
    this.moderationStatus,
    this.type,
    this.collaborationType,
    this.groupSettings,
    this.financialProjections,
    this.impact,
    this.risks,
    this.createdAt,
    this.updatedAt,
    this.fundingProgress,
    this.daysRemaining,
    this.durationMonths,
    this.riskLevel,
  });

  ProjectEntity copyWith({
    String? id,
    String? title,
    String? slug,
    String? description,
    String? shortDescription,
    dynamic category,
    String? sector,
    String? subSector,
    List<String>? tags,
    dynamic owner,
    List<TeamMember>? team,
    Location? location,
    num? fundingGoal,
    num? currentFunding,
    String? currency,
    String? fundingType,
    num? minimumInvestment,
    num? maximumInvestment,
    ExpectedReturn? expectedReturn,
    String? status,
    String? visibility,
    bool? featured,
    String? priority,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? fundingDeadline,
    num? duration,
    List<Image>? images,
    String? logo,
    String? coverImage,
    List<Video>? videos,
    Analytics? analytics,
    Seo? seo,
    List<AuditLog>? auditLog,
    Settings? settings,
    DateTime? archivedAt,
    dynamic archivedBy,
    String? archiveReason,
    ModerationStatus? moderationStatus,
    String? type,
    String? collaborationType,
    GroupSettings? groupSettings,
    FinancialProjections? financialProjections,
    Impact? impact,
    List<Risk>? risks,
    DateTime? createdAt,
    DateTime? updatedAt,
    num? fundingProgress,
    num? daysRemaining,
    num? durationMonths,
    String? riskLevel,
  }) {
    return ProjectEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      description: description ?? this.description,
      shortDescription: shortDescription ?? this.shortDescription,
      category: category ?? this.category,
      sector: sector ?? this.sector,
      subSector: subSector ?? this.subSector,
      tags: tags ?? this.tags,
      owner: owner ?? this.owner,
      team: team ?? this.team,
      location: location ?? this.location,
      fundingGoal: fundingGoal ?? this.fundingGoal,
      currentFunding: currentFunding ?? this.currentFunding,
      currency: currency ?? this.currency,
      fundingType: fundingType ?? this.fundingType,
      minimumInvestment: minimumInvestment ?? this.minimumInvestment,
      maximumInvestment: maximumInvestment ?? this.maximumInvestment,
      expectedReturn: expectedReturn ?? this.expectedReturn,
      status: status ?? this.status,
      visibility: visibility ?? this.visibility,
      featured: featured ?? this.featured,
      priority: priority ?? this.priority,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      fundingDeadline: fundingDeadline ?? this.fundingDeadline,
      duration: duration ?? this.duration,
      images: images ?? this.images,
      logo: logo ?? this.logo,
      coverImage: coverImage ?? this.coverImage,
      videos: videos ?? this.videos,
      analytics: analytics ?? this.analytics,
      seo: seo ?? this.seo,
      auditLog: auditLog ?? this.auditLog,
      settings: settings ?? this.settings,
      archivedAt: archivedAt ?? this.archivedAt,
      archivedBy: archivedBy ?? this.archivedBy,
      archiveReason: archiveReason ?? this.archiveReason,
      moderationStatus: moderationStatus ?? this.moderationStatus,
      type: type ?? this.type,
      collaborationType: collaborationType ?? this.collaborationType,
      groupSettings: groupSettings ?? this.groupSettings,
      financialProjections: financialProjections ?? this.financialProjections,
      impact: impact ?? this.impact,
      risks: risks ?? this.risks,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      fundingProgress: fundingProgress ?? this.fundingProgress,
      daysRemaining: daysRemaining ?? this.daysRemaining,
      durationMonths: durationMonths ?? this.durationMonths,
      riskLevel: riskLevel ?? this.riskLevel,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        slug,
        description,
        shortDescription,
        category,
        sector,
        subSector,
        tags,
        owner,
        team,
        location,
        fundingGoal,
        currentFunding,
        currency,
        fundingType,
        minimumInvestment,
        maximumInvestment,
        expectedReturn,
        status,
        visibility,
        featured,
        priority,
        startDate,
        endDate,
        fundingDeadline,
        duration,
        images,
        logo,
        coverImage,
        videos,
        analytics,
        seo,
        auditLog,
        settings,
        archivedAt,
        archivedBy,
        archiveReason,
        moderationStatus,
        type,
        collaborationType,
        groupSettings,
        financialProjections,
        impact,
        risks,
        createdAt,
        updatedAt,
        fundingProgress,
        daysRemaining,
        durationMonths,
        riskLevel,
      ];
}

// Sous-classes pour les structures imbriquées
class TeamMember extends Equatable {
  final dynamic user; // Peut être null, String (ID), ou UserEntity (populé)
  final String? role;
  final Permissions? permissions;
  final String? bio;
  final String? linkedin;
  final String? email;
  final bool? isLead;
  final DateTime? joinedAt;

  const TeamMember({
    this.user,
    this.role,
    this.permissions,
    this.bio,
    this.linkedin,
    this.email,
    this.isLead,
    this.joinedAt,
  });

  @override
  List<Object?> get props => [
        user,
        role,
        permissions,
        bio,
        linkedin,
        email,
        isLead,
        joinedAt,
      ];
}

class Permissions extends Equatable {
  final bool? canEdit;
  final bool? canManageTeam;
  final bool? canViewFinancials;
  final bool? canPostUpdates;

  const Permissions({
    this.canEdit,
    this.canManageTeam,
    this.canViewFinancials,
    this.canPostUpdates,
  });

  @override
  List<Object?> get props => [
        canEdit,
        canManageTeam,
        canViewFinancials,
        canPostUpdates,
      ];
}

class Location extends Equatable {
  final String country;
  final String? city;
  final String? region;
  final String? address;
  final List<num>? coordinates;

  const Location({
    required this.country,
    this.city,
    this.region,
    this.address,
    this.coordinates,
  });

  @override
  List<Object?> get props => [
        country,
        city,
        region,
        address,
        coordinates,
      ];
}

class ExpectedReturn extends Equatable {
  final num? percentage;
  final String? period;

  const ExpectedReturn({
    this.percentage,
    this.period,
  });

  @override
  List<Object?> get props => [percentage, period];
}

class Image extends Equatable {
  final String url;
  final String? filename;
  final String? caption;
  final bool? isPrimary;
  final DateTime? uploadedAt;

  const Image({
    required this.url,
    this.filename,
    this.caption,
    this.isPrimary,
    this.uploadedAt,
  });

  @override
  List<Object?> get props => [
        url,
        filename,
        caption,
        isPrimary,
        uploadedAt,
      ];
}

class Video extends Equatable {
  final String url;
  final String? title;
  final String? description;
  final String? thumbnail;
  final num? duration;
  final DateTime? uploadedAt;

  const Video({
    required this.url,
    this.title,
    this.description,
    this.thumbnail,
    this.duration,
    this.uploadedAt,
  });

  @override
  List<Object?> get props => [
        url,
        title,
        description,
        thumbnail,
        duration,
        uploadedAt,
      ];
}

class Analytics extends Equatable {
  final num? views;
  final num? uniqueViews;
  final num? likes;
  final num? shares;
  final num? bookmarks;
  final num? investorInterest;
  final num? comments;
  final num? followers;

  const Analytics({
    this.views,
    this.uniqueViews,
    this.likes,
    this.shares,
    this.bookmarks,
    this.investorInterest,
    this.comments,
    this.followers,
  });

  @override
  List<Object?> get props => [
        views,
        uniqueViews,
        likes,
        shares,
        bookmarks,
        investorInterest,
        comments,
        followers,
      ];
}

class Seo extends Equatable {
  final String? metaTitle;
  final String? metaDescription;
  final List<String>? keywords;

  const Seo({
    this.metaTitle,
    this.metaDescription,
    this.keywords,
  });

  @override
  List<Object?> get props => [metaTitle, metaDescription, keywords];
}

class AuditLog extends Equatable {
  final String? action;
  final dynamic performedBy; // Peut être null, String (ID), ou UserEntity (populé)
  final DateTime? timestamp;
  final dynamic details; // Mixed type, conservé comme dynamic

  const AuditLog({
    this.action,
    this.performedBy,
    this.timestamp,
    this.details,
  });

  @override
  List<Object?> get props => [action, performedBy, timestamp, details];
}

class Settings extends Equatable {
  final bool? allowComments;
  final bool? allowInvestments;
  final bool? autoApproveInvestments;
  final bool? notifyOnInvestment;
  final bool? publicFinancials;

  const Settings({
    this.allowComments,
    this.allowInvestments,
    this.autoApproveInvestments,
    this.notifyOnInvestment,
    this.publicFinancials,
  });

  @override
  List<Object?> get props => [
        allowComments,
        allowInvestments,
        autoApproveInvestments,
        notifyOnInvestment,
        publicFinancials,
      ];
}

class ModerationStatus extends Equatable {
  final String? status;
  final dynamic reviewedBy; // Peut être null, String (ID), ou UserEntity (populé)
  final DateTime? reviewedAt;
  final String? comments;
  final String? rejectionReason;
  final num? overallScore;
  final Scores? scores;

  const ModerationStatus({
    this.status,
    this.reviewedBy,
    this.reviewedAt,
    this.comments,
    this.rejectionReason,
    this.overallScore,
    this.scores,
  });

  @override
  List<Object?> get props => [
        status,
        reviewedBy,
        reviewedAt,
        comments,
        rejectionReason,
        overallScore,
        scores,
      ];
}

class Scores extends Equatable {
  final num? feasibility;
  final num? impact;
  final num? team;
  final num? financials;
  final num? market;

  const Scores({
    this.feasibility,
    this.impact,
    this.team,
    this.financials,
    this.market,
  });

  @override
  List<Object?> get props => [feasibility, impact, team, financials, market];
}

class GroupSettings extends Equatable {
  final bool? isOpen;
  final num? maxMembers;
  final bool? requiresApproval;

  const GroupSettings({
    this.isOpen,
    this.maxMembers,
    this.requiresApproval,
  });

  @override
  List<Object?> get props => [isOpen, maxMembers, requiresApproval];
}

class FinancialProjections extends Equatable {
  final List<Revenue>? revenue;
  final List<Expense>? expenses;
  final List<Profit>? profit;
  final BreakEvenPoint? breakEvenPoint;

  const FinancialProjections({
    this.revenue,
    this.expenses,
    this.profit,
    this.breakEvenPoint,
  });

  @override
  List<Object?> get props => [revenue, expenses, profit, breakEvenPoint];
}

class Revenue extends Equatable {
  final num? year;
  final num? amount;
  final String? description;

  const Revenue({
    this.year,
    this.amount,
    this.description,
  });

  @override
  List<Object?> get props => [year, amount, description];
}

class Expense extends Equatable {
  final num? year;
  final num? amount;
  final String? category;
  final String? description;

  const Expense({
    this.year,
    this.amount,
    this.category,
    this.description,
  });

  @override
  List<Object?> get props => [year, amount, category, description];
}

class Profit extends Equatable {
  final num? year;
  final num? amount;

  const Profit({
    this.year,
    this.amount,
  });

  @override
  List<Object?> get props => [year, amount];
}

class BreakEvenPoint extends Equatable {
  final num? months;
  final String? description;

  const BreakEvenPoint({
    this.months,
    this.description,
  });

  @override
  List<Object?> get props => [months, description];
}

class Impact extends Equatable {
  final Social? social;
  final String? environmental;
  final String? economic;

  const Impact({
    this.social,
    this.environmental,
    this.economic,
  });

  @override
  List<Object?> get props => [social, environmental, economic];
}

class Social extends Equatable {
  final String? description;
  final List<Metric>? metrics;
  final List<num>? sdgGoals;
  final Beneficiaries? beneficiaries;

  const Social({
    this.description,
    this.metrics,
    this.sdgGoals,
    this.beneficiaries,
  });

  @override
  List<Object?> get props => [description, metrics, sdgGoals, beneficiaries];
}

class Metric extends Equatable {
  final String? name;
  final num? target;
  final String? unit;
  final String? description;

  const Metric({
    this.name,
    this.target,
    this.unit,
    this.description,
  });

  @override
  List<Object?> get props => [name, target, unit, description];
}

class Beneficiaries extends Equatable {
  final num? direct;
  final num? indirect;
  final String? description;

  const Beneficiaries({
    this.direct,
    this.indirect,
    this.description,
  });

  @override
  List<Object?> get props => [direct, indirect, description];
}

class Risk extends Equatable {
  final String type;
  final String description;
  final String probability;
  final String impact;
  final String mitigation;

  const Risk({
    required this.type,
    required this.description,
    required this.probability,
    required this.impact,
    required this.mitigation,
  });

  @override
  List<Object?> get props => [type, description, probability, impact, mitigation];
}