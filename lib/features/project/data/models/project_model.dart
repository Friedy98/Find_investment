import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/project_category/data/models/project_category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
class ProjectModel with _$ProjectModel {
  const ProjectModel._();

  factory ProjectModel({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String slug,
    required String description,
    String? shortDescription,
    @JsonKey(
      name: 'category',
      fromJson: _categoryFromJson,
      toJson: _categoryToJson,
    )
    dynamic category, // Peut être null, String (ID), ou ProjectCategoryModel (populé)
    required String sector,
    String? subSector,
    @Default([]) List<String>? tags,
    @JsonKey(
      name: 'owner',
      fromJson: _ownerFromJson,
      toJson: _ownerToJson,
    )
    dynamic owner, // Peut être null, String (ID), ou UserModel (populé)
    @Default([]) List<TeamMemberModel>? team,
    LocationModel? location,
    required num fundingGoal,
    num? currentFunding,
    String? currency,
    String? fundingType,
    num? minimumInvestment,
    num? maximumInvestment,
    ExpectedReturnModel? expectedReturn,
    String? status,
    String? visibility,
    bool? featured,
    String? priority,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? startDate,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? endDate,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? fundingDeadline,
    num? duration,
    @Default([]) List<ImageModel>? images,
    String? logo,
    String? coverImage,
    @Default([]) List<VideoModel>? videos,
    AnalyticsModel? analytics,
    SeoModel? seo,
    @Default([]) List<AuditLogModel>? auditLog,
    SettingsModel? settings,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? archivedAt,
    @JsonKey(
      name: 'archivedBy',
      fromJson: _archivedByFromJson,
      toJson: _archivedByToJson,
    )
    dynamic archivedBy, // Peut être null, String (ID), ou UserModel (populé)
    String? archiveReason,
    ModerationStatusModel? moderationStatus,
    String? type,
    String? collaborationType,
    GroupSettingsModel? groupSettings,
    FinancialProjectionsModel? financialProjections,
    ImpactModel? impact,
    @Default([]) List<RiskModel>? risks,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? updatedAt,
    num? fundingProgress, // Champ virtuel
    num? daysRemaining, // Champ virtuel
    num? durationMonths, // Champ virtuel
    String? riskLevel, // Champ virtuel
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);
}

// Sous-classes pour les structures imbriquées
@freezed
class TeamMemberModel with _$TeamMemberModel {
  const factory TeamMemberModel({
    @JsonKey(
      name: 'user',
      fromJson: _userFromJson,
      toJson: _userToJson,
    )
    dynamic user, // Peut être null, String (ID), ou UserModel (populé)
    String? role,
    PermissionsModel? permissions,
    String? bio,
    String? linkedin,
    String? email,
    bool? isLead,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? joinedAt,
  }) = _TeamMemberModel;

  factory TeamMemberModel.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberModelFromJson(json);
}

@freezed
class PermissionsModel with _$PermissionsModel {
  const factory PermissionsModel({
    bool? canEdit,
    bool? canManageTeam,
    bool? canViewFinancials,
    bool? canPostUpdates,
  }) = _PermissionsModel;

  factory PermissionsModel.fromJson(Map<String, dynamic> json) =>
      _$PermissionsModelFromJson(json);
}

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required String country,
    String? city,
    String? region,
    String? address,
    @Default([]) List<num>? coordinates,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

@freezed
class ExpectedReturnModel with _$ExpectedReturnModel {
  const factory ExpectedReturnModel({
    num? percentage,
    String? period,
  }) = _ExpectedReturnModel;

  factory ExpectedReturnModel.fromJson(Map<String, dynamic> json) =>
      _$ExpectedReturnModelFromJson(json);
}

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required String url,
    String? filename,
    String? caption,
    bool? isPrimary,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? uploadedAt,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel({
    required String url,
    String? title,
    String? description,
    String? thumbnail,
    num? duration,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? uploadedAt,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}

@freezed
class AnalyticsModel with _$AnalyticsModel {
  const factory AnalyticsModel({
    num? views,
    num? uniqueViews,
    num? likes,
    num? shares,
    num? bookmarks,
    num? investorInterest,
    num? comments,
    num? followers,
  }) = _AnalyticsModel;

  factory AnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsModelFromJson(json);
}

@freezed
class SeoModel with _$SeoModel {
  const factory SeoModel({
    String? metaTitle,
    String? metaDescription,
    @Default([]) List<String>? keywords,
  }) = _SeoModel;

  factory SeoModel.fromJson(Map<String, dynamic> json) =>
      _$SeoModelFromJson(json);
}

@freezed
class AuditLogModel with _$AuditLogModel {
  const factory AuditLogModel({
    String? action,
    @JsonKey(
      name: 'performedBy',
      fromJson: _performedByFromJson,
      toJson: _performedByToJson,
    )
    dynamic performedBy, // Peut être null, String (ID), ou UserModel (populé)
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? timestamp,
    dynamic details, // Mixed type, conservé comme dynamic
  }) = _AuditLogModel;

  factory AuditLogModel.fromJson(Map<String, dynamic> json) =>
      _$AuditLogModelFromJson(json);
}

@freezed
class SettingsModel with _$SettingsModel {
  const factory SettingsModel({
    bool? allowComments,
    bool? allowInvestments,
    bool? autoApproveInvestments,
    bool? notifyOnInvestment,
    bool? publicFinancials,
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelFromJson(json);
}

@freezed
class ModerationStatusModel with _$ModerationStatusModel {
  const factory ModerationStatusModel({
    String? status,
    @JsonKey(
      name: 'reviewedBy',
      fromJson: _reviewedByFromJson,
      toJson: _reviewedByToJson,
    )
    dynamic reviewedBy, // Peut être null, String (ID), ou UserModel (populé)
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? reviewedAt,
    String? comments,
    String? rejectionReason,
    num? overallScore,
    ScoresModel? scores,
  }) = _ModerationStatusModel;

  factory ModerationStatusModel.fromJson(Map<String, dynamic> json) =>
      _$ModerationStatusModelFromJson(json);
}

@freezed
class ScoresModel with _$ScoresModel {
  const factory ScoresModel({
    num? feasibility,
    num? impact,
    num? team,
    num? financials,
    num? market,
  }) = _ScoresModel;

  factory ScoresModel.fromJson(Map<String, dynamic> json) =>
      _$ScoresModelFromJson(json);
}

@freezed
class GroupSettingsModel with _$GroupSettingsModel {
  const factory GroupSettingsModel({
    bool? isOpen,
    num? maxMembers,
    bool? requiresApproval,
  }) = _GroupSettingsModel;

  factory GroupSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$GroupSettingsModelFromJson(json);
}

@freezed
class FinancialProjectionsModel with _$FinancialProjectionsModel {
  const factory FinancialProjectionsModel({
    @Default([]) List<RevenueModel>? revenue,
    @Default([]) List<ExpenseModel>? expenses,
    @Default([]) List<ProfitModel>? profit,
    BreakEvenPointModel? breakEvenPoint,
  }) = _FinancialProjectionsModel;

  factory FinancialProjectionsModel.fromJson(Map<String, dynamic> json) =>
      _$FinancialProjectionsModelFromJson(json);
}

@freezed
class RevenueModel with _$RevenueModel {
  const factory RevenueModel({
    num? year,
    num? amount,
    String? description,
  }) = _RevenueModel;

  factory RevenueModel.fromJson(Map<String, dynamic> json) =>
      _$RevenueModelFromJson(json);
}

@freezed
class ExpenseModel with _$ExpenseModel {
  const factory ExpenseModel({
    num? year,
    num? amount,
    String? category,
    String? description,
  }) = _ExpenseModel;

  factory ExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseModelFromJson(json);
}

@freezed
class ProfitModel with _$ProfitModel {
  const factory ProfitModel({
    num? year,
    num? amount,
  }) = _ProfitModel;

  factory ProfitModel.fromJson(Map<String, dynamic> json) =>
      _$ProfitModelFromJson(json);
}

@freezed
class BreakEvenPointModel with _$BreakEvenPointModel {
  const factory BreakEvenPointModel({
    num? months,
    String? description,
  }) = _BreakEvenPointModel;

  factory BreakEvenPointModel.fromJson(Map<String, dynamic> json) =>
      _$BreakEvenPointModelFromJson(json);
}

@freezed
class ImpactModel with _$ImpactModel {
  const factory ImpactModel({
    SocialModel? social,
    String? environmental,
    String? economic,
  }) = _ImpactModel;

  factory ImpactModel.fromJson(Map<String, dynamic> json) =>
      _$ImpactModelFromJson(json);
}

@freezed
class SocialModel with _$SocialModel {
  const factory SocialModel({
    String? description,
    @Default([]) List<MetricModel>? metrics,
    @Default([]) List<num>? sdgGoals,
    BeneficiariesModel? beneficiaries,
  }) = _SocialModel;

  factory SocialModel.fromJson(Map<String, dynamic> json) =>
      _$SocialModelFromJson(json);
}

@freezed
class MetricModel with _$MetricModel {
  const factory MetricModel({
    String? name,
    num? target,
    String? unit,
    String? description,
  }) = _MetricModel;

  factory MetricModel.fromJson(Map<String, dynamic> json) =>
      _$MetricModelFromJson(json);
}

@freezed
class BeneficiariesModel with _$BeneficiariesModel {
  const factory BeneficiariesModel({
    num? direct,
    num? indirect,
    String? description,
  }) = _BeneficiariesModel;

  factory BeneficiariesModel.fromJson(Map<String, dynamic> json) =>
      _$BeneficiariesModelFromJson(json);
}

@freezed
class RiskModel with _$RiskModel {
  const factory RiskModel({
    required String type,
    required String description,
    required String probability,
    required String impact,
    required String mitigation,
  }) = _RiskModel;

  factory RiskModel.fromJson(Map<String, dynamic> json) =>
      _$RiskModelFromJson(json);
}

// Convertisseurs JSON
DateTime? _dateTimeFromJson(String? timestamp) =>
    timestamp != null ? DateTime.parse(timestamp) : null;

String? _dateTimeToJson(DateTime? dateTime) => dateTime?.toIso8601String();

// Convertisseurs pour les références
dynamic _categoryFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) {
    return ProjectCategoryModel.fromJson(json);
  }
  throw Exception('Invalid category format');
}

dynamic _categoryToJson(dynamic category) {
  if (category == null) return null;
  if (category is String) return category;
  if (category is ProjectCategoryModel) return category.toJson();
  throw Exception('Invalid category type');
}

dynamic _ownerFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) {
    return UserModel.fromJson(json);
  }
  throw Exception('Invalid owner format');
}

dynamic _ownerToJson(dynamic owner) {
  if (owner == null) return null;
  if (owner is String) return owner;
  if (owner is UserModel) return owner.toJson();
  throw Exception('Invalid owner type');
}

dynamic _archivedByFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) {
    return UserModel.fromJson(json);
  }
  throw Exception('Invalid archivedBy format');
}

dynamic _archivedByToJson(dynamic archivedBy) {
  if (archivedBy == null) return null;
  if (archivedBy is String) return archivedBy;
  if (archivedBy is UserModel) return archivedBy.toJson();
  throw Exception('Invalid archivedBy type');
}

dynamic _userFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) {
    return UserModel.fromJson(json);
  }
  throw Exception('Invalid user format');
}

dynamic _userToJson(dynamic user) {
  if (user == null) return null;
  if (user is String) return user;
  if (user is UserModel) return user.toJson();
  throw Exception('Invalid user type');
}

dynamic _performedByFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) {
    return UserModel.fromJson(json);
  }
  throw Exception('Invalid performedBy format');
}

dynamic _performedByToJson(dynamic performedBy) {
  if (performedBy == null) return null;
  if (performedBy is String) return performedBy;
  if (performedBy is UserModel) return performedBy.toJson();
  throw Exception('Invalid performedBy type');
}

dynamic _reviewedByFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) {
    return UserModel.fromJson(json);
  }
  throw Exception('Invalid reviewedBy format');
}

dynamic _reviewedByToJson(dynamic reviewedBy) {
  if (reviewedBy == null) return null;
  if (reviewedBy is String) return reviewedBy;
  if (reviewedBy is UserModel) return reviewedBy.toJson();
  throw Exception('Invalid reviewedBy type');
}