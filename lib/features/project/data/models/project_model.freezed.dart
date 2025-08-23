// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) {
  return _ProjectModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'category', fromJson: _categoryFromJson, toJson: _categoryToJson)
  dynamic get category =>
      throw _privateConstructorUsedError; // Peut être null, String (ID), ou ProjectCategoryModel (populé)
  String get sector => throw _privateConstructorUsedError;
  String? get subSector => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner', fromJson: _ownerFromJson, toJson: _ownerToJson)
  dynamic get owner =>
      throw _privateConstructorUsedError; // Peut être null, String (ID), ou UserModel (populé)
  List<TeamMemberModel>? get team => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  num get fundingGoal => throw _privateConstructorUsedError;
  num? get currentFunding => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get fundingType => throw _privateConstructorUsedError;
  num? get minimumInvestment => throw _privateConstructorUsedError;
  num? get maximumInvestment => throw _privateConstructorUsedError;
  ExpectedReturnModel? get expectedReturn => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get visibility => throw _privateConstructorUsedError;
  bool? get featured => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get fundingDeadline => throw _privateConstructorUsedError;
  num? get duration => throw _privateConstructorUsedError;
  List<ImageModel>? get images => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  List<VideoModel>? get videos => throw _privateConstructorUsedError;
  AnalyticsModel? get analytics => throw _privateConstructorUsedError;
  SeoModel? get seo => throw _privateConstructorUsedError;
  List<AuditLogModel>? get auditLog => throw _privateConstructorUsedError;
  SettingsModel? get settings => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get archivedAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'archivedBy',
      fromJson: _archivedByFromJson,
      toJson: _archivedByToJson)
  dynamic get archivedBy =>
      throw _privateConstructorUsedError; // Peut être null, String (ID), ou UserModel (populé)
  String? get archiveReason => throw _privateConstructorUsedError;
  ModerationStatusModel? get moderationStatus =>
      throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get collaborationType => throw _privateConstructorUsedError;
  GroupSettingsModel? get groupSettings => throw _privateConstructorUsedError;
  FinancialProjectionsModel? get financialProjections =>
      throw _privateConstructorUsedError;
  ImpactModel? get impact => throw _privateConstructorUsedError;
  List<RiskModel>? get risks => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  num? get fundingProgress =>
      throw _privateConstructorUsedError; // Champ virtuel
  num? get daysRemaining => throw _privateConstructorUsedError; // Champ virtuel
  num? get durationMonths =>
      throw _privateConstructorUsedError; // Champ virtuel
  String? get riskLevel => throw _privateConstructorUsedError;

  /// Serializes this ProjectModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectModelCopyWith<ProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectModelCopyWith<$Res> {
  factory $ProjectModelCopyWith(
          ProjectModel value, $Res Function(ProjectModel) then) =
      _$ProjectModelCopyWithImpl<$Res, ProjectModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String slug,
      String description,
      String? shortDescription,
      @JsonKey(
          name: 'category',
          fromJson: _categoryFromJson,
          toJson: _categoryToJson)
      dynamic category,
      String sector,
      String? subSector,
      List<String>? tags,
      @JsonKey(name: 'owner', fromJson: _ownerFromJson, toJson: _ownerToJson)
      dynamic owner,
      List<TeamMemberModel>? team,
      LocationModel? location,
      num fundingGoal,
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
      List<ImageModel>? images,
      String? logo,
      String? coverImage,
      List<VideoModel>? videos,
      AnalyticsModel? analytics,
      SeoModel? seo,
      List<AuditLogModel>? auditLog,
      SettingsModel? settings,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? archivedAt,
      @JsonKey(
          name: 'archivedBy',
          fromJson: _archivedByFromJson,
          toJson: _archivedByToJson)
      dynamic archivedBy,
      String? archiveReason,
      ModerationStatusModel? moderationStatus,
      String? type,
      String? collaborationType,
      GroupSettingsModel? groupSettings,
      FinancialProjectionsModel? financialProjections,
      ImpactModel? impact,
      List<RiskModel>? risks,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt,
      num? fundingProgress,
      num? daysRemaining,
      num? durationMonths,
      String? riskLevel});

  $LocationModelCopyWith<$Res>? get location;
  $ExpectedReturnModelCopyWith<$Res>? get expectedReturn;
  $AnalyticsModelCopyWith<$Res>? get analytics;
  $SeoModelCopyWith<$Res>? get seo;
  $SettingsModelCopyWith<$Res>? get settings;
  $ModerationStatusModelCopyWith<$Res>? get moderationStatus;
  $GroupSettingsModelCopyWith<$Res>? get groupSettings;
  $FinancialProjectionsModelCopyWith<$Res>? get financialProjections;
  $ImpactModelCopyWith<$Res>? get impact;
}

/// @nodoc
class _$ProjectModelCopyWithImpl<$Res, $Val extends ProjectModel>
    implements $ProjectModelCopyWith<$Res> {
  _$ProjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? slug = null,
    Object? description = null,
    Object? shortDescription = freezed,
    Object? category = freezed,
    Object? sector = null,
    Object? subSector = freezed,
    Object? tags = freezed,
    Object? owner = freezed,
    Object? team = freezed,
    Object? location = freezed,
    Object? fundingGoal = null,
    Object? currentFunding = freezed,
    Object? currency = freezed,
    Object? fundingType = freezed,
    Object? minimumInvestment = freezed,
    Object? maximumInvestment = freezed,
    Object? expectedReturn = freezed,
    Object? status = freezed,
    Object? visibility = freezed,
    Object? featured = freezed,
    Object? priority = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? fundingDeadline = freezed,
    Object? duration = freezed,
    Object? images = freezed,
    Object? logo = freezed,
    Object? coverImage = freezed,
    Object? videos = freezed,
    Object? analytics = freezed,
    Object? seo = freezed,
    Object? auditLog = freezed,
    Object? settings = freezed,
    Object? archivedAt = freezed,
    Object? archivedBy = freezed,
    Object? archiveReason = freezed,
    Object? moderationStatus = freezed,
    Object? type = freezed,
    Object? collaborationType = freezed,
    Object? groupSettings = freezed,
    Object? financialProjections = freezed,
    Object? impact = freezed,
    Object? risks = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? fundingProgress = freezed,
    Object? daysRemaining = freezed,
    Object? durationMonths = freezed,
    Object? riskLevel = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      subSector: freezed == subSector
          ? _value.subSector
          : subSector // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as dynamic,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as List<TeamMemberModel>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      fundingGoal: null == fundingGoal
          ? _value.fundingGoal
          : fundingGoal // ignore: cast_nullable_to_non_nullable
              as num,
      currentFunding: freezed == currentFunding
          ? _value.currentFunding
          : currentFunding // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      fundingType: freezed == fundingType
          ? _value.fundingType
          : fundingType // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumInvestment: freezed == minimumInvestment
          ? _value.minimumInvestment
          : minimumInvestment // ignore: cast_nullable_to_non_nullable
              as num?,
      maximumInvestment: freezed == maximumInvestment
          ? _value.maximumInvestment
          : maximumInvestment // ignore: cast_nullable_to_non_nullable
              as num?,
      expectedReturn: freezed == expectedReturn
          ? _value.expectedReturn
          : expectedReturn // ignore: cast_nullable_to_non_nullable
              as ExpectedReturnModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fundingDeadline: freezed == fundingDeadline
          ? _value.fundingDeadline
          : fundingDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as AnalyticsModel?,
      seo: freezed == seo
          ? _value.seo
          : seo // ignore: cast_nullable_to_non_nullable
              as SeoModel?,
      auditLog: freezed == auditLog
          ? _value.auditLog
          : auditLog // ignore: cast_nullable_to_non_nullable
              as List<AuditLogModel>?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingsModel?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      archivedBy: freezed == archivedBy
          ? _value.archivedBy
          : archivedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      archiveReason: freezed == archiveReason
          ? _value.archiveReason
          : archiveReason // ignore: cast_nullable_to_non_nullable
              as String?,
      moderationStatus: freezed == moderationStatus
          ? _value.moderationStatus
          : moderationStatus // ignore: cast_nullable_to_non_nullable
              as ModerationStatusModel?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      collaborationType: freezed == collaborationType
          ? _value.collaborationType
          : collaborationType // ignore: cast_nullable_to_non_nullable
              as String?,
      groupSettings: freezed == groupSettings
          ? _value.groupSettings
          : groupSettings // ignore: cast_nullable_to_non_nullable
              as GroupSettingsModel?,
      financialProjections: freezed == financialProjections
          ? _value.financialProjections
          : financialProjections // ignore: cast_nullable_to_non_nullable
              as FinancialProjectionsModel?,
      impact: freezed == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as ImpactModel?,
      risks: freezed == risks
          ? _value.risks
          : risks // ignore: cast_nullable_to_non_nullable
              as List<RiskModel>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fundingProgress: freezed == fundingProgress
          ? _value.fundingProgress
          : fundingProgress // ignore: cast_nullable_to_non_nullable
              as num?,
      daysRemaining: freezed == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as num?,
      durationMonths: freezed == durationMonths
          ? _value.durationMonths
          : durationMonths // ignore: cast_nullable_to_non_nullable
              as num?,
      riskLevel: freezed == riskLevel
          ? _value.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpectedReturnModelCopyWith<$Res>? get expectedReturn {
    if (_value.expectedReturn == null) {
      return null;
    }

    return $ExpectedReturnModelCopyWith<$Res>(_value.expectedReturn!, (value) {
      return _then(_value.copyWith(expectedReturn: value) as $Val);
    });
  }

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalyticsModelCopyWith<$Res>? get analytics {
    if (_value.analytics == null) {
      return null;
    }

    return $AnalyticsModelCopyWith<$Res>(_value.analytics!, (value) {
      return _then(_value.copyWith(analytics: value) as $Val);
    });
  }

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SeoModelCopyWith<$Res>? get seo {
    if (_value.seo == null) {
      return null;
    }

    return $SeoModelCopyWith<$Res>(_value.seo!, (value) {
      return _then(_value.copyWith(seo: value) as $Val);
    });
  }

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SettingsModelCopyWith<$Res>? get settings {
    if (_value.settings == null) {
      return null;
    }

    return $SettingsModelCopyWith<$Res>(_value.settings!, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationStatusModelCopyWith<$Res>? get moderationStatus {
    if (_value.moderationStatus == null) {
      return null;
    }

    return $ModerationStatusModelCopyWith<$Res>(_value.moderationStatus!,
        (value) {
      return _then(_value.copyWith(moderationStatus: value) as $Val);
    });
  }

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupSettingsModelCopyWith<$Res>? get groupSettings {
    if (_value.groupSettings == null) {
      return null;
    }

    return $GroupSettingsModelCopyWith<$Res>(_value.groupSettings!, (value) {
      return _then(_value.copyWith(groupSettings: value) as $Val);
    });
  }

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinancialProjectionsModelCopyWith<$Res>? get financialProjections {
    if (_value.financialProjections == null) {
      return null;
    }

    return $FinancialProjectionsModelCopyWith<$Res>(
        _value.financialProjections!, (value) {
      return _then(_value.copyWith(financialProjections: value) as $Val);
    });
  }

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImpactModelCopyWith<$Res>? get impact {
    if (_value.impact == null) {
      return null;
    }

    return $ImpactModelCopyWith<$Res>(_value.impact!, (value) {
      return _then(_value.copyWith(impact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectModelImplCopyWith<$Res>
    implements $ProjectModelCopyWith<$Res> {
  factory _$$ProjectModelImplCopyWith(
          _$ProjectModelImpl value, $Res Function(_$ProjectModelImpl) then) =
      __$$ProjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String slug,
      String description,
      String? shortDescription,
      @JsonKey(
          name: 'category',
          fromJson: _categoryFromJson,
          toJson: _categoryToJson)
      dynamic category,
      String sector,
      String? subSector,
      List<String>? tags,
      @JsonKey(name: 'owner', fromJson: _ownerFromJson, toJson: _ownerToJson)
      dynamic owner,
      List<TeamMemberModel>? team,
      LocationModel? location,
      num fundingGoal,
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
      List<ImageModel>? images,
      String? logo,
      String? coverImage,
      List<VideoModel>? videos,
      AnalyticsModel? analytics,
      SeoModel? seo,
      List<AuditLogModel>? auditLog,
      SettingsModel? settings,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? archivedAt,
      @JsonKey(
          name: 'archivedBy',
          fromJson: _archivedByFromJson,
          toJson: _archivedByToJson)
      dynamic archivedBy,
      String? archiveReason,
      ModerationStatusModel? moderationStatus,
      String? type,
      String? collaborationType,
      GroupSettingsModel? groupSettings,
      FinancialProjectionsModel? financialProjections,
      ImpactModel? impact,
      List<RiskModel>? risks,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt,
      num? fundingProgress,
      num? daysRemaining,
      num? durationMonths,
      String? riskLevel});

  @override
  $LocationModelCopyWith<$Res>? get location;
  @override
  $ExpectedReturnModelCopyWith<$Res>? get expectedReturn;
  @override
  $AnalyticsModelCopyWith<$Res>? get analytics;
  @override
  $SeoModelCopyWith<$Res>? get seo;
  @override
  $SettingsModelCopyWith<$Res>? get settings;
  @override
  $ModerationStatusModelCopyWith<$Res>? get moderationStatus;
  @override
  $GroupSettingsModelCopyWith<$Res>? get groupSettings;
  @override
  $FinancialProjectionsModelCopyWith<$Res>? get financialProjections;
  @override
  $ImpactModelCopyWith<$Res>? get impact;
}

/// @nodoc
class __$$ProjectModelImplCopyWithImpl<$Res>
    extends _$ProjectModelCopyWithImpl<$Res, _$ProjectModelImpl>
    implements _$$ProjectModelImplCopyWith<$Res> {
  __$$ProjectModelImplCopyWithImpl(
      _$ProjectModelImpl _value, $Res Function(_$ProjectModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? slug = null,
    Object? description = null,
    Object? shortDescription = freezed,
    Object? category = freezed,
    Object? sector = null,
    Object? subSector = freezed,
    Object? tags = freezed,
    Object? owner = freezed,
    Object? team = freezed,
    Object? location = freezed,
    Object? fundingGoal = null,
    Object? currentFunding = freezed,
    Object? currency = freezed,
    Object? fundingType = freezed,
    Object? minimumInvestment = freezed,
    Object? maximumInvestment = freezed,
    Object? expectedReturn = freezed,
    Object? status = freezed,
    Object? visibility = freezed,
    Object? featured = freezed,
    Object? priority = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? fundingDeadline = freezed,
    Object? duration = freezed,
    Object? images = freezed,
    Object? logo = freezed,
    Object? coverImage = freezed,
    Object? videos = freezed,
    Object? analytics = freezed,
    Object? seo = freezed,
    Object? auditLog = freezed,
    Object? settings = freezed,
    Object? archivedAt = freezed,
    Object? archivedBy = freezed,
    Object? archiveReason = freezed,
    Object? moderationStatus = freezed,
    Object? type = freezed,
    Object? collaborationType = freezed,
    Object? groupSettings = freezed,
    Object? financialProjections = freezed,
    Object? impact = freezed,
    Object? risks = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? fundingProgress = freezed,
    Object? daysRemaining = freezed,
    Object? durationMonths = freezed,
    Object? riskLevel = freezed,
  }) {
    return _then(_$ProjectModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      subSector: freezed == subSector
          ? _value.subSector
          : subSector // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as dynamic,
      team: freezed == team
          ? _value._team
          : team // ignore: cast_nullable_to_non_nullable
              as List<TeamMemberModel>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      fundingGoal: null == fundingGoal
          ? _value.fundingGoal
          : fundingGoal // ignore: cast_nullable_to_non_nullable
              as num,
      currentFunding: freezed == currentFunding
          ? _value.currentFunding
          : currentFunding // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      fundingType: freezed == fundingType
          ? _value.fundingType
          : fundingType // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumInvestment: freezed == minimumInvestment
          ? _value.minimumInvestment
          : minimumInvestment // ignore: cast_nullable_to_non_nullable
              as num?,
      maximumInvestment: freezed == maximumInvestment
          ? _value.maximumInvestment
          : maximumInvestment // ignore: cast_nullable_to_non_nullable
              as num?,
      expectedReturn: freezed == expectedReturn
          ? _value.expectedReturn
          : expectedReturn // ignore: cast_nullable_to_non_nullable
              as ExpectedReturnModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fundingDeadline: freezed == fundingDeadline
          ? _value.fundingDeadline
          : fundingDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as AnalyticsModel?,
      seo: freezed == seo
          ? _value.seo
          : seo // ignore: cast_nullable_to_non_nullable
              as SeoModel?,
      auditLog: freezed == auditLog
          ? _value._auditLog
          : auditLog // ignore: cast_nullable_to_non_nullable
              as List<AuditLogModel>?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingsModel?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      archivedBy: freezed == archivedBy
          ? _value.archivedBy
          : archivedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      archiveReason: freezed == archiveReason
          ? _value.archiveReason
          : archiveReason // ignore: cast_nullable_to_non_nullable
              as String?,
      moderationStatus: freezed == moderationStatus
          ? _value.moderationStatus
          : moderationStatus // ignore: cast_nullable_to_non_nullable
              as ModerationStatusModel?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      collaborationType: freezed == collaborationType
          ? _value.collaborationType
          : collaborationType // ignore: cast_nullable_to_non_nullable
              as String?,
      groupSettings: freezed == groupSettings
          ? _value.groupSettings
          : groupSettings // ignore: cast_nullable_to_non_nullable
              as GroupSettingsModel?,
      financialProjections: freezed == financialProjections
          ? _value.financialProjections
          : financialProjections // ignore: cast_nullable_to_non_nullable
              as FinancialProjectionsModel?,
      impact: freezed == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as ImpactModel?,
      risks: freezed == risks
          ? _value._risks
          : risks // ignore: cast_nullable_to_non_nullable
              as List<RiskModel>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fundingProgress: freezed == fundingProgress
          ? _value.fundingProgress
          : fundingProgress // ignore: cast_nullable_to_non_nullable
              as num?,
      daysRemaining: freezed == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as num?,
      durationMonths: freezed == durationMonths
          ? _value.durationMonths
          : durationMonths // ignore: cast_nullable_to_non_nullable
              as num?,
      riskLevel: freezed == riskLevel
          ? _value.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectModelImpl extends _ProjectModel {
  _$ProjectModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.slug,
      required this.description,
      this.shortDescription,
      @JsonKey(
          name: 'category',
          fromJson: _categoryFromJson,
          toJson: _categoryToJson)
      this.category,
      required this.sector,
      this.subSector,
      final List<String>? tags = const [],
      @JsonKey(
          name: 'owner', fromJson: _ownerFromJson, toJson: _ownerToJson)
      this.owner,
      final List<TeamMemberModel>? team = const [],
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
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.startDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.endDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.fundingDeadline,
      this.duration,
      final List<ImageModel>? images = const [],
      this.logo,
      this.coverImage,
      final List<VideoModel>? videos = const [],
      this.analytics,
      this.seo,
      final List<AuditLogModel>? auditLog = const [],
      this.settings,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.archivedAt,
      @JsonKey(
          name: 'archivedBy',
          fromJson: _archivedByFromJson,
          toJson: _archivedByToJson)
      this.archivedBy,
      this.archiveReason,
      this.moderationStatus,
      this.type,
      this.collaborationType,
      this.groupSettings,
      this.financialProjections,
      this.impact,
      final List<RiskModel>? risks = const [],
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt,
      this.fundingProgress,
      this.daysRemaining,
      this.durationMonths,
      this.riskLevel})
      : _tags = tags,
        _team = team,
        _images = images,
        _videos = videos,
        _auditLog = auditLog,
        _risks = risks,
        super._();

  factory _$ProjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final String slug;
  @override
  final String description;
  @override
  final String? shortDescription;
  @override
  @JsonKey(
      name: 'category', fromJson: _categoryFromJson, toJson: _categoryToJson)
  final dynamic category;
// Peut être null, String (ID), ou ProjectCategoryModel (populé)
  @override
  final String sector;
  @override
  final String? subSector;
  final List<String>? _tags;
  @override
  @JsonKey()
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'owner', fromJson: _ownerFromJson, toJson: _ownerToJson)
  final dynamic owner;
// Peut être null, String (ID), ou UserModel (populé)
  final List<TeamMemberModel>? _team;
// Peut être null, String (ID), ou UserModel (populé)
  @override
  @JsonKey()
  List<TeamMemberModel>? get team {
    final value = _team;
    if (value == null) return null;
    if (_team is EqualUnmodifiableListView) return _team;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LocationModel? location;
  @override
  final num fundingGoal;
  @override
  final num? currentFunding;
  @override
  final String? currency;
  @override
  final String? fundingType;
  @override
  final num? minimumInvestment;
  @override
  final num? maximumInvestment;
  @override
  final ExpectedReturnModel? expectedReturn;
  @override
  final String? status;
  @override
  final String? visibility;
  @override
  final bool? featured;
  @override
  final String? priority;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? startDate;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? endDate;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? fundingDeadline;
  @override
  final num? duration;
  final List<ImageModel>? _images;
  @override
  @JsonKey()
  List<ImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? logo;
  @override
  final String? coverImage;
  final List<VideoModel>? _videos;
  @override
  @JsonKey()
  List<VideoModel>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AnalyticsModel? analytics;
  @override
  final SeoModel? seo;
  final List<AuditLogModel>? _auditLog;
  @override
  @JsonKey()
  List<AuditLogModel>? get auditLog {
    final value = _auditLog;
    if (value == null) return null;
    if (_auditLog is EqualUnmodifiableListView) return _auditLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SettingsModel? settings;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? archivedAt;
  @override
  @JsonKey(
      name: 'archivedBy',
      fromJson: _archivedByFromJson,
      toJson: _archivedByToJson)
  final dynamic archivedBy;
// Peut être null, String (ID), ou UserModel (populé)
  @override
  final String? archiveReason;
  @override
  final ModerationStatusModel? moderationStatus;
  @override
  final String? type;
  @override
  final String? collaborationType;
  @override
  final GroupSettingsModel? groupSettings;
  @override
  final FinancialProjectionsModel? financialProjections;
  @override
  final ImpactModel? impact;
  final List<RiskModel>? _risks;
  @override
  @JsonKey()
  List<RiskModel>? get risks {
    final value = _risks;
    if (value == null) return null;
    if (_risks is EqualUnmodifiableListView) return _risks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;
  @override
  final num? fundingProgress;
// Champ virtuel
  @override
  final num? daysRemaining;
// Champ virtuel
  @override
  final num? durationMonths;
// Champ virtuel
  @override
  final String? riskLevel;

  @override
  String toString() {
    return 'ProjectModel(id: $id, title: $title, slug: $slug, description: $description, shortDescription: $shortDescription, category: $category, sector: $sector, subSector: $subSector, tags: $tags, owner: $owner, team: $team, location: $location, fundingGoal: $fundingGoal, currentFunding: $currentFunding, currency: $currency, fundingType: $fundingType, minimumInvestment: $minimumInvestment, maximumInvestment: $maximumInvestment, expectedReturn: $expectedReturn, status: $status, visibility: $visibility, featured: $featured, priority: $priority, startDate: $startDate, endDate: $endDate, fundingDeadline: $fundingDeadline, duration: $duration, images: $images, logo: $logo, coverImage: $coverImage, videos: $videos, analytics: $analytics, seo: $seo, auditLog: $auditLog, settings: $settings, archivedAt: $archivedAt, archivedBy: $archivedBy, archiveReason: $archiveReason, moderationStatus: $moderationStatus, type: $type, collaborationType: $collaborationType, groupSettings: $groupSettings, financialProjections: $financialProjections, impact: $impact, risks: $risks, createdAt: $createdAt, updatedAt: $updatedAt, fundingProgress: $fundingProgress, daysRemaining: $daysRemaining, durationMonths: $durationMonths, riskLevel: $riskLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.subSector, subSector) ||
                other.subSector == subSector) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other._team, _team) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.fundingGoal, fundingGoal) ||
                other.fundingGoal == fundingGoal) &&
            (identical(other.currentFunding, currentFunding) ||
                other.currentFunding == currentFunding) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.fundingType, fundingType) ||
                other.fundingType == fundingType) &&
            (identical(other.minimumInvestment, minimumInvestment) ||
                other.minimumInvestment == minimumInvestment) &&
            (identical(other.maximumInvestment, maximumInvestment) ||
                other.maximumInvestment == maximumInvestment) &&
            (identical(other.expectedReturn, expectedReturn) ||
                other.expectedReturn == expectedReturn) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.fundingDeadline, fundingDeadline) ||
                other.fundingDeadline == fundingDeadline) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.seo, seo) || other.seo == seo) &&
            const DeepCollectionEquality().equals(other._auditLog, _auditLog) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.archivedAt, archivedAt) ||
                other.archivedAt == archivedAt) &&
            const DeepCollectionEquality()
                .equals(other.archivedBy, archivedBy) &&
            (identical(other.archiveReason, archiveReason) ||
                other.archiveReason == archiveReason) &&
            (identical(other.moderationStatus, moderationStatus) ||
                other.moderationStatus == moderationStatus) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.collaborationType, collaborationType) ||
                other.collaborationType == collaborationType) &&
            (identical(other.groupSettings, groupSettings) ||
                other.groupSettings == groupSettings) &&
            (identical(other.financialProjections, financialProjections) ||
                other.financialProjections == financialProjections) &&
            (identical(other.impact, impact) || other.impact == impact) &&
            const DeepCollectionEquality().equals(other._risks, _risks) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.fundingProgress, fundingProgress) ||
                other.fundingProgress == fundingProgress) &&
            (identical(other.daysRemaining, daysRemaining) ||
                other.daysRemaining == daysRemaining) &&
            (identical(other.durationMonths, durationMonths) ||
                other.durationMonths == durationMonths) &&
            (identical(other.riskLevel, riskLevel) ||
                other.riskLevel == riskLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        slug,
        description,
        shortDescription,
        const DeepCollectionEquality().hash(category),
        sector,
        subSector,
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(owner),
        const DeepCollectionEquality().hash(_team),
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
        const DeepCollectionEquality().hash(_images),
        logo,
        coverImage,
        const DeepCollectionEquality().hash(_videos),
        analytics,
        seo,
        const DeepCollectionEquality().hash(_auditLog),
        settings,
        archivedAt,
        const DeepCollectionEquality().hash(archivedBy),
        archiveReason,
        moderationStatus,
        type,
        collaborationType,
        groupSettings,
        financialProjections,
        impact,
        const DeepCollectionEquality().hash(_risks),
        createdAt,
        updatedAt,
        fundingProgress,
        daysRemaining,
        durationMonths,
        riskLevel
      ]);

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectModelImplCopyWith<_$ProjectModelImpl> get copyWith =>
      __$$ProjectModelImplCopyWithImpl<_$ProjectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectModel extends ProjectModel {
  factory _ProjectModel(
      {@JsonKey(name: '_id') required final String id,
      required final String title,
      required final String slug,
      required final String description,
      final String? shortDescription,
      @JsonKey(
          name: 'category',
          fromJson: _categoryFromJson,
          toJson: _categoryToJson)
      final dynamic category,
      required final String sector,
      final String? subSector,
      final List<String>? tags,
      @JsonKey(name: 'owner', fromJson: _ownerFromJson, toJson: _ownerToJson)
      final dynamic owner,
      final List<TeamMemberModel>? team,
      final LocationModel? location,
      required final num fundingGoal,
      final num? currentFunding,
      final String? currency,
      final String? fundingType,
      final num? minimumInvestment,
      final num? maximumInvestment,
      final ExpectedReturnModel? expectedReturn,
      final String? status,
      final String? visibility,
      final bool? featured,
      final String? priority,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? startDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? endDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? fundingDeadline,
      final num? duration,
      final List<ImageModel>? images,
      final String? logo,
      final String? coverImage,
      final List<VideoModel>? videos,
      final AnalyticsModel? analytics,
      final SeoModel? seo,
      final List<AuditLogModel>? auditLog,
      final SettingsModel? settings,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? archivedAt,
      @JsonKey(
          name: 'archivedBy',
          fromJson: _archivedByFromJson,
          toJson: _archivedByToJson)
      final dynamic archivedBy,
      final String? archiveReason,
      final ModerationStatusModel? moderationStatus,
      final String? type,
      final String? collaborationType,
      final GroupSettingsModel? groupSettings,
      final FinancialProjectionsModel? financialProjections,
      final ImpactModel? impact,
      final List<RiskModel>? risks,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt,
      final num? fundingProgress,
      final num? daysRemaining,
      final num? durationMonths,
      final String? riskLevel}) = _$ProjectModelImpl;
  _ProjectModel._() : super._();

  factory _ProjectModel.fromJson(Map<String, dynamic> json) =
      _$ProjectModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String get slug;
  @override
  String get description;
  @override
  String? get shortDescription;
  @override
  @JsonKey(
      name: 'category', fromJson: _categoryFromJson, toJson: _categoryToJson)
  dynamic
      get category; // Peut être null, String (ID), ou ProjectCategoryModel (populé)
  @override
  String get sector;
  @override
  String? get subSector;
  @override
  List<String>? get tags;
  @override
  @JsonKey(name: 'owner', fromJson: _ownerFromJson, toJson: _ownerToJson)
  dynamic get owner; // Peut être null, String (ID), ou UserModel (populé)
  @override
  List<TeamMemberModel>? get team;
  @override
  LocationModel? get location;
  @override
  num get fundingGoal;
  @override
  num? get currentFunding;
  @override
  String? get currency;
  @override
  String? get fundingType;
  @override
  num? get minimumInvestment;
  @override
  num? get maximumInvestment;
  @override
  ExpectedReturnModel? get expectedReturn;
  @override
  String? get status;
  @override
  String? get visibility;
  @override
  bool? get featured;
  @override
  String? get priority;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get startDate;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get endDate;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get fundingDeadline;
  @override
  num? get duration;
  @override
  List<ImageModel>? get images;
  @override
  String? get logo;
  @override
  String? get coverImage;
  @override
  List<VideoModel>? get videos;
  @override
  AnalyticsModel? get analytics;
  @override
  SeoModel? get seo;
  @override
  List<AuditLogModel>? get auditLog;
  @override
  SettingsModel? get settings;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get archivedAt;
  @override
  @JsonKey(
      name: 'archivedBy',
      fromJson: _archivedByFromJson,
      toJson: _archivedByToJson)
  dynamic get archivedBy; // Peut être null, String (ID), ou UserModel (populé)
  @override
  String? get archiveReason;
  @override
  ModerationStatusModel? get moderationStatus;
  @override
  String? get type;
  @override
  String? get collaborationType;
  @override
  GroupSettingsModel? get groupSettings;
  @override
  FinancialProjectionsModel? get financialProjections;
  @override
  ImpactModel? get impact;
  @override
  List<RiskModel>? get risks;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;
  @override
  num? get fundingProgress; // Champ virtuel
  @override
  num? get daysRemaining; // Champ virtuel
  @override
  num? get durationMonths; // Champ virtuel
  @override
  String? get riskLevel;

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectModelImplCopyWith<_$ProjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamMemberModel _$TeamMemberModelFromJson(Map<String, dynamic> json) {
  return _TeamMemberModel.fromJson(json);
}

/// @nodoc
mixin _$TeamMemberModel {
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get user =>
      throw _privateConstructorUsedError; // Peut être null, String (ID), ou UserModel (populé)
  String? get role => throw _privateConstructorUsedError;
  PermissionsModel? get permissions => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get linkedin => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool? get isLead => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get joinedAt => throw _privateConstructorUsedError;

  /// Serializes this TeamMemberModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamMemberModelCopyWith<TeamMemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberModelCopyWith<$Res> {
  factory $TeamMemberModelCopyWith(
          TeamMemberModel value, $Res Function(TeamMemberModel) then) =
      _$TeamMemberModelCopyWithImpl<$Res, TeamMemberModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      dynamic user,
      String? role,
      PermissionsModel? permissions,
      String? bio,
      String? linkedin,
      String? email,
      bool? isLead,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? joinedAt});

  $PermissionsModelCopyWith<$Res>? get permissions;
}

/// @nodoc
class _$TeamMemberModelCopyWithImpl<$Res, $Val extends TeamMemberModel>
    implements $TeamMemberModelCopyWith<$Res> {
  _$TeamMemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? role = freezed,
    Object? permissions = freezed,
    Object? bio = freezed,
    Object? linkedin = freezed,
    Object? email = freezed,
    Object? isLead = freezed,
    Object? joinedAt = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as PermissionsModel?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isLead: freezed == isLead
          ? _value.isLead
          : isLead // ignore: cast_nullable_to_non_nullable
              as bool?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of TeamMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionsModelCopyWith<$Res>? get permissions {
    if (_value.permissions == null) {
      return null;
    }

    return $PermissionsModelCopyWith<$Res>(_value.permissions!, (value) {
      return _then(_value.copyWith(permissions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamMemberModelImplCopyWith<$Res>
    implements $TeamMemberModelCopyWith<$Res> {
  factory _$$TeamMemberModelImplCopyWith(_$TeamMemberModelImpl value,
          $Res Function(_$TeamMemberModelImpl) then) =
      __$$TeamMemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      dynamic user,
      String? role,
      PermissionsModel? permissions,
      String? bio,
      String? linkedin,
      String? email,
      bool? isLead,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? joinedAt});

  @override
  $PermissionsModelCopyWith<$Res>? get permissions;
}

/// @nodoc
class __$$TeamMemberModelImplCopyWithImpl<$Res>
    extends _$TeamMemberModelCopyWithImpl<$Res, _$TeamMemberModelImpl>
    implements _$$TeamMemberModelImplCopyWith<$Res> {
  __$$TeamMemberModelImplCopyWithImpl(
      _$TeamMemberModelImpl _value, $Res Function(_$TeamMemberModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? role = freezed,
    Object? permissions = freezed,
    Object? bio = freezed,
    Object? linkedin = freezed,
    Object? email = freezed,
    Object? isLead = freezed,
    Object? joinedAt = freezed,
  }) {
    return _then(_$TeamMemberModelImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as PermissionsModel?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isLead: freezed == isLead
          ? _value.isLead
          : isLead // ignore: cast_nullable_to_non_nullable
              as bool?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamMemberModelImpl implements _TeamMemberModel {
  const _$TeamMemberModelImpl(
      {@JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      this.user,
      this.role,
      this.permissions,
      this.bio,
      this.linkedin,
      this.email,
      this.isLead,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.joinedAt});

  factory _$TeamMemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamMemberModelImplFromJson(json);

  @override
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  final dynamic user;
// Peut être null, String (ID), ou UserModel (populé)
  @override
  final String? role;
  @override
  final PermissionsModel? permissions;
  @override
  final String? bio;
  @override
  final String? linkedin;
  @override
  final String? email;
  @override
  final bool? isLead;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? joinedAt;

  @override
  String toString() {
    return 'TeamMemberModel(user: $user, role: $role, permissions: $permissions, bio: $bio, linkedin: $linkedin, email: $email, isLead: $isLead, joinedAt: $joinedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamMemberModelImpl &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.permissions, permissions) ||
                other.permissions == permissions) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.linkedin, linkedin) ||
                other.linkedin == linkedin) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isLead, isLead) || other.isLead == isLead) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      role,
      permissions,
      bio,
      linkedin,
      email,
      isLead,
      joinedAt);

  /// Create a copy of TeamMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamMemberModelImplCopyWith<_$TeamMemberModelImpl> get copyWith =>
      __$$TeamMemberModelImplCopyWithImpl<_$TeamMemberModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamMemberModelImplToJson(
      this,
    );
  }
}

abstract class _TeamMemberModel implements TeamMemberModel {
  const factory _TeamMemberModel(
      {@JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
      final dynamic user,
      final String? role,
      final PermissionsModel? permissions,
      final String? bio,
      final String? linkedin,
      final String? email,
      final bool? isLead,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? joinedAt}) = _$TeamMemberModelImpl;

  factory _TeamMemberModel.fromJson(Map<String, dynamic> json) =
      _$TeamMemberModelImpl.fromJson;

  @override
  @JsonKey(name: 'user', fromJson: _userFromJson, toJson: _userToJson)
  dynamic get user; // Peut être null, String (ID), ou UserModel (populé)
  @override
  String? get role;
  @override
  PermissionsModel? get permissions;
  @override
  String? get bio;
  @override
  String? get linkedin;
  @override
  String? get email;
  @override
  bool? get isLead;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get joinedAt;

  /// Create a copy of TeamMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamMemberModelImplCopyWith<_$TeamMemberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PermissionsModel _$PermissionsModelFromJson(Map<String, dynamic> json) {
  return _PermissionsModel.fromJson(json);
}

/// @nodoc
mixin _$PermissionsModel {
  bool? get canEdit => throw _privateConstructorUsedError;
  bool? get canManageTeam => throw _privateConstructorUsedError;
  bool? get canViewFinancials => throw _privateConstructorUsedError;
  bool? get canPostUpdates => throw _privateConstructorUsedError;

  /// Serializes this PermissionsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PermissionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PermissionsModelCopyWith<PermissionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsModelCopyWith<$Res> {
  factory $PermissionsModelCopyWith(
          PermissionsModel value, $Res Function(PermissionsModel) then) =
      _$PermissionsModelCopyWithImpl<$Res, PermissionsModel>;
  @useResult
  $Res call(
      {bool? canEdit,
      bool? canManageTeam,
      bool? canViewFinancials,
      bool? canPostUpdates});
}

/// @nodoc
class _$PermissionsModelCopyWithImpl<$Res, $Val extends PermissionsModel>
    implements $PermissionsModelCopyWith<$Res> {
  _$PermissionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PermissionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canEdit = freezed,
    Object? canManageTeam = freezed,
    Object? canViewFinancials = freezed,
    Object? canPostUpdates = freezed,
  }) {
    return _then(_value.copyWith(
      canEdit: freezed == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      canManageTeam: freezed == canManageTeam
          ? _value.canManageTeam
          : canManageTeam // ignore: cast_nullable_to_non_nullable
              as bool?,
      canViewFinancials: freezed == canViewFinancials
          ? _value.canViewFinancials
          : canViewFinancials // ignore: cast_nullable_to_non_nullable
              as bool?,
      canPostUpdates: freezed == canPostUpdates
          ? _value.canPostUpdates
          : canPostUpdates // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionsModelImplCopyWith<$Res>
    implements $PermissionsModelCopyWith<$Res> {
  factory _$$PermissionsModelImplCopyWith(_$PermissionsModelImpl value,
          $Res Function(_$PermissionsModelImpl) then) =
      __$$PermissionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? canEdit,
      bool? canManageTeam,
      bool? canViewFinancials,
      bool? canPostUpdates});
}

/// @nodoc
class __$$PermissionsModelImplCopyWithImpl<$Res>
    extends _$PermissionsModelCopyWithImpl<$Res, _$PermissionsModelImpl>
    implements _$$PermissionsModelImplCopyWith<$Res> {
  __$$PermissionsModelImplCopyWithImpl(_$PermissionsModelImpl _value,
      $Res Function(_$PermissionsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canEdit = freezed,
    Object? canManageTeam = freezed,
    Object? canViewFinancials = freezed,
    Object? canPostUpdates = freezed,
  }) {
    return _then(_$PermissionsModelImpl(
      canEdit: freezed == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      canManageTeam: freezed == canManageTeam
          ? _value.canManageTeam
          : canManageTeam // ignore: cast_nullable_to_non_nullable
              as bool?,
      canViewFinancials: freezed == canViewFinancials
          ? _value.canViewFinancials
          : canViewFinancials // ignore: cast_nullable_to_non_nullable
              as bool?,
      canPostUpdates: freezed == canPostUpdates
          ? _value.canPostUpdates
          : canPostUpdates // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionsModelImpl implements _PermissionsModel {
  const _$PermissionsModelImpl(
      {this.canEdit,
      this.canManageTeam,
      this.canViewFinancials,
      this.canPostUpdates});

  factory _$PermissionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionsModelImplFromJson(json);

  @override
  final bool? canEdit;
  @override
  final bool? canManageTeam;
  @override
  final bool? canViewFinancials;
  @override
  final bool? canPostUpdates;

  @override
  String toString() {
    return 'PermissionsModel(canEdit: $canEdit, canManageTeam: $canManageTeam, canViewFinancials: $canViewFinancials, canPostUpdates: $canPostUpdates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsModelImpl &&
            (identical(other.canEdit, canEdit) || other.canEdit == canEdit) &&
            (identical(other.canManageTeam, canManageTeam) ||
                other.canManageTeam == canManageTeam) &&
            (identical(other.canViewFinancials, canViewFinancials) ||
                other.canViewFinancials == canViewFinancials) &&
            (identical(other.canPostUpdates, canPostUpdates) ||
                other.canPostUpdates == canPostUpdates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, canEdit, canManageTeam, canViewFinancials, canPostUpdates);

  /// Create a copy of PermissionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionsModelImplCopyWith<_$PermissionsModelImpl> get copyWith =>
      __$$PermissionsModelImplCopyWithImpl<_$PermissionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionsModelImplToJson(
      this,
    );
  }
}

abstract class _PermissionsModel implements PermissionsModel {
  const factory _PermissionsModel(
      {final bool? canEdit,
      final bool? canManageTeam,
      final bool? canViewFinancials,
      final bool? canPostUpdates}) = _$PermissionsModelImpl;

  factory _PermissionsModel.fromJson(Map<String, dynamic> json) =
      _$PermissionsModelImpl.fromJson;

  @override
  bool? get canEdit;
  @override
  bool? get canManageTeam;
  @override
  bool? get canViewFinancials;
  @override
  bool? get canPostUpdates;

  /// Create a copy of PermissionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionsModelImplCopyWith<_$PermissionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  String get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  List<num>? get coordinates => throw _privateConstructorUsedError;

  /// Serializes this LocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call(
      {String country,
      String? city,
      String? region,
      String? address,
      List<num>? coordinates});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = freezed,
    Object? region = freezed,
    Object? address = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<num>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
          _$LocationModelImpl value, $Res Function(_$LocationModelImpl) then) =
      __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String country,
      String? city,
      String? region,
      String? address,
      List<num>? coordinates});
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
      _$LocationModelImpl _value, $Res Function(_$LocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = freezed,
    Object? region = freezed,
    Object? address = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$LocationModelImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<num>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelImpl implements _LocationModel {
  const _$LocationModelImpl(
      {required this.country,
      this.city,
      this.region,
      this.address,
      final List<num>? coordinates = const []})
      : _coordinates = coordinates;

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

  @override
  final String country;
  @override
  final String? city;
  @override
  final String? region;
  @override
  final String? address;
  final List<num>? _coordinates;
  @override
  @JsonKey()
  List<num>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationModel(country: $country, city: $city, region: $region, address: $address, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, country, city, region, address,
      const DeepCollectionEquality().hash(_coordinates));

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelImplToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {required final String country,
      final String? city,
      final String? region,
      final String? address,
      final List<num>? coordinates}) = _$LocationModelImpl;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

  @override
  String get country;
  @override
  String? get city;
  @override
  String? get region;
  @override
  String? get address;
  @override
  List<num>? get coordinates;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpectedReturnModel _$ExpectedReturnModelFromJson(Map<String, dynamic> json) {
  return _ExpectedReturnModel.fromJson(json);
}

/// @nodoc
mixin _$ExpectedReturnModel {
  num? get percentage => throw _privateConstructorUsedError;
  String? get period => throw _privateConstructorUsedError;

  /// Serializes this ExpectedReturnModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExpectedReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpectedReturnModelCopyWith<ExpectedReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpectedReturnModelCopyWith<$Res> {
  factory $ExpectedReturnModelCopyWith(
          ExpectedReturnModel value, $Res Function(ExpectedReturnModel) then) =
      _$ExpectedReturnModelCopyWithImpl<$Res, ExpectedReturnModel>;
  @useResult
  $Res call({num? percentage, String? period});
}

/// @nodoc
class _$ExpectedReturnModelCopyWithImpl<$Res, $Val extends ExpectedReturnModel>
    implements $ExpectedReturnModelCopyWith<$Res> {
  _$ExpectedReturnModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpectedReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = freezed,
    Object? period = freezed,
  }) {
    return _then(_value.copyWith(
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpectedReturnModelImplCopyWith<$Res>
    implements $ExpectedReturnModelCopyWith<$Res> {
  factory _$$ExpectedReturnModelImplCopyWith(_$ExpectedReturnModelImpl value,
          $Res Function(_$ExpectedReturnModelImpl) then) =
      __$$ExpectedReturnModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? percentage, String? period});
}

/// @nodoc
class __$$ExpectedReturnModelImplCopyWithImpl<$Res>
    extends _$ExpectedReturnModelCopyWithImpl<$Res, _$ExpectedReturnModelImpl>
    implements _$$ExpectedReturnModelImplCopyWith<$Res> {
  __$$ExpectedReturnModelImplCopyWithImpl(_$ExpectedReturnModelImpl _value,
      $Res Function(_$ExpectedReturnModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpectedReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = freezed,
    Object? period = freezed,
  }) {
    return _then(_$ExpectedReturnModelImpl(
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpectedReturnModelImpl implements _ExpectedReturnModel {
  const _$ExpectedReturnModelImpl({this.percentage, this.period});

  factory _$ExpectedReturnModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpectedReturnModelImplFromJson(json);

  @override
  final num? percentage;
  @override
  final String? period;

  @override
  String toString() {
    return 'ExpectedReturnModel(percentage: $percentage, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpectedReturnModelImpl &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, percentage, period);

  /// Create a copy of ExpectedReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpectedReturnModelImplCopyWith<_$ExpectedReturnModelImpl> get copyWith =>
      __$$ExpectedReturnModelImplCopyWithImpl<_$ExpectedReturnModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpectedReturnModelImplToJson(
      this,
    );
  }
}

abstract class _ExpectedReturnModel implements ExpectedReturnModel {
  const factory _ExpectedReturnModel(
      {final num? percentage,
      final String? period}) = _$ExpectedReturnModelImpl;

  factory _ExpectedReturnModel.fromJson(Map<String, dynamic> json) =
      _$ExpectedReturnModelImpl.fromJson;

  @override
  num? get percentage;
  @override
  String? get period;

  /// Create a copy of ExpectedReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpectedReturnModelImplCopyWith<_$ExpectedReturnModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  String get url => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  bool? get isPrimary => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this ImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call(
      {String url,
      String? filename,
      String? caption,
      bool? isPrimary,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? uploadedAt});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? filename = freezed,
    Object? caption = freezed,
    Object? isPrimary = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageModelImplCopyWith<$Res>
    implements $ImageModelCopyWith<$Res> {
  factory _$$ImageModelImplCopyWith(
          _$ImageModelImpl value, $Res Function(_$ImageModelImpl) then) =
      __$$ImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String? filename,
      String? caption,
      bool? isPrimary,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? uploadedAt});
}

/// @nodoc
class __$$ImageModelImplCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$ImageModelImpl>
    implements _$$ImageModelImplCopyWith<$Res> {
  __$$ImageModelImplCopyWithImpl(
      _$ImageModelImpl _value, $Res Function(_$ImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? filename = freezed,
    Object? caption = freezed,
    Object? isPrimary = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_$ImageModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageModelImpl implements _ImageModel {
  const _$ImageModelImpl(
      {required this.url,
      this.filename,
      this.caption,
      this.isPrimary,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.uploadedAt});

  factory _$ImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageModelImplFromJson(json);

  @override
  final String url;
  @override
  final String? filename;
  @override
  final String? caption;
  @override
  final bool? isPrimary;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? uploadedAt;

  @override
  String toString() {
    return 'ImageModel(url: $url, filename: $filename, caption: $caption, isPrimary: $isPrimary, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, filename, caption, isPrimary, uploadedAt);

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      __$$ImageModelImplCopyWithImpl<_$ImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageModelImplToJson(
      this,
    );
  }
}

abstract class _ImageModel implements ImageModel {
  const factory _ImageModel(
      {required final String url,
      final String? filename,
      final String? caption,
      final bool? isPrimary,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? uploadedAt}) = _$ImageModelImpl;

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$ImageModelImpl.fromJson;

  @override
  String get url;
  @override
  String? get filename;
  @override
  String? get caption;
  @override
  bool? get isPrimary;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get uploadedAt;

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) {
  return _VideoModel.fromJson(json);
}

/// @nodoc
mixin _$VideoModel {
  String get url => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  num? get duration => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this VideoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoModelCopyWith<VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
          VideoModel value, $Res Function(VideoModel) then) =
      _$VideoModelCopyWithImpl<$Res, VideoModel>;
  @useResult
  $Res call(
      {String url,
      String? title,
      String? description,
      String? thumbnail,
      num? duration,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? uploadedAt});
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res, $Val extends VideoModel>
    implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
    Object? duration = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoModelImplCopyWith<$Res>
    implements $VideoModelCopyWith<$Res> {
  factory _$$VideoModelImplCopyWith(
          _$VideoModelImpl value, $Res Function(_$VideoModelImpl) then) =
      __$$VideoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String? title,
      String? description,
      String? thumbnail,
      num? duration,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? uploadedAt});
}

/// @nodoc
class __$$VideoModelImplCopyWithImpl<$Res>
    extends _$VideoModelCopyWithImpl<$Res, _$VideoModelImpl>
    implements _$$VideoModelImplCopyWith<$Res> {
  __$$VideoModelImplCopyWithImpl(
      _$VideoModelImpl _value, $Res Function(_$VideoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
    Object? duration = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_$VideoModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoModelImpl implements _VideoModel {
  const _$VideoModelImpl(
      {required this.url,
      this.title,
      this.description,
      this.thumbnail,
      this.duration,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.uploadedAt});

  factory _$VideoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoModelImplFromJson(json);

  @override
  final String url;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? thumbnail;
  @override
  final num? duration;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? uploadedAt;

  @override
  String toString() {
    return 'VideoModel(url: $url, title: $title, description: $description, thumbnail: $thumbnail, duration: $duration, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, url, title, description, thumbnail, duration, uploadedAt);

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoModelImplCopyWith<_$VideoModelImpl> get copyWith =>
      __$$VideoModelImplCopyWithImpl<_$VideoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoModelImplToJson(
      this,
    );
  }
}

abstract class _VideoModel implements VideoModel {
  const factory _VideoModel(
      {required final String url,
      final String? title,
      final String? description,
      final String? thumbnail,
      final num? duration,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? uploadedAt}) = _$VideoModelImpl;

  factory _VideoModel.fromJson(Map<String, dynamic> json) =
      _$VideoModelImpl.fromJson;

  @override
  String get url;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get thumbnail;
  @override
  num? get duration;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get uploadedAt;

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoModelImplCopyWith<_$VideoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnalyticsModel _$AnalyticsModelFromJson(Map<String, dynamic> json) {
  return _AnalyticsModel.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsModel {
  num? get views => throw _privateConstructorUsedError;
  num? get uniqueViews => throw _privateConstructorUsedError;
  num? get likes => throw _privateConstructorUsedError;
  num? get shares => throw _privateConstructorUsedError;
  num? get bookmarks => throw _privateConstructorUsedError;
  num? get investorInterest => throw _privateConstructorUsedError;
  num? get comments => throw _privateConstructorUsedError;
  num? get followers => throw _privateConstructorUsedError;

  /// Serializes this AnalyticsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyticsModelCopyWith<AnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsModelCopyWith<$Res> {
  factory $AnalyticsModelCopyWith(
          AnalyticsModel value, $Res Function(AnalyticsModel) then) =
      _$AnalyticsModelCopyWithImpl<$Res, AnalyticsModel>;
  @useResult
  $Res call(
      {num? views,
      num? uniqueViews,
      num? likes,
      num? shares,
      num? bookmarks,
      num? investorInterest,
      num? comments,
      num? followers});
}

/// @nodoc
class _$AnalyticsModelCopyWithImpl<$Res, $Val extends AnalyticsModel>
    implements $AnalyticsModelCopyWith<$Res> {
  _$AnalyticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? views = freezed,
    Object? uniqueViews = freezed,
    Object? likes = freezed,
    Object? shares = freezed,
    Object? bookmarks = freezed,
    Object? investorInterest = freezed,
    Object? comments = freezed,
    Object? followers = freezed,
  }) {
    return _then(_value.copyWith(
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as num?,
      uniqueViews: freezed == uniqueViews
          ? _value.uniqueViews
          : uniqueViews // ignore: cast_nullable_to_non_nullable
              as num?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as num?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as num?,
      bookmarks: freezed == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as num?,
      investorInterest: freezed == investorInterest
          ? _value.investorInterest
          : investorInterest // ignore: cast_nullable_to_non_nullable
              as num?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as num?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsModelImplCopyWith<$Res>
    implements $AnalyticsModelCopyWith<$Res> {
  factory _$$AnalyticsModelImplCopyWith(_$AnalyticsModelImpl value,
          $Res Function(_$AnalyticsModelImpl) then) =
      __$$AnalyticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? views,
      num? uniqueViews,
      num? likes,
      num? shares,
      num? bookmarks,
      num? investorInterest,
      num? comments,
      num? followers});
}

/// @nodoc
class __$$AnalyticsModelImplCopyWithImpl<$Res>
    extends _$AnalyticsModelCopyWithImpl<$Res, _$AnalyticsModelImpl>
    implements _$$AnalyticsModelImplCopyWith<$Res> {
  __$$AnalyticsModelImplCopyWithImpl(
      _$AnalyticsModelImpl _value, $Res Function(_$AnalyticsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? views = freezed,
    Object? uniqueViews = freezed,
    Object? likes = freezed,
    Object? shares = freezed,
    Object? bookmarks = freezed,
    Object? investorInterest = freezed,
    Object? comments = freezed,
    Object? followers = freezed,
  }) {
    return _then(_$AnalyticsModelImpl(
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as num?,
      uniqueViews: freezed == uniqueViews
          ? _value.uniqueViews
          : uniqueViews // ignore: cast_nullable_to_non_nullable
              as num?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as num?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as num?,
      bookmarks: freezed == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as num?,
      investorInterest: freezed == investorInterest
          ? _value.investorInterest
          : investorInterest // ignore: cast_nullable_to_non_nullable
              as num?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as num?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsModelImpl implements _AnalyticsModel {
  const _$AnalyticsModelImpl(
      {this.views,
      this.uniqueViews,
      this.likes,
      this.shares,
      this.bookmarks,
      this.investorInterest,
      this.comments,
      this.followers});

  factory _$AnalyticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsModelImplFromJson(json);

  @override
  final num? views;
  @override
  final num? uniqueViews;
  @override
  final num? likes;
  @override
  final num? shares;
  @override
  final num? bookmarks;
  @override
  final num? investorInterest;
  @override
  final num? comments;
  @override
  final num? followers;

  @override
  String toString() {
    return 'AnalyticsModel(views: $views, uniqueViews: $uniqueViews, likes: $likes, shares: $shares, bookmarks: $bookmarks, investorInterest: $investorInterest, comments: $comments, followers: $followers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsModelImpl &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.uniqueViews, uniqueViews) ||
                other.uniqueViews == uniqueViews) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.shares, shares) || other.shares == shares) &&
            (identical(other.bookmarks, bookmarks) ||
                other.bookmarks == bookmarks) &&
            (identical(other.investorInterest, investorInterest) ||
                other.investorInterest == investorInterest) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.followers, followers) ||
                other.followers == followers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, views, uniqueViews, likes,
      shares, bookmarks, investorInterest, comments, followers);

  /// Create a copy of AnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsModelImplCopyWith<_$AnalyticsModelImpl> get copyWith =>
      __$$AnalyticsModelImplCopyWithImpl<_$AnalyticsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsModelImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsModel implements AnalyticsModel {
  const factory _AnalyticsModel(
      {final num? views,
      final num? uniqueViews,
      final num? likes,
      final num? shares,
      final num? bookmarks,
      final num? investorInterest,
      final num? comments,
      final num? followers}) = _$AnalyticsModelImpl;

  factory _AnalyticsModel.fromJson(Map<String, dynamic> json) =
      _$AnalyticsModelImpl.fromJson;

  @override
  num? get views;
  @override
  num? get uniqueViews;
  @override
  num? get likes;
  @override
  num? get shares;
  @override
  num? get bookmarks;
  @override
  num? get investorInterest;
  @override
  num? get comments;
  @override
  num? get followers;

  /// Create a copy of AnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyticsModelImplCopyWith<_$AnalyticsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SeoModel _$SeoModelFromJson(Map<String, dynamic> json) {
  return _SeoModel.fromJson(json);
}

/// @nodoc
mixin _$SeoModel {
  String? get metaTitle => throw _privateConstructorUsedError;
  String? get metaDescription => throw _privateConstructorUsedError;
  List<String>? get keywords => throw _privateConstructorUsedError;

  /// Serializes this SeoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeoModelCopyWith<SeoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeoModelCopyWith<$Res> {
  factory $SeoModelCopyWith(SeoModel value, $Res Function(SeoModel) then) =
      _$SeoModelCopyWithImpl<$Res, SeoModel>;
  @useResult
  $Res call(
      {String? metaTitle, String? metaDescription, List<String>? keywords});
}

/// @nodoc
class _$SeoModelCopyWithImpl<$Res, $Val extends SeoModel>
    implements $SeoModelCopyWith<$Res> {
  _$SeoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaTitle = freezed,
    Object? metaDescription = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_value.copyWith(
      metaTitle: freezed == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeoModelImplCopyWith<$Res>
    implements $SeoModelCopyWith<$Res> {
  factory _$$SeoModelImplCopyWith(
          _$SeoModelImpl value, $Res Function(_$SeoModelImpl) then) =
      __$$SeoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? metaTitle, String? metaDescription, List<String>? keywords});
}

/// @nodoc
class __$$SeoModelImplCopyWithImpl<$Res>
    extends _$SeoModelCopyWithImpl<$Res, _$SeoModelImpl>
    implements _$$SeoModelImplCopyWith<$Res> {
  __$$SeoModelImplCopyWithImpl(
      _$SeoModelImpl _value, $Res Function(_$SeoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaTitle = freezed,
    Object? metaDescription = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_$SeoModelImpl(
      metaTitle: freezed == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: freezed == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeoModelImpl implements _SeoModel {
  const _$SeoModelImpl(
      {this.metaTitle,
      this.metaDescription,
      final List<String>? keywords = const []})
      : _keywords = keywords;

  factory _$SeoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeoModelImplFromJson(json);

  @override
  final String? metaTitle;
  @override
  final String? metaDescription;
  final List<String>? _keywords;
  @override
  @JsonKey()
  List<String>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SeoModel(metaTitle: $metaTitle, metaDescription: $metaDescription, keywords: $keywords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeoModelImpl &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, metaTitle, metaDescription,
      const DeepCollectionEquality().hash(_keywords));

  /// Create a copy of SeoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeoModelImplCopyWith<_$SeoModelImpl> get copyWith =>
      __$$SeoModelImplCopyWithImpl<_$SeoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeoModelImplToJson(
      this,
    );
  }
}

abstract class _SeoModel implements SeoModel {
  const factory _SeoModel(
      {final String? metaTitle,
      final String? metaDescription,
      final List<String>? keywords}) = _$SeoModelImpl;

  factory _SeoModel.fromJson(Map<String, dynamic> json) =
      _$SeoModelImpl.fromJson;

  @override
  String? get metaTitle;
  @override
  String? get metaDescription;
  @override
  List<String>? get keywords;

  /// Create a copy of SeoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeoModelImplCopyWith<_$SeoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuditLogModel _$AuditLogModelFromJson(Map<String, dynamic> json) {
  return _AuditLogModel.fromJson(json);
}

/// @nodoc
mixin _$AuditLogModel {
  String? get action => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'performedBy',
      fromJson: _performedByFromJson,
      toJson: _performedByToJson)
  dynamic get performedBy =>
      throw _privateConstructorUsedError; // Peut être null, String (ID), ou UserModel (populé)
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get timestamp => throw _privateConstructorUsedError;
  dynamic get details => throw _privateConstructorUsedError;

  /// Serializes this AuditLogModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuditLogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuditLogModelCopyWith<AuditLogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditLogModelCopyWith<$Res> {
  factory $AuditLogModelCopyWith(
          AuditLogModel value, $Res Function(AuditLogModel) then) =
      _$AuditLogModelCopyWithImpl<$Res, AuditLogModel>;
  @useResult
  $Res call(
      {String? action,
      @JsonKey(
          name: 'performedBy',
          fromJson: _performedByFromJson,
          toJson: _performedByToJson)
      dynamic performedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? timestamp,
      dynamic details});
}

/// @nodoc
class _$AuditLogModelCopyWithImpl<$Res, $Val extends AuditLogModel>
    implements $AuditLogModelCopyWith<$Res> {
  _$AuditLogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuditLogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? performedBy = freezed,
    Object? timestamp = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      performedBy: freezed == performedBy
          ? _value.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuditLogModelImplCopyWith<$Res>
    implements $AuditLogModelCopyWith<$Res> {
  factory _$$AuditLogModelImplCopyWith(
          _$AuditLogModelImpl value, $Res Function(_$AuditLogModelImpl) then) =
      __$$AuditLogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? action,
      @JsonKey(
          name: 'performedBy',
          fromJson: _performedByFromJson,
          toJson: _performedByToJson)
      dynamic performedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? timestamp,
      dynamic details});
}

/// @nodoc
class __$$AuditLogModelImplCopyWithImpl<$Res>
    extends _$AuditLogModelCopyWithImpl<$Res, _$AuditLogModelImpl>
    implements _$$AuditLogModelImplCopyWith<$Res> {
  __$$AuditLogModelImplCopyWithImpl(
      _$AuditLogModelImpl _value, $Res Function(_$AuditLogModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuditLogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? performedBy = freezed,
    Object? timestamp = freezed,
    Object? details = freezed,
  }) {
    return _then(_$AuditLogModelImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      performedBy: freezed == performedBy
          ? _value.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuditLogModelImpl implements _AuditLogModel {
  const _$AuditLogModelImpl(
      {this.action,
      @JsonKey(
          name: 'performedBy',
          fromJson: _performedByFromJson,
          toJson: _performedByToJson)
      this.performedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.timestamp,
      this.details});

  factory _$AuditLogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuditLogModelImplFromJson(json);

  @override
  final String? action;
  @override
  @JsonKey(
      name: 'performedBy',
      fromJson: _performedByFromJson,
      toJson: _performedByToJson)
  final dynamic performedBy;
// Peut être null, String (ID), ou UserModel (populé)
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? timestamp;
  @override
  final dynamic details;

  @override
  String toString() {
    return 'AuditLogModel(action: $action, performedBy: $performedBy, timestamp: $timestamp, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuditLogModelImpl &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality()
                .equals(other.performedBy, performedBy) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other.details, details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      action,
      const DeepCollectionEquality().hash(performedBy),
      timestamp,
      const DeepCollectionEquality().hash(details));

  /// Create a copy of AuditLogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuditLogModelImplCopyWith<_$AuditLogModelImpl> get copyWith =>
      __$$AuditLogModelImplCopyWithImpl<_$AuditLogModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuditLogModelImplToJson(
      this,
    );
  }
}

abstract class _AuditLogModel implements AuditLogModel {
  const factory _AuditLogModel(
      {final String? action,
      @JsonKey(
          name: 'performedBy',
          fromJson: _performedByFromJson,
          toJson: _performedByToJson)
      final dynamic performedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? timestamp,
      final dynamic details}) = _$AuditLogModelImpl;

  factory _AuditLogModel.fromJson(Map<String, dynamic> json) =
      _$AuditLogModelImpl.fromJson;

  @override
  String? get action;
  @override
  @JsonKey(
      name: 'performedBy',
      fromJson: _performedByFromJson,
      toJson: _performedByToJson)
  dynamic get performedBy; // Peut être null, String (ID), ou UserModel (populé)
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get timestamp;
  @override
  dynamic get details;

  /// Create a copy of AuditLogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuditLogModelImplCopyWith<_$AuditLogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) {
  return _SettingsModel.fromJson(json);
}

/// @nodoc
mixin _$SettingsModel {
  bool? get allowComments => throw _privateConstructorUsedError;
  bool? get allowInvestments => throw _privateConstructorUsedError;
  bool? get autoApproveInvestments => throw _privateConstructorUsedError;
  bool? get notifyOnInvestment => throw _privateConstructorUsedError;
  bool? get publicFinancials => throw _privateConstructorUsedError;

  /// Serializes this SettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsModelCopyWith<SettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsModelCopyWith<$Res> {
  factory $SettingsModelCopyWith(
          SettingsModel value, $Res Function(SettingsModel) then) =
      _$SettingsModelCopyWithImpl<$Res, SettingsModel>;
  @useResult
  $Res call(
      {bool? allowComments,
      bool? allowInvestments,
      bool? autoApproveInvestments,
      bool? notifyOnInvestment,
      bool? publicFinancials});
}

/// @nodoc
class _$SettingsModelCopyWithImpl<$Res, $Val extends SettingsModel>
    implements $SettingsModelCopyWith<$Res> {
  _$SettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowComments = freezed,
    Object? allowInvestments = freezed,
    Object? autoApproveInvestments = freezed,
    Object? notifyOnInvestment = freezed,
    Object? publicFinancials = freezed,
  }) {
    return _then(_value.copyWith(
      allowComments: freezed == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowInvestments: freezed == allowInvestments
          ? _value.allowInvestments
          : allowInvestments // ignore: cast_nullable_to_non_nullable
              as bool?,
      autoApproveInvestments: freezed == autoApproveInvestments
          ? _value.autoApproveInvestments
          : autoApproveInvestments // ignore: cast_nullable_to_non_nullable
              as bool?,
      notifyOnInvestment: freezed == notifyOnInvestment
          ? _value.notifyOnInvestment
          : notifyOnInvestment // ignore: cast_nullable_to_non_nullable
              as bool?,
      publicFinancials: freezed == publicFinancials
          ? _value.publicFinancials
          : publicFinancials // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsModelImplCopyWith<$Res>
    implements $SettingsModelCopyWith<$Res> {
  factory _$$SettingsModelImplCopyWith(
          _$SettingsModelImpl value, $Res Function(_$SettingsModelImpl) then) =
      __$$SettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? allowComments,
      bool? allowInvestments,
      bool? autoApproveInvestments,
      bool? notifyOnInvestment,
      bool? publicFinancials});
}

/// @nodoc
class __$$SettingsModelImplCopyWithImpl<$Res>
    extends _$SettingsModelCopyWithImpl<$Res, _$SettingsModelImpl>
    implements _$$SettingsModelImplCopyWith<$Res> {
  __$$SettingsModelImplCopyWithImpl(
      _$SettingsModelImpl _value, $Res Function(_$SettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowComments = freezed,
    Object? allowInvestments = freezed,
    Object? autoApproveInvestments = freezed,
    Object? notifyOnInvestment = freezed,
    Object? publicFinancials = freezed,
  }) {
    return _then(_$SettingsModelImpl(
      allowComments: freezed == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowInvestments: freezed == allowInvestments
          ? _value.allowInvestments
          : allowInvestments // ignore: cast_nullable_to_non_nullable
              as bool?,
      autoApproveInvestments: freezed == autoApproveInvestments
          ? _value.autoApproveInvestments
          : autoApproveInvestments // ignore: cast_nullable_to_non_nullable
              as bool?,
      notifyOnInvestment: freezed == notifyOnInvestment
          ? _value.notifyOnInvestment
          : notifyOnInvestment // ignore: cast_nullable_to_non_nullable
              as bool?,
      publicFinancials: freezed == publicFinancials
          ? _value.publicFinancials
          : publicFinancials // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsModelImpl implements _SettingsModel {
  const _$SettingsModelImpl(
      {this.allowComments,
      this.allowInvestments,
      this.autoApproveInvestments,
      this.notifyOnInvestment,
      this.publicFinancials});

  factory _$SettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsModelImplFromJson(json);

  @override
  final bool? allowComments;
  @override
  final bool? allowInvestments;
  @override
  final bool? autoApproveInvestments;
  @override
  final bool? notifyOnInvestment;
  @override
  final bool? publicFinancials;

  @override
  String toString() {
    return 'SettingsModel(allowComments: $allowComments, allowInvestments: $allowInvestments, autoApproveInvestments: $autoApproveInvestments, notifyOnInvestment: $notifyOnInvestment, publicFinancials: $publicFinancials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsModelImpl &&
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments) &&
            (identical(other.allowInvestments, allowInvestments) ||
                other.allowInvestments == allowInvestments) &&
            (identical(other.autoApproveInvestments, autoApproveInvestments) ||
                other.autoApproveInvestments == autoApproveInvestments) &&
            (identical(other.notifyOnInvestment, notifyOnInvestment) ||
                other.notifyOnInvestment == notifyOnInvestment) &&
            (identical(other.publicFinancials, publicFinancials) ||
                other.publicFinancials == publicFinancials));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, allowComments, allowInvestments,
      autoApproveInvestments, notifyOnInvestment, publicFinancials);

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      __$$SettingsModelImplCopyWithImpl<_$SettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsModelImplToJson(
      this,
    );
  }
}

abstract class _SettingsModel implements SettingsModel {
  const factory _SettingsModel(
      {final bool? allowComments,
      final bool? allowInvestments,
      final bool? autoApproveInvestments,
      final bool? notifyOnInvestment,
      final bool? publicFinancials}) = _$SettingsModelImpl;

  factory _SettingsModel.fromJson(Map<String, dynamic> json) =
      _$SettingsModelImpl.fromJson;

  @override
  bool? get allowComments;
  @override
  bool? get allowInvestments;
  @override
  bool? get autoApproveInvestments;
  @override
  bool? get notifyOnInvestment;
  @override
  bool? get publicFinancials;

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModerationStatusModel _$ModerationStatusModelFromJson(
    Map<String, dynamic> json) {
  return _ModerationStatusModel.fromJson(json);
}

/// @nodoc
mixin _$ModerationStatusModel {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'reviewedBy',
      fromJson: _reviewedByFromJson,
      toJson: _reviewedByToJson)
  dynamic get reviewedBy =>
      throw _privateConstructorUsedError; // Peut être null, String (ID), ou UserModel (populé)
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  String? get comments => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  num? get overallScore => throw _privateConstructorUsedError;
  ScoresModel? get scores => throw _privateConstructorUsedError;

  /// Serializes this ModerationStatusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationStatusModelCopyWith<ModerationStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationStatusModelCopyWith<$Res> {
  factory $ModerationStatusModelCopyWith(ModerationStatusModel value,
          $Res Function(ModerationStatusModel) then) =
      _$ModerationStatusModelCopyWithImpl<$Res, ModerationStatusModel>;
  @useResult
  $Res call(
      {String? status,
      @JsonKey(
          name: 'reviewedBy',
          fromJson: _reviewedByFromJson,
          toJson: _reviewedByToJson)
      dynamic reviewedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? reviewedAt,
      String? comments,
      String? rejectionReason,
      num? overallScore,
      ScoresModel? scores});

  $ScoresModelCopyWith<$Res>? get scores;
}

/// @nodoc
class _$ModerationStatusModelCopyWithImpl<$Res,
        $Val extends ModerationStatusModel>
    implements $ModerationStatusModelCopyWith<$Res> {
  _$ModerationStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? reviewedBy = freezed,
    Object? reviewedAt = freezed,
    Object? comments = freezed,
    Object? rejectionReason = freezed,
    Object? overallScore = freezed,
    Object? scores = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      overallScore: freezed == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as num?,
      scores: freezed == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as ScoresModel?,
    ) as $Val);
  }

  /// Create a copy of ModerationStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoresModelCopyWith<$Res>? get scores {
    if (_value.scores == null) {
      return null;
    }

    return $ScoresModelCopyWith<$Res>(_value.scores!, (value) {
      return _then(_value.copyWith(scores: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModerationStatusModelImplCopyWith<$Res>
    implements $ModerationStatusModelCopyWith<$Res> {
  factory _$$ModerationStatusModelImplCopyWith(
          _$ModerationStatusModelImpl value,
          $Res Function(_$ModerationStatusModelImpl) then) =
      __$$ModerationStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      @JsonKey(
          name: 'reviewedBy',
          fromJson: _reviewedByFromJson,
          toJson: _reviewedByToJson)
      dynamic reviewedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? reviewedAt,
      String? comments,
      String? rejectionReason,
      num? overallScore,
      ScoresModel? scores});

  @override
  $ScoresModelCopyWith<$Res>? get scores;
}

/// @nodoc
class __$$ModerationStatusModelImplCopyWithImpl<$Res>
    extends _$ModerationStatusModelCopyWithImpl<$Res,
        _$ModerationStatusModelImpl>
    implements _$$ModerationStatusModelImplCopyWith<$Res> {
  __$$ModerationStatusModelImplCopyWithImpl(_$ModerationStatusModelImpl _value,
      $Res Function(_$ModerationStatusModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? reviewedBy = freezed,
    Object? reviewedAt = freezed,
    Object? comments = freezed,
    Object? rejectionReason = freezed,
    Object? overallScore = freezed,
    Object? scores = freezed,
  }) {
    return _then(_$ModerationStatusModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      overallScore: freezed == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as num?,
      scores: freezed == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as ScoresModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationStatusModelImpl implements _ModerationStatusModel {
  const _$ModerationStatusModelImpl(
      {this.status,
      @JsonKey(
          name: 'reviewedBy',
          fromJson: _reviewedByFromJson,
          toJson: _reviewedByToJson)
      this.reviewedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.reviewedAt,
      this.comments,
      this.rejectionReason,
      this.overallScore,
      this.scores});

  factory _$ModerationStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModerationStatusModelImplFromJson(json);

  @override
  final String? status;
  @override
  @JsonKey(
      name: 'reviewedBy',
      fromJson: _reviewedByFromJson,
      toJson: _reviewedByToJson)
  final dynamic reviewedBy;
// Peut être null, String (ID), ou UserModel (populé)
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? reviewedAt;
  @override
  final String? comments;
  @override
  final String? rejectionReason;
  @override
  final num? overallScore;
  @override
  final ScoresModel? scores;

  @override
  String toString() {
    return 'ModerationStatusModel(status: $status, reviewedBy: $reviewedBy, reviewedAt: $reviewedAt, comments: $comments, rejectionReason: $rejectionReason, overallScore: $overallScore, scores: $scores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationStatusModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.reviewedBy, reviewedBy) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.overallScore, overallScore) ||
                other.overallScore == overallScore) &&
            (identical(other.scores, scores) || other.scores == scores));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(reviewedBy),
      reviewedAt,
      comments,
      rejectionReason,
      overallScore,
      scores);

  /// Create a copy of ModerationStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationStatusModelImplCopyWith<_$ModerationStatusModelImpl>
      get copyWith => __$$ModerationStatusModelImplCopyWithImpl<
          _$ModerationStatusModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationStatusModelImplToJson(
      this,
    );
  }
}

abstract class _ModerationStatusModel implements ModerationStatusModel {
  const factory _ModerationStatusModel(
      {final String? status,
      @JsonKey(
          name: 'reviewedBy',
          fromJson: _reviewedByFromJson,
          toJson: _reviewedByToJson)
      final dynamic reviewedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? reviewedAt,
      final String? comments,
      final String? rejectionReason,
      final num? overallScore,
      final ScoresModel? scores}) = _$ModerationStatusModelImpl;

  factory _ModerationStatusModel.fromJson(Map<String, dynamic> json) =
      _$ModerationStatusModelImpl.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(
      name: 'reviewedBy',
      fromJson: _reviewedByFromJson,
      toJson: _reviewedByToJson)
  dynamic get reviewedBy; // Peut être null, String (ID), ou UserModel (populé)
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get reviewedAt;
  @override
  String? get comments;
  @override
  String? get rejectionReason;
  @override
  num? get overallScore;
  @override
  ScoresModel? get scores;

  /// Create a copy of ModerationStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationStatusModelImplCopyWith<_$ModerationStatusModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ScoresModel _$ScoresModelFromJson(Map<String, dynamic> json) {
  return _ScoresModel.fromJson(json);
}

/// @nodoc
mixin _$ScoresModel {
  num? get feasibility => throw _privateConstructorUsedError;
  num? get impact => throw _privateConstructorUsedError;
  num? get team => throw _privateConstructorUsedError;
  num? get financials => throw _privateConstructorUsedError;
  num? get market => throw _privateConstructorUsedError;

  /// Serializes this ScoresModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoresModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoresModelCopyWith<ScoresModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoresModelCopyWith<$Res> {
  factory $ScoresModelCopyWith(
          ScoresModel value, $Res Function(ScoresModel) then) =
      _$ScoresModelCopyWithImpl<$Res, ScoresModel>;
  @useResult
  $Res call(
      {num? feasibility, num? impact, num? team, num? financials, num? market});
}

/// @nodoc
class _$ScoresModelCopyWithImpl<$Res, $Val extends ScoresModel>
    implements $ScoresModelCopyWith<$Res> {
  _$ScoresModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoresModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feasibility = freezed,
    Object? impact = freezed,
    Object? team = freezed,
    Object? financials = freezed,
    Object? market = freezed,
  }) {
    return _then(_value.copyWith(
      feasibility: freezed == feasibility
          ? _value.feasibility
          : feasibility // ignore: cast_nullable_to_non_nullable
              as num?,
      impact: freezed == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as num?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as num?,
      financials: freezed == financials
          ? _value.financials
          : financials // ignore: cast_nullable_to_non_nullable
              as num?,
      market: freezed == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoresModelImplCopyWith<$Res>
    implements $ScoresModelCopyWith<$Res> {
  factory _$$ScoresModelImplCopyWith(
          _$ScoresModelImpl value, $Res Function(_$ScoresModelImpl) then) =
      __$$ScoresModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? feasibility, num? impact, num? team, num? financials, num? market});
}

/// @nodoc
class __$$ScoresModelImplCopyWithImpl<$Res>
    extends _$ScoresModelCopyWithImpl<$Res, _$ScoresModelImpl>
    implements _$$ScoresModelImplCopyWith<$Res> {
  __$$ScoresModelImplCopyWithImpl(
      _$ScoresModelImpl _value, $Res Function(_$ScoresModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScoresModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feasibility = freezed,
    Object? impact = freezed,
    Object? team = freezed,
    Object? financials = freezed,
    Object? market = freezed,
  }) {
    return _then(_$ScoresModelImpl(
      feasibility: freezed == feasibility
          ? _value.feasibility
          : feasibility // ignore: cast_nullable_to_non_nullable
              as num?,
      impact: freezed == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as num?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as num?,
      financials: freezed == financials
          ? _value.financials
          : financials // ignore: cast_nullable_to_non_nullable
              as num?,
      market: freezed == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoresModelImpl implements _ScoresModel {
  const _$ScoresModelImpl(
      {this.feasibility, this.impact, this.team, this.financials, this.market});

  factory _$ScoresModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoresModelImplFromJson(json);

  @override
  final num? feasibility;
  @override
  final num? impact;
  @override
  final num? team;
  @override
  final num? financials;
  @override
  final num? market;

  @override
  String toString() {
    return 'ScoresModel(feasibility: $feasibility, impact: $impact, team: $team, financials: $financials, market: $market)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoresModelImpl &&
            (identical(other.feasibility, feasibility) ||
                other.feasibility == feasibility) &&
            (identical(other.impact, impact) || other.impact == impact) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.financials, financials) ||
                other.financials == financials) &&
            (identical(other.market, market) || other.market == market));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, feasibility, impact, team, financials, market);

  /// Create a copy of ScoresModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoresModelImplCopyWith<_$ScoresModelImpl> get copyWith =>
      __$$ScoresModelImplCopyWithImpl<_$ScoresModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoresModelImplToJson(
      this,
    );
  }
}

abstract class _ScoresModel implements ScoresModel {
  const factory _ScoresModel(
      {final num? feasibility,
      final num? impact,
      final num? team,
      final num? financials,
      final num? market}) = _$ScoresModelImpl;

  factory _ScoresModel.fromJson(Map<String, dynamic> json) =
      _$ScoresModelImpl.fromJson;

  @override
  num? get feasibility;
  @override
  num? get impact;
  @override
  num? get team;
  @override
  num? get financials;
  @override
  num? get market;

  /// Create a copy of ScoresModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoresModelImplCopyWith<_$ScoresModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupSettingsModel _$GroupSettingsModelFromJson(Map<String, dynamic> json) {
  return _GroupSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$GroupSettingsModel {
  bool? get isOpen => throw _privateConstructorUsedError;
  num? get maxMembers => throw _privateConstructorUsedError;
  bool? get requiresApproval => throw _privateConstructorUsedError;

  /// Serializes this GroupSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupSettingsModelCopyWith<GroupSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupSettingsModelCopyWith<$Res> {
  factory $GroupSettingsModelCopyWith(
          GroupSettingsModel value, $Res Function(GroupSettingsModel) then) =
      _$GroupSettingsModelCopyWithImpl<$Res, GroupSettingsModel>;
  @useResult
  $Res call({bool? isOpen, num? maxMembers, bool? requiresApproval});
}

/// @nodoc
class _$GroupSettingsModelCopyWithImpl<$Res, $Val extends GroupSettingsModel>
    implements $GroupSettingsModelCopyWith<$Res> {
  _$GroupSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpen = freezed,
    Object? maxMembers = freezed,
    Object? requiresApproval = freezed,
  }) {
    return _then(_value.copyWith(
      isOpen: freezed == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxMembers: freezed == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as num?,
      requiresApproval: freezed == requiresApproval
          ? _value.requiresApproval
          : requiresApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupSettingsModelImplCopyWith<$Res>
    implements $GroupSettingsModelCopyWith<$Res> {
  factory _$$GroupSettingsModelImplCopyWith(_$GroupSettingsModelImpl value,
          $Res Function(_$GroupSettingsModelImpl) then) =
      __$$GroupSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isOpen, num? maxMembers, bool? requiresApproval});
}

/// @nodoc
class __$$GroupSettingsModelImplCopyWithImpl<$Res>
    extends _$GroupSettingsModelCopyWithImpl<$Res, _$GroupSettingsModelImpl>
    implements _$$GroupSettingsModelImplCopyWith<$Res> {
  __$$GroupSettingsModelImplCopyWithImpl(_$GroupSettingsModelImpl _value,
      $Res Function(_$GroupSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpen = freezed,
    Object? maxMembers = freezed,
    Object? requiresApproval = freezed,
  }) {
    return _then(_$GroupSettingsModelImpl(
      isOpen: freezed == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxMembers: freezed == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as num?,
      requiresApproval: freezed == requiresApproval
          ? _value.requiresApproval
          : requiresApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupSettingsModelImpl implements _GroupSettingsModel {
  const _$GroupSettingsModelImpl(
      {this.isOpen, this.maxMembers, this.requiresApproval});

  factory _$GroupSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupSettingsModelImplFromJson(json);

  @override
  final bool? isOpen;
  @override
  final num? maxMembers;
  @override
  final bool? requiresApproval;

  @override
  String toString() {
    return 'GroupSettingsModel(isOpen: $isOpen, maxMembers: $maxMembers, requiresApproval: $requiresApproval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupSettingsModelImpl &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.maxMembers, maxMembers) ||
                other.maxMembers == maxMembers) &&
            (identical(other.requiresApproval, requiresApproval) ||
                other.requiresApproval == requiresApproval));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isOpen, maxMembers, requiresApproval);

  /// Create a copy of GroupSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupSettingsModelImplCopyWith<_$GroupSettingsModelImpl> get copyWith =>
      __$$GroupSettingsModelImplCopyWithImpl<_$GroupSettingsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _GroupSettingsModel implements GroupSettingsModel {
  const factory _GroupSettingsModel(
      {final bool? isOpen,
      final num? maxMembers,
      final bool? requiresApproval}) = _$GroupSettingsModelImpl;

  factory _GroupSettingsModel.fromJson(Map<String, dynamic> json) =
      _$GroupSettingsModelImpl.fromJson;

  @override
  bool? get isOpen;
  @override
  num? get maxMembers;
  @override
  bool? get requiresApproval;

  /// Create a copy of GroupSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupSettingsModelImplCopyWith<_$GroupSettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FinancialProjectionsModel _$FinancialProjectionsModelFromJson(
    Map<String, dynamic> json) {
  return _FinancialProjectionsModel.fromJson(json);
}

/// @nodoc
mixin _$FinancialProjectionsModel {
  List<RevenueModel>? get revenue => throw _privateConstructorUsedError;
  List<ExpenseModel>? get expenses => throw _privateConstructorUsedError;
  List<ProfitModel>? get profit => throw _privateConstructorUsedError;
  BreakEvenPointModel? get breakEvenPoint => throw _privateConstructorUsedError;

  /// Serializes this FinancialProjectionsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinancialProjectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinancialProjectionsModelCopyWith<FinancialProjectionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialProjectionsModelCopyWith<$Res> {
  factory $FinancialProjectionsModelCopyWith(FinancialProjectionsModel value,
          $Res Function(FinancialProjectionsModel) then) =
      _$FinancialProjectionsModelCopyWithImpl<$Res, FinancialProjectionsModel>;
  @useResult
  $Res call(
      {List<RevenueModel>? revenue,
      List<ExpenseModel>? expenses,
      List<ProfitModel>? profit,
      BreakEvenPointModel? breakEvenPoint});

  $BreakEvenPointModelCopyWith<$Res>? get breakEvenPoint;
}

/// @nodoc
class _$FinancialProjectionsModelCopyWithImpl<$Res,
        $Val extends FinancialProjectionsModel>
    implements $FinancialProjectionsModelCopyWith<$Res> {
  _$FinancialProjectionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinancialProjectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? revenue = freezed,
    Object? expenses = freezed,
    Object? profit = freezed,
    Object? breakEvenPoint = freezed,
  }) {
    return _then(_value.copyWith(
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as List<RevenueModel>?,
      expenses: freezed == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseModel>?,
      profit: freezed == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as List<ProfitModel>?,
      breakEvenPoint: freezed == breakEvenPoint
          ? _value.breakEvenPoint
          : breakEvenPoint // ignore: cast_nullable_to_non_nullable
              as BreakEvenPointModel?,
    ) as $Val);
  }

  /// Create a copy of FinancialProjectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BreakEvenPointModelCopyWith<$Res>? get breakEvenPoint {
    if (_value.breakEvenPoint == null) {
      return null;
    }

    return $BreakEvenPointModelCopyWith<$Res>(_value.breakEvenPoint!, (value) {
      return _then(_value.copyWith(breakEvenPoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FinancialProjectionsModelImplCopyWith<$Res>
    implements $FinancialProjectionsModelCopyWith<$Res> {
  factory _$$FinancialProjectionsModelImplCopyWith(
          _$FinancialProjectionsModelImpl value,
          $Res Function(_$FinancialProjectionsModelImpl) then) =
      __$$FinancialProjectionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RevenueModel>? revenue,
      List<ExpenseModel>? expenses,
      List<ProfitModel>? profit,
      BreakEvenPointModel? breakEvenPoint});

  @override
  $BreakEvenPointModelCopyWith<$Res>? get breakEvenPoint;
}

/// @nodoc
class __$$FinancialProjectionsModelImplCopyWithImpl<$Res>
    extends _$FinancialProjectionsModelCopyWithImpl<$Res,
        _$FinancialProjectionsModelImpl>
    implements _$$FinancialProjectionsModelImplCopyWith<$Res> {
  __$$FinancialProjectionsModelImplCopyWithImpl(
      _$FinancialProjectionsModelImpl _value,
      $Res Function(_$FinancialProjectionsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinancialProjectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? revenue = freezed,
    Object? expenses = freezed,
    Object? profit = freezed,
    Object? breakEvenPoint = freezed,
  }) {
    return _then(_$FinancialProjectionsModelImpl(
      revenue: freezed == revenue
          ? _value._revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as List<RevenueModel>?,
      expenses: freezed == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseModel>?,
      profit: freezed == profit
          ? _value._profit
          : profit // ignore: cast_nullable_to_non_nullable
              as List<ProfitModel>?,
      breakEvenPoint: freezed == breakEvenPoint
          ? _value.breakEvenPoint
          : breakEvenPoint // ignore: cast_nullable_to_non_nullable
              as BreakEvenPointModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinancialProjectionsModelImpl implements _FinancialProjectionsModel {
  const _$FinancialProjectionsModelImpl(
      {final List<RevenueModel>? revenue = const [],
      final List<ExpenseModel>? expenses = const [],
      final List<ProfitModel>? profit = const [],
      this.breakEvenPoint})
      : _revenue = revenue,
        _expenses = expenses,
        _profit = profit;

  factory _$FinancialProjectionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinancialProjectionsModelImplFromJson(json);

  final List<RevenueModel>? _revenue;
  @override
  @JsonKey()
  List<RevenueModel>? get revenue {
    final value = _revenue;
    if (value == null) return null;
    if (_revenue is EqualUnmodifiableListView) return _revenue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExpenseModel>? _expenses;
  @override
  @JsonKey()
  List<ExpenseModel>? get expenses {
    final value = _expenses;
    if (value == null) return null;
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProfitModel>? _profit;
  @override
  @JsonKey()
  List<ProfitModel>? get profit {
    final value = _profit;
    if (value == null) return null;
    if (_profit is EqualUnmodifiableListView) return _profit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BreakEvenPointModel? breakEvenPoint;

  @override
  String toString() {
    return 'FinancialProjectionsModel(revenue: $revenue, expenses: $expenses, profit: $profit, breakEvenPoint: $breakEvenPoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancialProjectionsModelImpl &&
            const DeepCollectionEquality().equals(other._revenue, _revenue) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses) &&
            const DeepCollectionEquality().equals(other._profit, _profit) &&
            (identical(other.breakEvenPoint, breakEvenPoint) ||
                other.breakEvenPoint == breakEvenPoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_revenue),
      const DeepCollectionEquality().hash(_expenses),
      const DeepCollectionEquality().hash(_profit),
      breakEvenPoint);

  /// Create a copy of FinancialProjectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancialProjectionsModelImplCopyWith<_$FinancialProjectionsModelImpl>
      get copyWith => __$$FinancialProjectionsModelImplCopyWithImpl<
          _$FinancialProjectionsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinancialProjectionsModelImplToJson(
      this,
    );
  }
}

abstract class _FinancialProjectionsModel implements FinancialProjectionsModel {
  const factory _FinancialProjectionsModel(
          {final List<RevenueModel>? revenue,
          final List<ExpenseModel>? expenses,
          final List<ProfitModel>? profit,
          final BreakEvenPointModel? breakEvenPoint}) =
      _$FinancialProjectionsModelImpl;

  factory _FinancialProjectionsModel.fromJson(Map<String, dynamic> json) =
      _$FinancialProjectionsModelImpl.fromJson;

  @override
  List<RevenueModel>? get revenue;
  @override
  List<ExpenseModel>? get expenses;
  @override
  List<ProfitModel>? get profit;
  @override
  BreakEvenPointModel? get breakEvenPoint;

  /// Create a copy of FinancialProjectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinancialProjectionsModelImplCopyWith<_$FinancialProjectionsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RevenueModel _$RevenueModelFromJson(Map<String, dynamic> json) {
  return _RevenueModel.fromJson(json);
}

/// @nodoc
mixin _$RevenueModel {
  num? get year => throw _privateConstructorUsedError;
  num? get amount => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this RevenueModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RevenueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RevenueModelCopyWith<RevenueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevenueModelCopyWith<$Res> {
  factory $RevenueModelCopyWith(
          RevenueModel value, $Res Function(RevenueModel) then) =
      _$RevenueModelCopyWithImpl<$Res, RevenueModel>;
  @useResult
  $Res call({num? year, num? amount, String? description});
}

/// @nodoc
class _$RevenueModelCopyWithImpl<$Res, $Val extends RevenueModel>
    implements $RevenueModelCopyWith<$Res> {
  _$RevenueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RevenueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? amount = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as num?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RevenueModelImplCopyWith<$Res>
    implements $RevenueModelCopyWith<$Res> {
  factory _$$RevenueModelImplCopyWith(
          _$RevenueModelImpl value, $Res Function(_$RevenueModelImpl) then) =
      __$$RevenueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? year, num? amount, String? description});
}

/// @nodoc
class __$$RevenueModelImplCopyWithImpl<$Res>
    extends _$RevenueModelCopyWithImpl<$Res, _$RevenueModelImpl>
    implements _$$RevenueModelImplCopyWith<$Res> {
  __$$RevenueModelImplCopyWithImpl(
      _$RevenueModelImpl _value, $Res Function(_$RevenueModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RevenueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? amount = freezed,
    Object? description = freezed,
  }) {
    return _then(_$RevenueModelImpl(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as num?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RevenueModelImpl implements _RevenueModel {
  const _$RevenueModelImpl({this.year, this.amount, this.description});

  factory _$RevenueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevenueModelImplFromJson(json);

  @override
  final num? year;
  @override
  final num? amount;
  @override
  final String? description;

  @override
  String toString() {
    return 'RevenueModel(year: $year, amount: $amount, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevenueModelImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, year, amount, description);

  /// Create a copy of RevenueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RevenueModelImplCopyWith<_$RevenueModelImpl> get copyWith =>
      __$$RevenueModelImplCopyWithImpl<_$RevenueModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RevenueModelImplToJson(
      this,
    );
  }
}

abstract class _RevenueModel implements RevenueModel {
  const factory _RevenueModel(
      {final num? year,
      final num? amount,
      final String? description}) = _$RevenueModelImpl;

  factory _RevenueModel.fromJson(Map<String, dynamic> json) =
      _$RevenueModelImpl.fromJson;

  @override
  num? get year;
  @override
  num? get amount;
  @override
  String? get description;

  /// Create a copy of RevenueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RevenueModelImplCopyWith<_$RevenueModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpenseModel _$ExpenseModelFromJson(Map<String, dynamic> json) {
  return _ExpenseModel.fromJson(json);
}

/// @nodoc
mixin _$ExpenseModel {
  num? get year => throw _privateConstructorUsedError;
  num? get amount => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ExpenseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpenseModelCopyWith<ExpenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseModelCopyWith<$Res> {
  factory $ExpenseModelCopyWith(
          ExpenseModel value, $Res Function(ExpenseModel) then) =
      _$ExpenseModelCopyWithImpl<$Res, ExpenseModel>;
  @useResult
  $Res call({num? year, num? amount, String? category, String? description});
}

/// @nodoc
class _$ExpenseModelCopyWithImpl<$Res, $Val extends ExpenseModel>
    implements $ExpenseModelCopyWith<$Res> {
  _$ExpenseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? amount = freezed,
    Object? category = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as num?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseModelImplCopyWith<$Res>
    implements $ExpenseModelCopyWith<$Res> {
  factory _$$ExpenseModelImplCopyWith(
          _$ExpenseModelImpl value, $Res Function(_$ExpenseModelImpl) then) =
      __$$ExpenseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? year, num? amount, String? category, String? description});
}

/// @nodoc
class __$$ExpenseModelImplCopyWithImpl<$Res>
    extends _$ExpenseModelCopyWithImpl<$Res, _$ExpenseModelImpl>
    implements _$$ExpenseModelImplCopyWith<$Res> {
  __$$ExpenseModelImplCopyWithImpl(
      _$ExpenseModelImpl _value, $Res Function(_$ExpenseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? amount = freezed,
    Object? category = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ExpenseModelImpl(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as num?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseModelImpl implements _ExpenseModel {
  const _$ExpenseModelImpl(
      {this.year, this.amount, this.category, this.description});

  factory _$ExpenseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseModelImplFromJson(json);

  @override
  final num? year;
  @override
  final num? amount;
  @override
  final String? category;
  @override
  final String? description;

  @override
  String toString() {
    return 'ExpenseModel(year: $year, amount: $amount, category: $category, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseModelImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, year, amount, category, description);

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseModelImplCopyWith<_$ExpenseModelImpl> get copyWith =>
      __$$ExpenseModelImplCopyWithImpl<_$ExpenseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseModelImplToJson(
      this,
    );
  }
}

abstract class _ExpenseModel implements ExpenseModel {
  const factory _ExpenseModel(
      {final num? year,
      final num? amount,
      final String? category,
      final String? description}) = _$ExpenseModelImpl;

  factory _ExpenseModel.fromJson(Map<String, dynamic> json) =
      _$ExpenseModelImpl.fromJson;

  @override
  num? get year;
  @override
  num? get amount;
  @override
  String? get category;
  @override
  String? get description;

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpenseModelImplCopyWith<_$ExpenseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfitModel _$ProfitModelFromJson(Map<String, dynamic> json) {
  return _ProfitModel.fromJson(json);
}

/// @nodoc
mixin _$ProfitModel {
  num? get year => throw _privateConstructorUsedError;
  num? get amount => throw _privateConstructorUsedError;

  /// Serializes this ProfitModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfitModelCopyWith<ProfitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfitModelCopyWith<$Res> {
  factory $ProfitModelCopyWith(
          ProfitModel value, $Res Function(ProfitModel) then) =
      _$ProfitModelCopyWithImpl<$Res, ProfitModel>;
  @useResult
  $Res call({num? year, num? amount});
}

/// @nodoc
class _$ProfitModelCopyWithImpl<$Res, $Val extends ProfitModel>
    implements $ProfitModelCopyWith<$Res> {
  _$ProfitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as num?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfitModelImplCopyWith<$Res>
    implements $ProfitModelCopyWith<$Res> {
  factory _$$ProfitModelImplCopyWith(
          _$ProfitModelImpl value, $Res Function(_$ProfitModelImpl) then) =
      __$$ProfitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? year, num? amount});
}

/// @nodoc
class __$$ProfitModelImplCopyWithImpl<$Res>
    extends _$ProfitModelCopyWithImpl<$Res, _$ProfitModelImpl>
    implements _$$ProfitModelImplCopyWith<$Res> {
  __$$ProfitModelImplCopyWithImpl(
      _$ProfitModelImpl _value, $Res Function(_$ProfitModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$ProfitModelImpl(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as num?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfitModelImpl implements _ProfitModel {
  const _$ProfitModelImpl({this.year, this.amount});

  factory _$ProfitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfitModelImplFromJson(json);

  @override
  final num? year;
  @override
  final num? amount;

  @override
  String toString() {
    return 'ProfitModel(year: $year, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfitModelImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, year, amount);

  /// Create a copy of ProfitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfitModelImplCopyWith<_$ProfitModelImpl> get copyWith =>
      __$$ProfitModelImplCopyWithImpl<_$ProfitModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfitModelImplToJson(
      this,
    );
  }
}

abstract class _ProfitModel implements ProfitModel {
  const factory _ProfitModel({final num? year, final num? amount}) =
      _$ProfitModelImpl;

  factory _ProfitModel.fromJson(Map<String, dynamic> json) =
      _$ProfitModelImpl.fromJson;

  @override
  num? get year;
  @override
  num? get amount;

  /// Create a copy of ProfitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfitModelImplCopyWith<_$ProfitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BreakEvenPointModel _$BreakEvenPointModelFromJson(Map<String, dynamic> json) {
  return _BreakEvenPointModel.fromJson(json);
}

/// @nodoc
mixin _$BreakEvenPointModel {
  num? get months => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this BreakEvenPointModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BreakEvenPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BreakEvenPointModelCopyWith<BreakEvenPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreakEvenPointModelCopyWith<$Res> {
  factory $BreakEvenPointModelCopyWith(
          BreakEvenPointModel value, $Res Function(BreakEvenPointModel) then) =
      _$BreakEvenPointModelCopyWithImpl<$Res, BreakEvenPointModel>;
  @useResult
  $Res call({num? months, String? description});
}

/// @nodoc
class _$BreakEvenPointModelCopyWithImpl<$Res, $Val extends BreakEvenPointModel>
    implements $BreakEvenPointModelCopyWith<$Res> {
  _$BreakEvenPointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BreakEvenPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? months = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      months: freezed == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as num?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreakEvenPointModelImplCopyWith<$Res>
    implements $BreakEvenPointModelCopyWith<$Res> {
  factory _$$BreakEvenPointModelImplCopyWith(_$BreakEvenPointModelImpl value,
          $Res Function(_$BreakEvenPointModelImpl) then) =
      __$$BreakEvenPointModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? months, String? description});
}

/// @nodoc
class __$$BreakEvenPointModelImplCopyWithImpl<$Res>
    extends _$BreakEvenPointModelCopyWithImpl<$Res, _$BreakEvenPointModelImpl>
    implements _$$BreakEvenPointModelImplCopyWith<$Res> {
  __$$BreakEvenPointModelImplCopyWithImpl(_$BreakEvenPointModelImpl _value,
      $Res Function(_$BreakEvenPointModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BreakEvenPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? months = freezed,
    Object? description = freezed,
  }) {
    return _then(_$BreakEvenPointModelImpl(
      months: freezed == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as num?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreakEvenPointModelImpl implements _BreakEvenPointModel {
  const _$BreakEvenPointModelImpl({this.months, this.description});

  factory _$BreakEvenPointModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreakEvenPointModelImplFromJson(json);

  @override
  final num? months;
  @override
  final String? description;

  @override
  String toString() {
    return 'BreakEvenPointModel(months: $months, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreakEvenPointModelImpl &&
            (identical(other.months, months) || other.months == months) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, months, description);

  /// Create a copy of BreakEvenPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreakEvenPointModelImplCopyWith<_$BreakEvenPointModelImpl> get copyWith =>
      __$$BreakEvenPointModelImplCopyWithImpl<_$BreakEvenPointModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreakEvenPointModelImplToJson(
      this,
    );
  }
}

abstract class _BreakEvenPointModel implements BreakEvenPointModel {
  const factory _BreakEvenPointModel(
      {final num? months,
      final String? description}) = _$BreakEvenPointModelImpl;

  factory _BreakEvenPointModel.fromJson(Map<String, dynamic> json) =
      _$BreakEvenPointModelImpl.fromJson;

  @override
  num? get months;
  @override
  String? get description;

  /// Create a copy of BreakEvenPointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreakEvenPointModelImplCopyWith<_$BreakEvenPointModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImpactModel _$ImpactModelFromJson(Map<String, dynamic> json) {
  return _ImpactModel.fromJson(json);
}

/// @nodoc
mixin _$ImpactModel {
  SocialModel? get social => throw _privateConstructorUsedError;
  String? get environmental => throw _privateConstructorUsedError;
  String? get economic => throw _privateConstructorUsedError;

  /// Serializes this ImpactModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImpactModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImpactModelCopyWith<ImpactModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImpactModelCopyWith<$Res> {
  factory $ImpactModelCopyWith(
          ImpactModel value, $Res Function(ImpactModel) then) =
      _$ImpactModelCopyWithImpl<$Res, ImpactModel>;
  @useResult
  $Res call({SocialModel? social, String? environmental, String? economic});

  $SocialModelCopyWith<$Res>? get social;
}

/// @nodoc
class _$ImpactModelCopyWithImpl<$Res, $Val extends ImpactModel>
    implements $ImpactModelCopyWith<$Res> {
  _$ImpactModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImpactModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? social = freezed,
    Object? environmental = freezed,
    Object? economic = freezed,
  }) {
    return _then(_value.copyWith(
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as SocialModel?,
      environmental: freezed == environmental
          ? _value.environmental
          : environmental // ignore: cast_nullable_to_non_nullable
              as String?,
      economic: freezed == economic
          ? _value.economic
          : economic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ImpactModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialModelCopyWith<$Res>? get social {
    if (_value.social == null) {
      return null;
    }

    return $SocialModelCopyWith<$Res>(_value.social!, (value) {
      return _then(_value.copyWith(social: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImpactModelImplCopyWith<$Res>
    implements $ImpactModelCopyWith<$Res> {
  factory _$$ImpactModelImplCopyWith(
          _$ImpactModelImpl value, $Res Function(_$ImpactModelImpl) then) =
      __$$ImpactModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SocialModel? social, String? environmental, String? economic});

  @override
  $SocialModelCopyWith<$Res>? get social;
}

/// @nodoc
class __$$ImpactModelImplCopyWithImpl<$Res>
    extends _$ImpactModelCopyWithImpl<$Res, _$ImpactModelImpl>
    implements _$$ImpactModelImplCopyWith<$Res> {
  __$$ImpactModelImplCopyWithImpl(
      _$ImpactModelImpl _value, $Res Function(_$ImpactModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImpactModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? social = freezed,
    Object? environmental = freezed,
    Object? economic = freezed,
  }) {
    return _then(_$ImpactModelImpl(
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as SocialModel?,
      environmental: freezed == environmental
          ? _value.environmental
          : environmental // ignore: cast_nullable_to_non_nullable
              as String?,
      economic: freezed == economic
          ? _value.economic
          : economic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImpactModelImpl implements _ImpactModel {
  const _$ImpactModelImpl({this.social, this.environmental, this.economic});

  factory _$ImpactModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImpactModelImplFromJson(json);

  @override
  final SocialModel? social;
  @override
  final String? environmental;
  @override
  final String? economic;

  @override
  String toString() {
    return 'ImpactModel(social: $social, environmental: $environmental, economic: $economic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImpactModelImpl &&
            (identical(other.social, social) || other.social == social) &&
            (identical(other.environmental, environmental) ||
                other.environmental == environmental) &&
            (identical(other.economic, economic) ||
                other.economic == economic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, social, environmental, economic);

  /// Create a copy of ImpactModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImpactModelImplCopyWith<_$ImpactModelImpl> get copyWith =>
      __$$ImpactModelImplCopyWithImpl<_$ImpactModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImpactModelImplToJson(
      this,
    );
  }
}

abstract class _ImpactModel implements ImpactModel {
  const factory _ImpactModel(
      {final SocialModel? social,
      final String? environmental,
      final String? economic}) = _$ImpactModelImpl;

  factory _ImpactModel.fromJson(Map<String, dynamic> json) =
      _$ImpactModelImpl.fromJson;

  @override
  SocialModel? get social;
  @override
  String? get environmental;
  @override
  String? get economic;

  /// Create a copy of ImpactModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImpactModelImplCopyWith<_$ImpactModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialModel _$SocialModelFromJson(Map<String, dynamic> json) {
  return _SocialModel.fromJson(json);
}

/// @nodoc
mixin _$SocialModel {
  String? get description => throw _privateConstructorUsedError;
  List<MetricModel>? get metrics => throw _privateConstructorUsedError;
  List<num>? get sdgGoals => throw _privateConstructorUsedError;
  BeneficiariesModel? get beneficiaries => throw _privateConstructorUsedError;

  /// Serializes this SocialModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialModelCopyWith<SocialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialModelCopyWith<$Res> {
  factory $SocialModelCopyWith(
          SocialModel value, $Res Function(SocialModel) then) =
      _$SocialModelCopyWithImpl<$Res, SocialModel>;
  @useResult
  $Res call(
      {String? description,
      List<MetricModel>? metrics,
      List<num>? sdgGoals,
      BeneficiariesModel? beneficiaries});

  $BeneficiariesModelCopyWith<$Res>? get beneficiaries;
}

/// @nodoc
class _$SocialModelCopyWithImpl<$Res, $Val extends SocialModel>
    implements $SocialModelCopyWith<$Res> {
  _$SocialModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? metrics = freezed,
    Object? sdgGoals = freezed,
    Object? beneficiaries = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metrics: freezed == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as List<MetricModel>?,
      sdgGoals: freezed == sdgGoals
          ? _value.sdgGoals
          : sdgGoals // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      beneficiaries: freezed == beneficiaries
          ? _value.beneficiaries
          : beneficiaries // ignore: cast_nullable_to_non_nullable
              as BeneficiariesModel?,
    ) as $Val);
  }

  /// Create a copy of SocialModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeneficiariesModelCopyWith<$Res>? get beneficiaries {
    if (_value.beneficiaries == null) {
      return null;
    }

    return $BeneficiariesModelCopyWith<$Res>(_value.beneficiaries!, (value) {
      return _then(_value.copyWith(beneficiaries: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocialModelImplCopyWith<$Res>
    implements $SocialModelCopyWith<$Res> {
  factory _$$SocialModelImplCopyWith(
          _$SocialModelImpl value, $Res Function(_$SocialModelImpl) then) =
      __$$SocialModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      List<MetricModel>? metrics,
      List<num>? sdgGoals,
      BeneficiariesModel? beneficiaries});

  @override
  $BeneficiariesModelCopyWith<$Res>? get beneficiaries;
}

/// @nodoc
class __$$SocialModelImplCopyWithImpl<$Res>
    extends _$SocialModelCopyWithImpl<$Res, _$SocialModelImpl>
    implements _$$SocialModelImplCopyWith<$Res> {
  __$$SocialModelImplCopyWithImpl(
      _$SocialModelImpl _value, $Res Function(_$SocialModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? metrics = freezed,
    Object? sdgGoals = freezed,
    Object? beneficiaries = freezed,
  }) {
    return _then(_$SocialModelImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metrics: freezed == metrics
          ? _value._metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as List<MetricModel>?,
      sdgGoals: freezed == sdgGoals
          ? _value._sdgGoals
          : sdgGoals // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      beneficiaries: freezed == beneficiaries
          ? _value.beneficiaries
          : beneficiaries // ignore: cast_nullable_to_non_nullable
              as BeneficiariesModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialModelImpl implements _SocialModel {
  const _$SocialModelImpl(
      {this.description,
      final List<MetricModel>? metrics = const [],
      final List<num>? sdgGoals = const [],
      this.beneficiaries})
      : _metrics = metrics,
        _sdgGoals = sdgGoals;

  factory _$SocialModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialModelImplFromJson(json);

  @override
  final String? description;
  final List<MetricModel>? _metrics;
  @override
  @JsonKey()
  List<MetricModel>? get metrics {
    final value = _metrics;
    if (value == null) return null;
    if (_metrics is EqualUnmodifiableListView) return _metrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<num>? _sdgGoals;
  @override
  @JsonKey()
  List<num>? get sdgGoals {
    final value = _sdgGoals;
    if (value == null) return null;
    if (_sdgGoals is EqualUnmodifiableListView) return _sdgGoals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BeneficiariesModel? beneficiaries;

  @override
  String toString() {
    return 'SocialModel(description: $description, metrics: $metrics, sdgGoals: $sdgGoals, beneficiaries: $beneficiaries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialModelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._metrics, _metrics) &&
            const DeepCollectionEquality().equals(other._sdgGoals, _sdgGoals) &&
            (identical(other.beneficiaries, beneficiaries) ||
                other.beneficiaries == beneficiaries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      const DeepCollectionEquality().hash(_metrics),
      const DeepCollectionEquality().hash(_sdgGoals),
      beneficiaries);

  /// Create a copy of SocialModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialModelImplCopyWith<_$SocialModelImpl> get copyWith =>
      __$$SocialModelImplCopyWithImpl<_$SocialModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialModelImplToJson(
      this,
    );
  }
}

abstract class _SocialModel implements SocialModel {
  const factory _SocialModel(
      {final String? description,
      final List<MetricModel>? metrics,
      final List<num>? sdgGoals,
      final BeneficiariesModel? beneficiaries}) = _$SocialModelImpl;

  factory _SocialModel.fromJson(Map<String, dynamic> json) =
      _$SocialModelImpl.fromJson;

  @override
  String? get description;
  @override
  List<MetricModel>? get metrics;
  @override
  List<num>? get sdgGoals;
  @override
  BeneficiariesModel? get beneficiaries;

  /// Create a copy of SocialModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialModelImplCopyWith<_$SocialModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetricModel _$MetricModelFromJson(Map<String, dynamic> json) {
  return _MetricModel.fromJson(json);
}

/// @nodoc
mixin _$MetricModel {
  String? get name => throw _privateConstructorUsedError;
  num? get target => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this MetricModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetricModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetricModelCopyWith<MetricModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricModelCopyWith<$Res> {
  factory $MetricModelCopyWith(
          MetricModel value, $Res Function(MetricModel) then) =
      _$MetricModelCopyWithImpl<$Res, MetricModel>;
  @useResult
  $Res call({String? name, num? target, String? unit, String? description});
}

/// @nodoc
class _$MetricModelCopyWithImpl<$Res, $Val extends MetricModel>
    implements $MetricModelCopyWith<$Res> {
  _$MetricModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetricModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? target = freezed,
    Object? unit = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as num?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetricModelImplCopyWith<$Res>
    implements $MetricModelCopyWith<$Res> {
  factory _$$MetricModelImplCopyWith(
          _$MetricModelImpl value, $Res Function(_$MetricModelImpl) then) =
      __$$MetricModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, num? target, String? unit, String? description});
}

/// @nodoc
class __$$MetricModelImplCopyWithImpl<$Res>
    extends _$MetricModelCopyWithImpl<$Res, _$MetricModelImpl>
    implements _$$MetricModelImplCopyWith<$Res> {
  __$$MetricModelImplCopyWithImpl(
      _$MetricModelImpl _value, $Res Function(_$MetricModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? target = freezed,
    Object? unit = freezed,
    Object? description = freezed,
  }) {
    return _then(_$MetricModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as num?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetricModelImpl implements _MetricModel {
  const _$MetricModelImpl(
      {this.name, this.target, this.unit, this.description});

  factory _$MetricModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetricModelImplFromJson(json);

  @override
  final String? name;
  @override
  final num? target;
  @override
  final String? unit;
  @override
  final String? description;

  @override
  String toString() {
    return 'MetricModel(name: $name, target: $target, unit: $unit, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetricModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, target, unit, description);

  /// Create a copy of MetricModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetricModelImplCopyWith<_$MetricModelImpl> get copyWith =>
      __$$MetricModelImplCopyWithImpl<_$MetricModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetricModelImplToJson(
      this,
    );
  }
}

abstract class _MetricModel implements MetricModel {
  const factory _MetricModel(
      {final String? name,
      final num? target,
      final String? unit,
      final String? description}) = _$MetricModelImpl;

  factory _MetricModel.fromJson(Map<String, dynamic> json) =
      _$MetricModelImpl.fromJson;

  @override
  String? get name;
  @override
  num? get target;
  @override
  String? get unit;
  @override
  String? get description;

  /// Create a copy of MetricModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetricModelImplCopyWith<_$MetricModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BeneficiariesModel _$BeneficiariesModelFromJson(Map<String, dynamic> json) {
  return _BeneficiariesModel.fromJson(json);
}

/// @nodoc
mixin _$BeneficiariesModel {
  num? get direct => throw _privateConstructorUsedError;
  num? get indirect => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this BeneficiariesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BeneficiariesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BeneficiariesModelCopyWith<BeneficiariesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiariesModelCopyWith<$Res> {
  factory $BeneficiariesModelCopyWith(
          BeneficiariesModel value, $Res Function(BeneficiariesModel) then) =
      _$BeneficiariesModelCopyWithImpl<$Res, BeneficiariesModel>;
  @useResult
  $Res call({num? direct, num? indirect, String? description});
}

/// @nodoc
class _$BeneficiariesModelCopyWithImpl<$Res, $Val extends BeneficiariesModel>
    implements $BeneficiariesModelCopyWith<$Res> {
  _$BeneficiariesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BeneficiariesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direct = freezed,
    Object? indirect = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      direct: freezed == direct
          ? _value.direct
          : direct // ignore: cast_nullable_to_non_nullable
              as num?,
      indirect: freezed == indirect
          ? _value.indirect
          : indirect // ignore: cast_nullable_to_non_nullable
              as num?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeneficiariesModelImplCopyWith<$Res>
    implements $BeneficiariesModelCopyWith<$Res> {
  factory _$$BeneficiariesModelImplCopyWith(_$BeneficiariesModelImpl value,
          $Res Function(_$BeneficiariesModelImpl) then) =
      __$$BeneficiariesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? direct, num? indirect, String? description});
}

/// @nodoc
class __$$BeneficiariesModelImplCopyWithImpl<$Res>
    extends _$BeneficiariesModelCopyWithImpl<$Res, _$BeneficiariesModelImpl>
    implements _$$BeneficiariesModelImplCopyWith<$Res> {
  __$$BeneficiariesModelImplCopyWithImpl(_$BeneficiariesModelImpl _value,
      $Res Function(_$BeneficiariesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeneficiariesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direct = freezed,
    Object? indirect = freezed,
    Object? description = freezed,
  }) {
    return _then(_$BeneficiariesModelImpl(
      direct: freezed == direct
          ? _value.direct
          : direct // ignore: cast_nullable_to_non_nullable
              as num?,
      indirect: freezed == indirect
          ? _value.indirect
          : indirect // ignore: cast_nullable_to_non_nullable
              as num?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeneficiariesModelImpl implements _BeneficiariesModel {
  const _$BeneficiariesModelImpl(
      {this.direct, this.indirect, this.description});

  factory _$BeneficiariesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeneficiariesModelImplFromJson(json);

  @override
  final num? direct;
  @override
  final num? indirect;
  @override
  final String? description;

  @override
  String toString() {
    return 'BeneficiariesModel(direct: $direct, indirect: $indirect, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiariesModelImpl &&
            (identical(other.direct, direct) || other.direct == direct) &&
            (identical(other.indirect, indirect) ||
                other.indirect == indirect) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, direct, indirect, description);

  /// Create a copy of BeneficiariesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiariesModelImplCopyWith<_$BeneficiariesModelImpl> get copyWith =>
      __$$BeneficiariesModelImplCopyWithImpl<_$BeneficiariesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeneficiariesModelImplToJson(
      this,
    );
  }
}

abstract class _BeneficiariesModel implements BeneficiariesModel {
  const factory _BeneficiariesModel(
      {final num? direct,
      final num? indirect,
      final String? description}) = _$BeneficiariesModelImpl;

  factory _BeneficiariesModel.fromJson(Map<String, dynamic> json) =
      _$BeneficiariesModelImpl.fromJson;

  @override
  num? get direct;
  @override
  num? get indirect;
  @override
  String? get description;

  /// Create a copy of BeneficiariesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeneficiariesModelImplCopyWith<_$BeneficiariesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RiskModel _$RiskModelFromJson(Map<String, dynamic> json) {
  return _RiskModel.fromJson(json);
}

/// @nodoc
mixin _$RiskModel {
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get probability => throw _privateConstructorUsedError;
  String get impact => throw _privateConstructorUsedError;
  String get mitigation => throw _privateConstructorUsedError;

  /// Serializes this RiskModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RiskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RiskModelCopyWith<RiskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiskModelCopyWith<$Res> {
  factory $RiskModelCopyWith(RiskModel value, $Res Function(RiskModel) then) =
      _$RiskModelCopyWithImpl<$Res, RiskModel>;
  @useResult
  $Res call(
      {String type,
      String description,
      String probability,
      String impact,
      String mitigation});
}

/// @nodoc
class _$RiskModelCopyWithImpl<$Res, $Val extends RiskModel>
    implements $RiskModelCopyWith<$Res> {
  _$RiskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? description = null,
    Object? probability = null,
    Object? impact = null,
    Object? mitigation = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as String,
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as String,
      mitigation: null == mitigation
          ? _value.mitigation
          : mitigation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiskModelImplCopyWith<$Res>
    implements $RiskModelCopyWith<$Res> {
  factory _$$RiskModelImplCopyWith(
          _$RiskModelImpl value, $Res Function(_$RiskModelImpl) then) =
      __$$RiskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String description,
      String probability,
      String impact,
      String mitigation});
}

/// @nodoc
class __$$RiskModelImplCopyWithImpl<$Res>
    extends _$RiskModelCopyWithImpl<$Res, _$RiskModelImpl>
    implements _$$RiskModelImplCopyWith<$Res> {
  __$$RiskModelImplCopyWithImpl(
      _$RiskModelImpl _value, $Res Function(_$RiskModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RiskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? description = null,
    Object? probability = null,
    Object? impact = null,
    Object? mitigation = null,
  }) {
    return _then(_$RiskModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as String,
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as String,
      mitigation: null == mitigation
          ? _value.mitigation
          : mitigation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiskModelImpl implements _RiskModel {
  const _$RiskModelImpl(
      {required this.type,
      required this.description,
      required this.probability,
      required this.impact,
      required this.mitigation});

  factory _$RiskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiskModelImplFromJson(json);

  @override
  final String type;
  @override
  final String description;
  @override
  final String probability;
  @override
  final String impact;
  @override
  final String mitigation;

  @override
  String toString() {
    return 'RiskModel(type: $type, description: $description, probability: $probability, impact: $impact, mitigation: $mitigation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiskModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.probability, probability) ||
                other.probability == probability) &&
            (identical(other.impact, impact) || other.impact == impact) &&
            (identical(other.mitigation, mitigation) ||
                other.mitigation == mitigation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, description, probability, impact, mitigation);

  /// Create a copy of RiskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiskModelImplCopyWith<_$RiskModelImpl> get copyWith =>
      __$$RiskModelImplCopyWithImpl<_$RiskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiskModelImplToJson(
      this,
    );
  }
}

abstract class _RiskModel implements RiskModel {
  const factory _RiskModel(
      {required final String type,
      required final String description,
      required final String probability,
      required final String impact,
      required final String mitigation}) = _$RiskModelImpl;

  factory _RiskModel.fromJson(Map<String, dynamic> json) =
      _$RiskModelImpl.fromJson;

  @override
  String get type;
  @override
  String get description;
  @override
  String get probability;
  @override
  String get impact;
  @override
  String get mitigation;

  /// Create a copy of RiskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiskModelImplCopyWith<_$RiskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
