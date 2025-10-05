// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvestmentModel _$InvestmentModelFromJson(Map<String, dynamic> json) {
  return _InvestmentModel.fromJson(json);
}

/// @nodoc
mixin _$InvestmentModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'investor', fromJson: _investorFromJson, toJson: _investorToJson)
  dynamic get investor =>
      throw _privateConstructorUsedError; // String (ID) or UserModel (populated)
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project =>
      throw _privateConstructorUsedError; // String (ID) or ProjectModel (populated)
  num get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  num get exchangeRate => throw _privateConstructorUsedError;
  num get amountInBaseCurrency => throw _privateConstructorUsedError;
  String get investmentType => throw _privateConstructorUsedError;
  double get equityPercentage => throw _privateConstructorUsedError;
  ExpectedReturnModel? get expectedReturn => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  PaymentDetailsModel? get paymentDetails => throw _privateConstructorUsedError;
  List<ReturnModel>? get returns => throw _privateConstructorUsedError;
  num? get totalReturns => throw _privateConstructorUsedError;
  num? get roi => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this InvestmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvestmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvestmentModelCopyWith<InvestmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentModelCopyWith<$Res> {
  factory $InvestmentModelCopyWith(
          InvestmentModel value, $Res Function(InvestmentModel) then) =
      _$InvestmentModelCopyWithImpl<$Res, InvestmentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(
          name: 'investor',
          fromJson: _investorFromJson,
          toJson: _investorToJson)
      dynamic investor,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      num amount,
      String currency,
      num exchangeRate,
      num amountInBaseCurrency,
      String investmentType,
      double equityPercentage,
      ExpectedReturnModel? expectedReturn,
      String? status,
      String? paymentMethod,
      PaymentDetailsModel? paymentDetails,
      List<ReturnModel>? returns,
      num? totalReturns,
      num? roi,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});

  $ExpectedReturnModelCopyWith<$Res>? get expectedReturn;
  $PaymentDetailsModelCopyWith<$Res>? get paymentDetails;
}

/// @nodoc
class _$InvestmentModelCopyWithImpl<$Res, $Val extends InvestmentModel>
    implements $InvestmentModelCopyWith<$Res> {
  _$InvestmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvestmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? investor = freezed,
    Object? project = freezed,
    Object? amount = null,
    Object? currency = null,
    Object? exchangeRate = null,
    Object? amountInBaseCurrency = null,
    Object? investmentType = null,
    Object? equityPercentage = null,
    Object? expectedReturn = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? paymentDetails = freezed,
    Object? returns = freezed,
    Object? totalReturns = freezed,
    Object? roi = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      investor: freezed == investor
          ? _value.investor
          : investor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as dynamic,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      exchangeRate: null == exchangeRate
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as num,
      amountInBaseCurrency: null == amountInBaseCurrency
          ? _value.amountInBaseCurrency
          : amountInBaseCurrency // ignore: cast_nullable_to_non_nullable
              as num,
      investmentType: null == investmentType
          ? _value.investmentType
          : investmentType // ignore: cast_nullable_to_non_nullable
              as String,
      equityPercentage: null == equityPercentage
          ? _value.equityPercentage
          : equityPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      expectedReturn: freezed == expectedReturn
          ? _value.expectedReturn
          : expectedReturn // ignore: cast_nullable_to_non_nullable
              as ExpectedReturnModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentDetailsModel?,
      returns: freezed == returns
          ? _value.returns
          : returns // ignore: cast_nullable_to_non_nullable
              as List<ReturnModel>?,
      totalReturns: freezed == totalReturns
          ? _value.totalReturns
          : totalReturns // ignore: cast_nullable_to_non_nullable
              as num?,
      roi: freezed == roi
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as num?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of InvestmentModel
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

  /// Create a copy of InvestmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentDetailsModelCopyWith<$Res>? get paymentDetails {
    if (_value.paymentDetails == null) {
      return null;
    }

    return $PaymentDetailsModelCopyWith<$Res>(_value.paymentDetails!, (value) {
      return _then(_value.copyWith(paymentDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvestmentModelImplCopyWith<$Res>
    implements $InvestmentModelCopyWith<$Res> {
  factory _$$InvestmentModelImplCopyWith(_$InvestmentModelImpl value,
          $Res Function(_$InvestmentModelImpl) then) =
      __$$InvestmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(
          name: 'investor',
          fromJson: _investorFromJson,
          toJson: _investorToJson)
      dynamic investor,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      dynamic project,
      num amount,
      String currency,
      num exchangeRate,
      num amountInBaseCurrency,
      String investmentType,
      double equityPercentage,
      ExpectedReturnModel? expectedReturn,
      String? status,
      String? paymentMethod,
      PaymentDetailsModel? paymentDetails,
      List<ReturnModel>? returns,
      num? totalReturns,
      num? roi,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});

  @override
  $ExpectedReturnModelCopyWith<$Res>? get expectedReturn;
  @override
  $PaymentDetailsModelCopyWith<$Res>? get paymentDetails;
}

/// @nodoc
class __$$InvestmentModelImplCopyWithImpl<$Res>
    extends _$InvestmentModelCopyWithImpl<$Res, _$InvestmentModelImpl>
    implements _$$InvestmentModelImplCopyWith<$Res> {
  __$$InvestmentModelImplCopyWithImpl(
      _$InvestmentModelImpl _value, $Res Function(_$InvestmentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? investor = freezed,
    Object? project = freezed,
    Object? amount = null,
    Object? currency = null,
    Object? exchangeRate = null,
    Object? amountInBaseCurrency = null,
    Object? investmentType = null,
    Object? equityPercentage = null,
    Object? expectedReturn = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? paymentDetails = freezed,
    Object? returns = freezed,
    Object? totalReturns = freezed,
    Object? roi = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$InvestmentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      investor: freezed == investor
          ? _value.investor
          : investor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as dynamic,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      exchangeRate: null == exchangeRate
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as num,
      amountInBaseCurrency: null == amountInBaseCurrency
          ? _value.amountInBaseCurrency
          : amountInBaseCurrency // ignore: cast_nullable_to_non_nullable
              as num,
      investmentType: null == investmentType
          ? _value.investmentType
          : investmentType // ignore: cast_nullable_to_non_nullable
              as String,
      equityPercentage: null == equityPercentage
          ? _value.equityPercentage
          : equityPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      expectedReturn: freezed == expectedReturn
          ? _value.expectedReturn
          : expectedReturn // ignore: cast_nullable_to_non_nullable
              as ExpectedReturnModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentDetailsModel?,
      returns: freezed == returns
          ? _value._returns
          : returns // ignore: cast_nullable_to_non_nullable
              as List<ReturnModel>?,
      totalReturns: freezed == totalReturns
          ? _value.totalReturns
          : totalReturns // ignore: cast_nullable_to_non_nullable
              as num?,
      roi: freezed == roi
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as num?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestmentModelImpl extends _InvestmentModel {
  _$InvestmentModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(
          name: 'investor',
          fromJson: _investorFromJson,
          toJson: _investorToJson)
      this.investor,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      this.project,
      required this.amount,
      required this.currency,
      required this.exchangeRate,
      required this.amountInBaseCurrency,
      required this.investmentType,
      required this.equityPercentage,
      this.expectedReturn,
      this.status,
      this.paymentMethod,
      this.paymentDetails,
      final List<ReturnModel>? returns = const [],
      this.totalReturns,
      this.roi,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt})
      : _returns = returns,
        super._();

  factory _$InvestmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestmentModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(
      name: 'investor', fromJson: _investorFromJson, toJson: _investorToJson)
  final dynamic investor;
// String (ID) or UserModel (populated)
  @override
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  final dynamic project;
// String (ID) or ProjectModel (populated)
  @override
  final num amount;
  @override
  final String currency;
  @override
  final num exchangeRate;
  @override
  final num amountInBaseCurrency;
  @override
  final String investmentType;
  @override
  final double equityPercentage;
  @override
  final ExpectedReturnModel? expectedReturn;
  @override
  final String? status;
  @override
  final String? paymentMethod;
  @override
  final PaymentDetailsModel? paymentDetails;
  final List<ReturnModel>? _returns;
  @override
  @JsonKey()
  List<ReturnModel>? get returns {
    final value = _returns;
    if (value == null) return null;
    if (_returns is EqualUnmodifiableListView) return _returns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final num? totalReturns;
  @override
  final num? roi;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'InvestmentModel(id: $id, investor: $investor, project: $project, amount: $amount, currency: $currency, exchangeRate: $exchangeRate, amountInBaseCurrency: $amountInBaseCurrency, investmentType: $investmentType, equityPercentage: $equityPercentage, expectedReturn: $expectedReturn, status: $status, paymentMethod: $paymentMethod, paymentDetails: $paymentDetails, returns: $returns, totalReturns: $totalReturns, roi: $roi, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.investor, investor) &&
            const DeepCollectionEquality().equals(other.project, project) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.exchangeRate, exchangeRate) ||
                other.exchangeRate == exchangeRate) &&
            (identical(other.amountInBaseCurrency, amountInBaseCurrency) ||
                other.amountInBaseCurrency == amountInBaseCurrency) &&
            (identical(other.investmentType, investmentType) ||
                other.investmentType == investmentType) &&
            (identical(other.equityPercentage, equityPercentage) ||
                other.equityPercentage == equityPercentage) &&
            (identical(other.expectedReturn, expectedReturn) ||
                other.expectedReturn == expectedReturn) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentDetails, paymentDetails) ||
                other.paymentDetails == paymentDetails) &&
            const DeepCollectionEquality().equals(other._returns, _returns) &&
            (identical(other.totalReturns, totalReturns) ||
                other.totalReturns == totalReturns) &&
            (identical(other.roi, roi) || other.roi == roi) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(investor),
      const DeepCollectionEquality().hash(project),
      amount,
      currency,
      exchangeRate,
      amountInBaseCurrency,
      investmentType,
      equityPercentage,
      expectedReturn,
      status,
      paymentMethod,
      paymentDetails,
      const DeepCollectionEquality().hash(_returns),
      totalReturns,
      roi,
      createdAt,
      updatedAt);

  /// Create a copy of InvestmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentModelImplCopyWith<_$InvestmentModelImpl> get copyWith =>
      __$$InvestmentModelImplCopyWithImpl<_$InvestmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestmentModelImplToJson(
      this,
    );
  }
}

abstract class _InvestmentModel extends InvestmentModel {
  factory _InvestmentModel(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(
          name: 'investor',
          fromJson: _investorFromJson,
          toJson: _investorToJson)
      final dynamic investor,
      @JsonKey(
          name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
      final dynamic project,
      required final num amount,
      required final String currency,
      required final num exchangeRate,
      required final num amountInBaseCurrency,
      required final String investmentType,
      required final double equityPercentage,
      final ExpectedReturnModel? expectedReturn,
      final String? status,
      final String? paymentMethod,
      final PaymentDetailsModel? paymentDetails,
      final List<ReturnModel>? returns,
      final num? totalReturns,
      final num? roi,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt}) = _$InvestmentModelImpl;
  _InvestmentModel._() : super._();

  factory _InvestmentModel.fromJson(Map<String, dynamic> json) =
      _$InvestmentModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(
      name: 'investor', fromJson: _investorFromJson, toJson: _investorToJson)
  dynamic get investor; // String (ID) or UserModel (populated)
  @override
  @JsonKey(name: 'project', fromJson: _projectFromJson, toJson: _projectToJson)
  dynamic get project; // String (ID) or ProjectModel (populated)
  @override
  num get amount;
  @override
  String get currency;
  @override
  num get exchangeRate;
  @override
  num get amountInBaseCurrency;
  @override
  String get investmentType;
  @override
  double get equityPercentage;
  @override
  ExpectedReturnModel? get expectedReturn;
  @override
  String? get status;
  @override
  String? get paymentMethod;
  @override
  PaymentDetailsModel? get paymentDetails;
  @override
  List<ReturnModel>? get returns;
  @override
  num? get totalReturns;
  @override
  num? get roi;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;

  /// Create a copy of InvestmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestmentModelImplCopyWith<_$InvestmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpectedReturnModel _$ExpectedReturnModelFromJson(Map<String, dynamic> json) {
  return _ExpectedReturnModel.fromJson(json);
}

/// @nodoc
mixin _$ExpectedReturnModel {
  num? get percentage => throw _privateConstructorUsedError;
  String? get timeframe => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
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
  $Res call(
      {num? percentage,
      String? timeframe,
      String? description,
      String? period});
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
    Object? timeframe = freezed,
    Object? description = freezed,
    Object? period = freezed,
  }) {
    return _then(_value.copyWith(
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num?,
      timeframe: freezed == timeframe
          ? _value.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {num? percentage,
      String? timeframe,
      String? description,
      String? period});
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
    Object? timeframe = freezed,
    Object? description = freezed,
    Object? period = freezed,
  }) {
    return _then(_$ExpectedReturnModelImpl(
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num?,
      timeframe: freezed == timeframe
          ? _value.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
  const _$ExpectedReturnModelImpl(
      {this.percentage, this.timeframe, this.description, this.period});

  factory _$ExpectedReturnModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpectedReturnModelImplFromJson(json);

  @override
  final num? percentage;
  @override
  final String? timeframe;
  @override
  final String? description;
  @override
  final String? period;

  @override
  String toString() {
    return 'ExpectedReturnModel(percentage: $percentage, timeframe: $timeframe, description: $description, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpectedReturnModelImpl &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.timeframe, timeframe) ||
                other.timeframe == timeframe) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, percentage, timeframe, description, period);

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
      final String? timeframe,
      final String? description,
      final String? period}) = _$ExpectedReturnModelImpl;

  factory _ExpectedReturnModel.fromJson(Map<String, dynamic> json) =
      _$ExpectedReturnModelImpl.fromJson;

  @override
  num? get percentage;
  @override
  String? get timeframe;
  @override
  String? get description;
  @override
  String? get period;

  /// Create a copy of ExpectedReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpectedReturnModelImplCopyWith<_$ExpectedReturnModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentDetailsModel _$PaymentDetailsModelFromJson(Map<String, dynamic> json) {
  return _PaymentDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentDetailsModel {
  String? get transactionId => throw _privateConstructorUsedError;
  String? get paymentIntentId => throw _privateConstructorUsedError;
  String? get receiptUrl => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get paymentDate => throw _privateConstructorUsedError;
  String? get stripePaymentIntentId => throw _privateConstructorUsedError;
  String? get paypalOrderId => throw _privateConstructorUsedError;

  /// Serializes this PaymentDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentDetailsModelCopyWith<PaymentDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailsModelCopyWith<$Res> {
  factory $PaymentDetailsModelCopyWith(
          PaymentDetailsModel value, $Res Function(PaymentDetailsModel) then) =
      _$PaymentDetailsModelCopyWithImpl<$Res, PaymentDetailsModel>;
  @useResult
  $Res call(
      {String? transactionId,
      String? paymentIntentId,
      String? receiptUrl,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? paymentDate,
      String? stripePaymentIntentId,
      String? paypalOrderId});
}

/// @nodoc
class _$PaymentDetailsModelCopyWithImpl<$Res, $Val extends PaymentDetailsModel>
    implements $PaymentDetailsModelCopyWith<$Res> {
  _$PaymentDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
    Object? paymentIntentId = freezed,
    Object? receiptUrl = freezed,
    Object? paymentDate = freezed,
    Object? stripePaymentIntentId = freezed,
    Object? paypalOrderId = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentIntentId: freezed == paymentIntentId
          ? _value.paymentIntentId
          : paymentIntentId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptUrl: freezed == receiptUrl
          ? _value.receiptUrl
          : receiptUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stripePaymentIntentId: freezed == stripePaymentIntentId
          ? _value.stripePaymentIntentId
          : stripePaymentIntentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paypalOrderId: freezed == paypalOrderId
          ? _value.paypalOrderId
          : paypalOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDetailsModelImplCopyWith<$Res>
    implements $PaymentDetailsModelCopyWith<$Res> {
  factory _$$PaymentDetailsModelImplCopyWith(_$PaymentDetailsModelImpl value,
          $Res Function(_$PaymentDetailsModelImpl) then) =
      __$$PaymentDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? transactionId,
      String? paymentIntentId,
      String? receiptUrl,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? paymentDate,
      String? stripePaymentIntentId,
      String? paypalOrderId});
}

/// @nodoc
class __$$PaymentDetailsModelImplCopyWithImpl<$Res>
    extends _$PaymentDetailsModelCopyWithImpl<$Res, _$PaymentDetailsModelImpl>
    implements _$$PaymentDetailsModelImplCopyWith<$Res> {
  __$$PaymentDetailsModelImplCopyWithImpl(_$PaymentDetailsModelImpl _value,
      $Res Function(_$PaymentDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
    Object? paymentIntentId = freezed,
    Object? receiptUrl = freezed,
    Object? paymentDate = freezed,
    Object? stripePaymentIntentId = freezed,
    Object? paypalOrderId = freezed,
  }) {
    return _then(_$PaymentDetailsModelImpl(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentIntentId: freezed == paymentIntentId
          ? _value.paymentIntentId
          : paymentIntentId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptUrl: freezed == receiptUrl
          ? _value.receiptUrl
          : receiptUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stripePaymentIntentId: freezed == stripePaymentIntentId
          ? _value.stripePaymentIntentId
          : stripePaymentIntentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paypalOrderId: freezed == paypalOrderId
          ? _value.paypalOrderId
          : paypalOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDetailsModelImpl implements _PaymentDetailsModel {
  const _$PaymentDetailsModelImpl(
      {this.transactionId,
      this.paymentIntentId,
      this.receiptUrl,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.paymentDate,
      this.stripePaymentIntentId,
      this.paypalOrderId});

  factory _$PaymentDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDetailsModelImplFromJson(json);

  @override
  final String? transactionId;
  @override
  final String? paymentIntentId;
  @override
  final String? receiptUrl;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? paymentDate;
  @override
  final String? stripePaymentIntentId;
  @override
  final String? paypalOrderId;

  @override
  String toString() {
    return 'PaymentDetailsModel(transactionId: $transactionId, paymentIntentId: $paymentIntentId, receiptUrl: $receiptUrl, paymentDate: $paymentDate, stripePaymentIntentId: $stripePaymentIntentId, paypalOrderId: $paypalOrderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDetailsModelImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.paymentIntentId, paymentIntentId) ||
                other.paymentIntentId == paymentIntentId) &&
            (identical(other.receiptUrl, receiptUrl) ||
                other.receiptUrl == receiptUrl) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.stripePaymentIntentId, stripePaymentIntentId) ||
                other.stripePaymentIntentId == stripePaymentIntentId) &&
            (identical(other.paypalOrderId, paypalOrderId) ||
                other.paypalOrderId == paypalOrderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, paymentIntentId,
      receiptUrl, paymentDate, stripePaymentIntentId, paypalOrderId);

  /// Create a copy of PaymentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDetailsModelImplCopyWith<_$PaymentDetailsModelImpl> get copyWith =>
      __$$PaymentDetailsModelImplCopyWithImpl<_$PaymentDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentDetailsModel implements PaymentDetailsModel {
  const factory _PaymentDetailsModel(
      {final String? transactionId,
      final String? paymentIntentId,
      final String? receiptUrl,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? paymentDate,
      final String? stripePaymentIntentId,
      final String? paypalOrderId}) = _$PaymentDetailsModelImpl;

  factory _PaymentDetailsModel.fromJson(Map<String, dynamic> json) =
      _$PaymentDetailsModelImpl.fromJson;

  @override
  String? get transactionId;
  @override
  String? get paymentIntentId;
  @override
  String? get receiptUrl;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get paymentDate;
  @override
  String? get stripePaymentIntentId;
  @override
  String? get paypalOrderId;

  /// Create a copy of PaymentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentDetailsModelImplCopyWith<_$PaymentDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReturnModel _$ReturnModelFromJson(Map<String, dynamic> json) {
  return _ReturnModel.fromJson(json);
}

/// @nodoc
mixin _$ReturnModel {
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get date => throw _privateConstructorUsedError;
  num? get amount => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ReturnModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReturnModelCopyWith<ReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnModelCopyWith<$Res> {
  factory $ReturnModelCopyWith(
          ReturnModel value, $Res Function(ReturnModel) then) =
      _$ReturnModelCopyWithImpl<$Res, ReturnModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? date,
      num? amount,
      String? type,
      String? description});
}

/// @nodoc
class _$ReturnModelCopyWithImpl<$Res, $Val extends ReturnModel>
    implements $ReturnModelCopyWith<$Res> {
  _$ReturnModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? amount = freezed,
    Object? type = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnModelImplCopyWith<$Res>
    implements $ReturnModelCopyWith<$Res> {
  factory _$$ReturnModelImplCopyWith(
          _$ReturnModelImpl value, $Res Function(_$ReturnModelImpl) then) =
      __$$ReturnModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? date,
      num? amount,
      String? type,
      String? description});
}

/// @nodoc
class __$$ReturnModelImplCopyWithImpl<$Res>
    extends _$ReturnModelCopyWithImpl<$Res, _$ReturnModelImpl>
    implements _$$ReturnModelImplCopyWith<$Res> {
  __$$ReturnModelImplCopyWithImpl(
      _$ReturnModelImpl _value, $Res Function(_$ReturnModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? amount = freezed,
    Object? type = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ReturnModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
class _$ReturnModelImpl implements _ReturnModel {
  const _$ReturnModelImpl(
      {@JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) this.date,
      this.amount,
      this.type,
      this.description});

  factory _$ReturnModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnModelImplFromJson(json);

  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? date;
  @override
  final num? amount;
  @override
  final String? type;
  @override
  final String? description;

  @override
  String toString() {
    return 'ReturnModel(date: $date, amount: $amount, type: $type, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, amount, type, description);

  /// Create a copy of ReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnModelImplCopyWith<_$ReturnModelImpl> get copyWith =>
      __$$ReturnModelImplCopyWithImpl<_$ReturnModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnModelImplToJson(
      this,
    );
  }
}

abstract class _ReturnModel implements ReturnModel {
  const factory _ReturnModel(
      {@JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? date,
      final num? amount,
      final String? type,
      final String? description}) = _$ReturnModelImpl;

  factory _ReturnModel.fromJson(Map<String, dynamic> json) =
      _$ReturnModelImpl.fromJson;

  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get date;
  @override
  num? get amount;
  @override
  String? get type;
  @override
  String? get description;

  /// Create a copy of ReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReturnModelImplCopyWith<_$ReturnModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
