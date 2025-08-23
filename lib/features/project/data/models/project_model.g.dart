// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectModelImpl _$$ProjectModelImplFromJson(Map<String, dynamic> json) =>
    _$ProjectModelImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String,
      shortDescription: json['shortDescription'] as String?,
      category: _categoryFromJson(json['category']),
      sector: json['sector'] as String,
      subSector: json['subSector'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      owner: _ownerFromJson(json['owner']),
      team: (json['team'] as List<dynamic>?)
              ?.map((e) => TeamMemberModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      fundingGoal: json['fundingGoal'] as num,
      currentFunding: json['currentFunding'] as num?,
      currency: json['currency'] as String?,
      fundingType: json['fundingType'] as String?,
      minimumInvestment: json['minimumInvestment'] as num?,
      maximumInvestment: json['maximumInvestment'] as num?,
      expectedReturn: json['expectedReturn'] == null
          ? null
          : ExpectedReturnModel.fromJson(
              json['expectedReturn'] as Map<String, dynamic>),
      status: json['status'] as String?,
      visibility: json['visibility'] as String?,
      featured: json['featured'] as bool?,
      priority: json['priority'] as String?,
      startDate: _dateTimeFromJson(json['startDate'] as String?),
      endDate: _dateTimeFromJson(json['endDate'] as String?),
      fundingDeadline: _dateTimeFromJson(json['fundingDeadline'] as String?),
      duration: json['duration'] as num?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      logo: json['logo'] as String?,
      coverImage: json['coverImage'] as String?,
      videos: (json['videos'] as List<dynamic>?)
              ?.map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      analytics: json['analytics'] == null
          ? null
          : AnalyticsModel.fromJson(json['analytics'] as Map<String, dynamic>),
      seo: json['seo'] == null
          ? null
          : SeoModel.fromJson(json['seo'] as Map<String, dynamic>),
      auditLog: (json['auditLog'] as List<dynamic>?)
              ?.map((e) => AuditLogModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      settings: json['settings'] == null
          ? null
          : SettingsModel.fromJson(json['settings'] as Map<String, dynamic>),
      archivedAt: _dateTimeFromJson(json['archivedAt'] as String?),
      archivedBy: _archivedByFromJson(json['archivedBy']),
      archiveReason: json['archiveReason'] as String?,
      moderationStatus: json['moderationStatus'] == null
          ? null
          : ModerationStatusModel.fromJson(
              json['moderationStatus'] as Map<String, dynamic>),
      type: json['type'] as String?,
      collaborationType: json['collaborationType'] as String?,
      groupSettings: json['groupSettings'] == null
          ? null
          : GroupSettingsModel.fromJson(
              json['groupSettings'] as Map<String, dynamic>),
      financialProjections: json['financialProjections'] == null
          ? null
          : FinancialProjectionsModel.fromJson(
              json['financialProjections'] as Map<String, dynamic>),
      impact: json['impact'] == null
          ? null
          : ImpactModel.fromJson(json['impact'] as Map<String, dynamic>),
      risks: (json['risks'] as List<dynamic>?)
              ?.map((e) => RiskModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
      fundingProgress: json['fundingProgress'] as num?,
      daysRemaining: json['daysRemaining'] as num?,
      durationMonths: json['durationMonths'] as num?,
      riskLevel: json['riskLevel'] as String?,
    );

Map<String, dynamic> _$$ProjectModelImplToJson(_$ProjectModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'category': _categoryToJson(instance.category),
      'sector': instance.sector,
      'subSector': instance.subSector,
      'tags': instance.tags,
      'owner': _ownerToJson(instance.owner),
      'team': instance.team,
      'location': instance.location,
      'fundingGoal': instance.fundingGoal,
      'currentFunding': instance.currentFunding,
      'currency': instance.currency,
      'fundingType': instance.fundingType,
      'minimumInvestment': instance.minimumInvestment,
      'maximumInvestment': instance.maximumInvestment,
      'expectedReturn': instance.expectedReturn,
      'status': instance.status,
      'visibility': instance.visibility,
      'featured': instance.featured,
      'priority': instance.priority,
      'startDate': _dateTimeToJson(instance.startDate),
      'endDate': _dateTimeToJson(instance.endDate),
      'fundingDeadline': _dateTimeToJson(instance.fundingDeadline),
      'duration': instance.duration,
      'images': instance.images,
      'logo': instance.logo,
      'coverImage': instance.coverImage,
      'videos': instance.videos,
      'analytics': instance.analytics,
      'seo': instance.seo,
      'auditLog': instance.auditLog,
      'settings': instance.settings,
      'archivedAt': _dateTimeToJson(instance.archivedAt),
      'archivedBy': _archivedByToJson(instance.archivedBy),
      'archiveReason': instance.archiveReason,
      'moderationStatus': instance.moderationStatus,
      'type': instance.type,
      'collaborationType': instance.collaborationType,
      'groupSettings': instance.groupSettings,
      'financialProjections': instance.financialProjections,
      'impact': instance.impact,
      'risks': instance.risks,
      'createdAt': _dateTimeToJson(instance.createdAt),
      'updatedAt': _dateTimeToJson(instance.updatedAt),
      'fundingProgress': instance.fundingProgress,
      'daysRemaining': instance.daysRemaining,
      'durationMonths': instance.durationMonths,
      'riskLevel': instance.riskLevel,
    };

_$TeamMemberModelImpl _$$TeamMemberModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamMemberModelImpl(
      user: _userFromJson(json['user']),
      role: json['role'] as String?,
      permissions: json['permissions'] == null
          ? null
          : PermissionsModel.fromJson(
              json['permissions'] as Map<String, dynamic>),
      bio: json['bio'] as String?,
      linkedin: json['linkedin'] as String?,
      email: json['email'] as String?,
      isLead: json['isLead'] as bool?,
      joinedAt: _dateTimeFromJson(json['joinedAt'] as String?),
    );

Map<String, dynamic> _$$TeamMemberModelImplToJson(
        _$TeamMemberModelImpl instance) =>
    <String, dynamic>{
      'user': _userToJson(instance.user),
      'role': instance.role,
      'permissions': instance.permissions,
      'bio': instance.bio,
      'linkedin': instance.linkedin,
      'email': instance.email,
      'isLead': instance.isLead,
      'joinedAt': _dateTimeToJson(instance.joinedAt),
    };

_$PermissionsModelImpl _$$PermissionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PermissionsModelImpl(
      canEdit: json['canEdit'] as bool?,
      canManageTeam: json['canManageTeam'] as bool?,
      canViewFinancials: json['canViewFinancials'] as bool?,
      canPostUpdates: json['canPostUpdates'] as bool?,
    );

Map<String, dynamic> _$$PermissionsModelImplToJson(
        _$PermissionsModelImpl instance) =>
    <String, dynamic>{
      'canEdit': instance.canEdit,
      'canManageTeam': instance.canManageTeam,
      'canViewFinancials': instance.canViewFinancials,
      'canPostUpdates': instance.canPostUpdates,
    };

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      country: json['country'] as String,
      city: json['city'] as String?,
      region: json['region'] as String?,
      address: json['address'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
              ?.map((e) => e as num)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'city': instance.city,
      'region': instance.region,
      'address': instance.address,
      'coordinates': instance.coordinates,
    };

_$ExpectedReturnModelImpl _$$ExpectedReturnModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpectedReturnModelImpl(
      percentage: json['percentage'] as num?,
      period: json['period'] as String?,
    );

Map<String, dynamic> _$$ExpectedReturnModelImplToJson(
        _$ExpectedReturnModelImpl instance) =>
    <String, dynamic>{
      'percentage': instance.percentage,
      'period': instance.period,
    };

_$ImageModelImpl _$$ImageModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageModelImpl(
      url: json['url'] as String,
      filename: json['filename'] as String?,
      caption: json['caption'] as String?,
      isPrimary: json['isPrimary'] as bool?,
      uploadedAt: _dateTimeFromJson(json['uploadedAt'] as String?),
    );

Map<String, dynamic> _$$ImageModelImplToJson(_$ImageModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'filename': instance.filename,
      'caption': instance.caption,
      'isPrimary': instance.isPrimary,
      'uploadedAt': _dateTimeToJson(instance.uploadedAt),
    };

_$VideoModelImpl _$$VideoModelImplFromJson(Map<String, dynamic> json) =>
    _$VideoModelImpl(
      url: json['url'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] as String?,
      duration: json['duration'] as num?,
      uploadedAt: _dateTimeFromJson(json['uploadedAt'] as String?),
    );

Map<String, dynamic> _$$VideoModelImplToJson(_$VideoModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'duration': instance.duration,
      'uploadedAt': _dateTimeToJson(instance.uploadedAt),
    };

_$AnalyticsModelImpl _$$AnalyticsModelImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticsModelImpl(
      views: json['views'] as num?,
      uniqueViews: json['uniqueViews'] as num?,
      likes: json['likes'] as num?,
      shares: json['shares'] as num?,
      bookmarks: json['bookmarks'] as num?,
      investorInterest: json['investorInterest'] as num?,
      comments: json['comments'] as num?,
      followers: json['followers'] as num?,
    );

Map<String, dynamic> _$$AnalyticsModelImplToJson(
        _$AnalyticsModelImpl instance) =>
    <String, dynamic>{
      'views': instance.views,
      'uniqueViews': instance.uniqueViews,
      'likes': instance.likes,
      'shares': instance.shares,
      'bookmarks': instance.bookmarks,
      'investorInterest': instance.investorInterest,
      'comments': instance.comments,
      'followers': instance.followers,
    };

_$SeoModelImpl _$$SeoModelImplFromJson(Map<String, dynamic> json) =>
    _$SeoModelImpl(
      metaTitle: json['metaTitle'] as String?,
      metaDescription: json['metaDescription'] as String?,
      keywords: (json['keywords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SeoModelImplToJson(_$SeoModelImpl instance) =>
    <String, dynamic>{
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'keywords': instance.keywords,
    };

_$AuditLogModelImpl _$$AuditLogModelImplFromJson(Map<String, dynamic> json) =>
    _$AuditLogModelImpl(
      action: json['action'] as String?,
      performedBy: _performedByFromJson(json['performedBy']),
      timestamp: _dateTimeFromJson(json['timestamp'] as String?),
      details: json['details'],
    );

Map<String, dynamic> _$$AuditLogModelImplToJson(_$AuditLogModelImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'performedBy': _performedByToJson(instance.performedBy),
      'timestamp': _dateTimeToJson(instance.timestamp),
      'details': instance.details,
    };

_$SettingsModelImpl _$$SettingsModelImplFromJson(Map<String, dynamic> json) =>
    _$SettingsModelImpl(
      allowComments: json['allowComments'] as bool?,
      allowInvestments: json['allowInvestments'] as bool?,
      autoApproveInvestments: json['autoApproveInvestments'] as bool?,
      notifyOnInvestment: json['notifyOnInvestment'] as bool?,
      publicFinancials: json['publicFinancials'] as bool?,
    );

Map<String, dynamic> _$$SettingsModelImplToJson(_$SettingsModelImpl instance) =>
    <String, dynamic>{
      'allowComments': instance.allowComments,
      'allowInvestments': instance.allowInvestments,
      'autoApproveInvestments': instance.autoApproveInvestments,
      'notifyOnInvestment': instance.notifyOnInvestment,
      'publicFinancials': instance.publicFinancials,
    };

_$ModerationStatusModelImpl _$$ModerationStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationStatusModelImpl(
      status: json['status'] as String?,
      reviewedBy: _reviewedByFromJson(json['reviewedBy']),
      reviewedAt: _dateTimeFromJson(json['reviewedAt'] as String?),
      comments: json['comments'] as String?,
      rejectionReason: json['rejectionReason'] as String?,
      overallScore: json['overallScore'] as num?,
      scores: json['scores'] == null
          ? null
          : ScoresModel.fromJson(json['scores'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModerationStatusModelImplToJson(
        _$ModerationStatusModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'reviewedBy': _reviewedByToJson(instance.reviewedBy),
      'reviewedAt': _dateTimeToJson(instance.reviewedAt),
      'comments': instance.comments,
      'rejectionReason': instance.rejectionReason,
      'overallScore': instance.overallScore,
      'scores': instance.scores,
    };

_$ScoresModelImpl _$$ScoresModelImplFromJson(Map<String, dynamic> json) =>
    _$ScoresModelImpl(
      feasibility: json['feasibility'] as num?,
      impact: json['impact'] as num?,
      team: json['team'] as num?,
      financials: json['financials'] as num?,
      market: json['market'] as num?,
    );

Map<String, dynamic> _$$ScoresModelImplToJson(_$ScoresModelImpl instance) =>
    <String, dynamic>{
      'feasibility': instance.feasibility,
      'impact': instance.impact,
      'team': instance.team,
      'financials': instance.financials,
      'market': instance.market,
    };

_$GroupSettingsModelImpl _$$GroupSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupSettingsModelImpl(
      isOpen: json['isOpen'] as bool?,
      maxMembers: json['maxMembers'] as num?,
      requiresApproval: json['requiresApproval'] as bool?,
    );

Map<String, dynamic> _$$GroupSettingsModelImplToJson(
        _$GroupSettingsModelImpl instance) =>
    <String, dynamic>{
      'isOpen': instance.isOpen,
      'maxMembers': instance.maxMembers,
      'requiresApproval': instance.requiresApproval,
    };

_$FinancialProjectionsModelImpl _$$FinancialProjectionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FinancialProjectionsModelImpl(
      revenue: (json['revenue'] as List<dynamic>?)
              ?.map((e) => RevenueModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      expenses: (json['expenses'] as List<dynamic>?)
              ?.map((e) => ExpenseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      profit: (json['profit'] as List<dynamic>?)
              ?.map((e) => ProfitModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      breakEvenPoint: json['breakEvenPoint'] == null
          ? null
          : BreakEvenPointModel.fromJson(
              json['breakEvenPoint'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FinancialProjectionsModelImplToJson(
        _$FinancialProjectionsModelImpl instance) =>
    <String, dynamic>{
      'revenue': instance.revenue,
      'expenses': instance.expenses,
      'profit': instance.profit,
      'breakEvenPoint': instance.breakEvenPoint,
    };

_$RevenueModelImpl _$$RevenueModelImplFromJson(Map<String, dynamic> json) =>
    _$RevenueModelImpl(
      year: json['year'] as num?,
      amount: json['amount'] as num?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$RevenueModelImplToJson(_$RevenueModelImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'amount': instance.amount,
      'description': instance.description,
    };

_$ExpenseModelImpl _$$ExpenseModelImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseModelImpl(
      year: json['year'] as num?,
      amount: json['amount'] as num?,
      category: json['category'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ExpenseModelImplToJson(_$ExpenseModelImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'amount': instance.amount,
      'category': instance.category,
      'description': instance.description,
    };

_$ProfitModelImpl _$$ProfitModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfitModelImpl(
      year: json['year'] as num?,
      amount: json['amount'] as num?,
    );

Map<String, dynamic> _$$ProfitModelImplToJson(_$ProfitModelImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'amount': instance.amount,
    };

_$BreakEvenPointModelImpl _$$BreakEvenPointModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BreakEvenPointModelImpl(
      months: json['months'] as num?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$BreakEvenPointModelImplToJson(
        _$BreakEvenPointModelImpl instance) =>
    <String, dynamic>{
      'months': instance.months,
      'description': instance.description,
    };

_$ImpactModelImpl _$$ImpactModelImplFromJson(Map<String, dynamic> json) =>
    _$ImpactModelImpl(
      social: json['social'] == null
          ? null
          : SocialModel.fromJson(json['social'] as Map<String, dynamic>),
      environmental: json['environmental'] as String?,
      economic: json['economic'] as String?,
    );

Map<String, dynamic> _$$ImpactModelImplToJson(_$ImpactModelImpl instance) =>
    <String, dynamic>{
      'social': instance.social,
      'environmental': instance.environmental,
      'economic': instance.economic,
    };

_$SocialModelImpl _$$SocialModelImplFromJson(Map<String, dynamic> json) =>
    _$SocialModelImpl(
      description: json['description'] as String?,
      metrics: (json['metrics'] as List<dynamic>?)
              ?.map((e) => MetricModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sdgGoals:
          (json['sdgGoals'] as List<dynamic>?)?.map((e) => e as num).toList() ??
              const [],
      beneficiaries: json['beneficiaries'] == null
          ? null
          : BeneficiariesModel.fromJson(
              json['beneficiaries'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SocialModelImplToJson(_$SocialModelImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'metrics': instance.metrics,
      'sdgGoals': instance.sdgGoals,
      'beneficiaries': instance.beneficiaries,
    };

_$MetricModelImpl _$$MetricModelImplFromJson(Map<String, dynamic> json) =>
    _$MetricModelImpl(
      name: json['name'] as String?,
      target: json['target'] as num?,
      unit: json['unit'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$MetricModelImplToJson(_$MetricModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'target': instance.target,
      'unit': instance.unit,
      'description': instance.description,
    };

_$BeneficiariesModelImpl _$$BeneficiariesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BeneficiariesModelImpl(
      direct: json['direct'] as num?,
      indirect: json['indirect'] as num?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$BeneficiariesModelImplToJson(
        _$BeneficiariesModelImpl instance) =>
    <String, dynamic>{
      'direct': instance.direct,
      'indirect': instance.indirect,
      'description': instance.description,
    };

_$RiskModelImpl _$$RiskModelImplFromJson(Map<String, dynamic> json) =>
    _$RiskModelImpl(
      type: json['type'] as String,
      description: json['description'] as String,
      probability: json['probability'] as String,
      impact: json['impact'] as String,
      mitigation: json['mitigation'] as String,
    );

Map<String, dynamic> _$$RiskModelImplToJson(_$RiskModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'description': instance.description,
      'probability': instance.probability,
      'impact': instance.impact,
      'mitigation': instance.mitigation,
    };
