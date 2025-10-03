
class ProjectDto {
  final String id;
  final String title;
  final String description;
  final double? budget;
  final String? status;
  final Map<String, dynamic> owner;
  final DateTime createdAt;
  final String internalId; // maps "_id"
  final String? slug;
  final String? shortDescription;
  final String? category;
  final String sector;
  final double fundingGoal;
  final double? currentFunding;
  final String? currency;
  final String? visibility;
  final Map<String, dynamic>? location;
  final List<dynamic>? images;
  final List<dynamic>? team;
  final DateTime? updatedAt;
  final String? subSector;
  final List<dynamic>? tags;
  final String? fundingType;
  final double? minimumInvestment;
  final double? maximumInvestment;
  final Map<String, dynamic>? expectedReturn;
  final bool? featured;
  final int? priority;
  final DateTime? startDate;
  final DateTime? endDate;
  final DateTime? fundingDeadline;
  final int? duration;
  final String? logo;
  final String? coverImage;
  final List<dynamic>? videos;
  final Map<String, dynamic>? analytics;
  final Map<String, dynamic>? seo;
  final List<dynamic>? auditLog;
  final Map<String, dynamic>? settings;
  final DateTime? archivedAt;
  final Map<String, dynamic>? archivedBy;
  final String? archiveReason;
  final Map<String, dynamic>? moderationStatus;
  final String? type;
  final String? collaborationType;
  final Map<String, dynamic>? groupSettings;
  final Map<String, dynamic>? impact;
  final List<dynamic>? risks;
  final double? fundingProgress;
  final int? daysRemaining;
  final int? durationMonths;
  final String? riskLevel;

  const ProjectDto({
    required this.id,
    required this.title,
    required this.description,
    this.budget,
    this.status,
    required this.owner,
    required this.createdAt,
    required this.internalId,
    this.slug,
    this.shortDescription,
    this.category,
    required this.sector,
    required this.fundingGoal,
    this.currentFunding,
    this.currency,
    this.visibility,
    this.location,
    this.images,
    this.team,
    this.updatedAt,
    this.subSector,
    this.tags,
    this.fundingType,
    this.minimumInvestment,
    this.maximumInvestment,
    this.expectedReturn,
    this.featured,
    this.priority,
    this.startDate,
    this.endDate,
    this.fundingDeadline,
    this.duration,
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
    this.impact,
    this.risks,
    this.fundingProgress,
    this.daysRemaining,
    this.durationMonths,
    this.riskLevel,
  });

  /// ✅ Parse JSON from API
  factory ProjectDto.fromJson(Map<String, dynamic> json) {
    return ProjectDto(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      budget: (json['budget'] as num?)?.toDouble(),
      status: json['status'],
      owner: json['owner'] ?? {},
      createdAt: DateTime.parse(json['createdAt']),
      internalId: json['_id'] ?? '',
      slug: json['slug'],
      shortDescription: json['shortDescription'],
      category: json['category'] ?? '',
      sector: json['sector'] ?? '',
      fundingGoal: (json['fundingGoal'] as num?)?.toDouble() ?? 0.0,
      currentFunding: (json['currentFunding'] as num?)?.toDouble(),
      currency: json['currency'],
      visibility: json['visibility'],
      location: json['location'],
      images: json['images'],
      team: json['team'],
      updatedAt: DateTime.parse(json['updatedAt']),
      subSector: json['subSector'],
      tags: json['tags'],
      fundingType: json['fundingType'],
      minimumInvestment: (json['minimumInvestment'] as num?)?.toDouble(),
      maximumInvestment: (json['maximumInvestment'] as num?)?.toDouble(),
      expectedReturn: json['expectedReturn'],
      featured: json['featured'],
      priority: json['priority'],
      startDate: json['startDate'] != null ? DateTime.parse(json['startDate']) : null,
      endDate: json['endDate'] != null ? DateTime.parse(json['endDate']) : null,
      fundingDeadline: json['fundingDeadline'] != null ? DateTime.parse(json['fundingDeadline']) : null,
      duration: json['duration'],
      logo: json['logo'],
      coverImage: json['coverImage'],
      videos: json['videos'],
      analytics: json['analytics'],
      seo: json['seo'],
      auditLog: json['auditLog'],
      settings: json['settings'],
      archivedAt: json['archivedAt'] != null ? DateTime.parse(json['archivedAt']) : null,
      archivedBy: json['archivedBy'],
      archiveReason: json['archiveReason'],
      moderationStatus: json['moderationStatus'],
      type: json['type'],
      collaborationType: json['collaborationType'],
      groupSettings: json['groupSettings'],
      impact: json['impact'],
      risks: json['risks'],
      fundingProgress: (json['fundingProgress'] as num?)?.toDouble(),
      daysRemaining: json['daysRemaining'],
      durationMonths: json['durationMonths'],
      riskLevel: json['riskLevel'],
    );
  }

  /// ✅ Convert back to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'budget': budget,
      'status': status,
      'owner': owner,
      'createdAt': createdAt.toIso8601String(),
      '_id': internalId,
      'slug': slug,
      'shortDescription': shortDescription,
      'category': category,
      'sector': sector,
      'fundingGoal': fundingGoal,
      'currentFunding': currentFunding,
      'currency': currency,
      'visibility': visibility,
      'location': location,
      'images': images,
      'team': team,
      'updatedAt': updatedAt?.toIso8601String(),
      'subSector': subSector,
      'tags': tags,
      'fundingType': fundingType,
      'minimumInvestment': minimumInvestment,
      'maximumInvestment': maximumInvestment,
      'expectedReturn': expectedReturn,
      'featured': featured,
      'priority': priority,
      'startDate': startDate?.toIso8601String(),
      'endDate': endDate?.toIso8601String(),
      'fundingDeadline': fundingDeadline?.toIso8601String(),
      'duration': duration,
      'logo': logo,
      'coverImage': coverImage,
      'videos': videos,
      'analytics': analytics,
      'seo': seo,
      'auditLog': auditLog,
      'settings': settings,
      'archivedAt': archivedAt?.toIso8601String(),
      'archivedBy': archivedBy,
      'archiveReason': archiveReason,
      'moderationStatus': moderationStatus,
      'type': type,
      'collaborationType': collaborationType,
      'groupSettings': groupSettings,
      'impact': impact,
      'risks': risks,
      'fundingProgress': fundingProgress,
      'daysRemaining': daysRemaining,
      'durationMonths': durationMonths,
      'riskLevel': riskLevel,
    };
  }
}