import 'package:find_invest_mobile/features/project/data/models/project_model.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart'
    as usermodel;
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';
import 'package:find_invest_mobile/features/project_category/data/extensions/project_category_extensions.dart';
import 'package:find_invest_mobile/features/project_category/data/models/project_category_model.dart';

extension ProjectModelExtensions on ProjectModel {
  ProjectEntity toEntity() => ProjectEntity(
        id: id,
        title: title,
        slug: slug,
        description: description,
        shortDescription: shortDescription,
        category: _convertCategory(category),
        sector: sector,
        subSector: subSector,
        tags: tags,
        owner: _convertOwner(owner),
        team: team?.map((member) => member.toEntity()).toList() ?? [],
        location: location?.toEntity(),
        fundingGoal: fundingGoal,
        currentFunding: currentFunding,
        currency: currency,
        fundingType: fundingType,
        minimumInvestment: minimumInvestment,
        maximumInvestment: maximumInvestment,
        expectedReturn: expectedReturn?.toEntity(),
        status: status,
        visibility: visibility,
        featured: featured,
        priority: priority,
        startDate: startDate,
        endDate: endDate,
        fundingDeadline: fundingDeadline,
        duration: duration,
        images: images?.map((img) => img.toEntity()).toList() ?? [],
        logo: logo,
        coverImage: coverImage,
        videos: videos?.map((vid) => vid.toEntity()).toList() ?? [],
        analytics: analytics?.toEntity(),
        seo: seo?.toEntity(),
        auditLog: auditLog?.map((log) => log.toEntity()).toList() ?? [],
        settings: settings?.toEntity(),
        archivedAt: archivedAt,
        archivedBy: _convertArchivedBy(archivedBy),
        archiveReason: archiveReason,
        moderationStatus: moderationStatus?.toEntity(),
        type: type,
        collaborationType: collaborationType,
        groupSettings: groupSettings?.toEntity(),
        financialProjections: financialProjections?.toEntity(),
        impact: impact?.toEntity(),
        risks: risks?.map((risk) => risk.toEntity()).toList() ?? [],
        createdAt: createdAt,
        updatedAt: updatedAt,
        fundingProgress: fundingProgress,
        daysRemaining: daysRemaining,
        durationMonths: durationMonths,
        riskLevel: riskLevel,
      );

  dynamic _convertCategory(dynamic category) {
    if (category == null) return null;
    if (category is String) return category;
    if (category is ProjectCategoryModel) return category.toEntity();
    throw Exception('Invalid category format');
  }

  dynamic _convertOwner(dynamic owner) {
    if (owner == null) return null;
    if (owner is String) return owner;
    if (owner is usermodel.UserModel) return owner.toEntity();
    throw Exception('Invalid owner format');
  }

  dynamic _convertArchivedBy(dynamic archivedBy) {
    if (archivedBy == null) return null;
    if (archivedBy is String) return archivedBy;
    if (archivedBy is usermodel.UserModel) return archivedBy.toEntity();
    throw Exception('Invalid archivedBy format');
  }
}

extension TeamMemberModelExtensions on TeamMemberModel {
  TeamMember toEntity() => TeamMember(
        user: _convertUser(user),
        role: role,
        permissions: permissions?.toEntity(),
        bio: bio,
        linkedin: linkedin,
        email: email,
        isLead: isLead,
        joinedAt: joinedAt,
      );

  dynamic _convertUser(dynamic user) {
    if (user == null) return null;
    if (user is String) return user;
    if (user is usermodel.UserModel) return user.toEntity();
    throw Exception('Invalid user format');
  }
}

extension PermissionsModelExtensions on PermissionsModel {
  Permissions toEntity() => Permissions(
        canEdit: canEdit,
        canManageTeam: canManageTeam,
        canViewFinancials: canViewFinancials,
        canPostUpdates: canPostUpdates,
      );
}

extension LocationModelExtensions on LocationModel {
  Location toEntity() => Location(
        country: country,
        city: city,
        region: region,
        address: address,
        coordinates: coordinates,
      );
}

extension ExpectedReturnModelExtensions on ExpectedReturnModel {
  ExpectedReturn toEntity() => ExpectedReturn(
        percentage: percentage,
        period: period,
      );
}

extension ImageModelExtensions on ImageModel {
  Image toEntity() => Image(
        url: url,
        filename: filename,
        caption: caption,
        isPrimary: isPrimary,
        uploadedAt: uploadedAt,
      );
}

extension VideoModelExtensions on VideoModel {
  Video toEntity() => Video(
        url: url,
        title: title,
        description: description,
        thumbnail: thumbnail,
        duration: duration,
        uploadedAt: uploadedAt,
      );
}

extension AnalyticsModelExtensions on AnalyticsModel {
  Analytics toEntity() => Analytics(
        views: views,
        uniqueViews: uniqueViews,
        likes: likes,
        shares: shares,
        bookmarks: bookmarks,
        investorInterest: investorInterest,
        comments: comments,
        followers: followers,
      );
}

extension SeoModelExtensions on SeoModel {
  Seo toEntity() => Seo(
        metaTitle: metaTitle,
        metaDescription: metaDescription,
        keywords: keywords,
      );
}

extension AuditLogModelExtensions on AuditLogModel {
  AuditLog toEntity() => AuditLog(
        action: action,
        performedBy: _convertPerformedBy(performedBy),
        timestamp: timestamp,
        details: details,
      );

  dynamic _convertPerformedBy(dynamic performedBy) {
    if (performedBy == null) return null;
    if (performedBy is String) return performedBy;
    if (performedBy is usermodel.UserModel) return performedBy.toEntity();
    throw Exception('Invalid performedBy format');
  }
}

extension SettingsModelExtensions on SettingsModel {
  Settings toEntity() => Settings(
        allowComments: allowComments,
        allowInvestments: allowInvestments,
        autoApproveInvestments: autoApproveInvestments,
        notifyOnInvestment: notifyOnInvestment,
        publicFinancials: publicFinancials,
      );
}

extension ModerationStatusModelExtensions on ModerationStatusModel {
  ModerationStatus toEntity() => ModerationStatus(
        status: status,
        reviewedBy: _convertReviewedBy(reviewedBy),
        reviewedAt: reviewedAt,
        comments: comments,
        rejectionReason: rejectionReason,
        overallScore: overallScore,
        scores: scores?.toEntity(),
      );

  dynamic _convertReviewedBy(dynamic reviewedBy) {
    if (reviewedBy == null) return null;
    if (reviewedBy is String) return reviewedBy;
    if (reviewedBy is usermodel.UserModel) return reviewedBy.toEntity();
    throw Exception('Invalid reviewedBy format');
  }
}

extension ScoresModelExtensions on ScoresModel {
  Scores toEntity() => Scores(
        feasibility: feasibility,
        impact: impact,
        team: team,
        financials: financials,
        market: market,
      );
}

extension GroupSettingsModelExtensions on GroupSettingsModel {
  GroupSettings toEntity() => GroupSettings(
        isOpen: isOpen,
        maxMembers: maxMembers,
        requiresApproval: requiresApproval,
      );
}

extension FinancialProjectionsModelExtensions on FinancialProjectionsModel {
  FinancialProjections toEntity() => FinancialProjections(
        revenue: revenue?.map((r) => r.toEntity()).toList(),
        expenses: expenses?.map((e) => e.toEntity()).toList(),
        profit: profit?.map((p) => p.toEntity()).toList(),
        breakEvenPoint: breakEvenPoint?.toEntity(),
      );
}

extension RevenueModelExtensions on RevenueModel {
  Revenue toEntity() => Revenue(
        year: year,
        amount: amount,
        description: description,
      );
}

extension ExpenseModelExtensions on ExpenseModel {
  Expense toEntity() => Expense(
        year: year,
        amount: amount,
        category: category,
        description: description,
      );
}

extension ProfitModelExtensions on ProfitModel {
  Profit toEntity() => Profit(
        year: year,
        amount: amount,
      );
}

extension BreakEvenPointModelExtensions on BreakEvenPointModel {
  BreakEvenPoint toEntity() => BreakEvenPoint(
        months: months,
        description: description,
      );
}

extension ImpactModelExtensions on ImpactModel {
  Impact toEntity() => Impact(
        social: social?.toEntity(),
        environmental: environmental,
        economic: economic,
      );
}

extension SocialModelExtensions on SocialModel {
  Social toEntity() => Social(
        description: description,
        metrics: metrics?.map((m) => m.toEntity()).toList(),
        sdgGoals: sdgGoals,
        beneficiaries: beneficiaries?.toEntity(),
      );
}

extension MetricModelExtensions on MetricModel {
  Metric toEntity() => Metric(
        name: name,
        target: target,
        unit: unit,
        description: description,
      );
}

extension BeneficiariesModelExtensions on BeneficiariesModel {
  Beneficiaries toEntity() => Beneficiaries(
        direct: direct,
        indirect: indirect,
        description: description,
      );
}

extension RiskModelExtensions on RiskModel {
  Risk toEntity() => Risk(
        type: type,
        description: description,
        probability: probability,
        impact: impact,
        mitigation: mitigation,
      );
}
