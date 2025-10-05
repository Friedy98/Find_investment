// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvestmentModelImpl _$$InvestmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InvestmentModelImpl(
      id: json['_id'] as String,
      investor: _investorFromJson(json['investor']),
      project: _projectFromJson(json['project']),
      amount: json['amount'] as num,
      currency: json['currency'] as String,
      exchangeRate: json['exchangeRate'] as num,
      amountInBaseCurrency: json['amountInBaseCurrency'] as num,
      investmentType: json['investmentType'] as String,
      equityPercentage: (json['equityPercentage'] as num).toDouble(),
      expectedReturn: json['expectedReturn'] == null
          ? null
          : ExpectedReturnModel.fromJson(
              json['expectedReturn'] as Map<String, dynamic>),
      status: json['status'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      paymentDetails: json['paymentDetails'] == null
          ? null
          : PaymentDetailsModel.fromJson(
              json['paymentDetails'] as Map<String, dynamic>),
      returns: (json['returns'] as List<dynamic>?)
              ?.map((e) => ReturnModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalReturns: json['totalReturns'] as num?,
      roi: json['roi'] as num?,
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$InvestmentModelImplToJson(
        _$InvestmentModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'investor': _investorToJson(instance.investor),
      'project': _projectToJson(instance.project),
      'amount': instance.amount,
      'currency': instance.currency,
      'exchangeRate': instance.exchangeRate,
      'amountInBaseCurrency': instance.amountInBaseCurrency,
      'investmentType': instance.investmentType,
      'equityPercentage': instance.equityPercentage,
      'expectedReturn': instance.expectedReturn,
      'status': instance.status,
      'paymentMethod': instance.paymentMethod,
      'paymentDetails': instance.paymentDetails,
      'returns': instance.returns,
      'totalReturns': instance.totalReturns,
      'roi': instance.roi,
      'createdAt': _dateTimeToJson(instance.createdAt),
      'updatedAt': _dateTimeToJson(instance.updatedAt),
    };

_$ExpectedReturnModelImpl _$$ExpectedReturnModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpectedReturnModelImpl(
      percentage: json['percentage'] as num?,
      timeframe: json['timeframe'] as String?,
      description: json['description'] as String?,
      period: json['period'] as String?,
    );

Map<String, dynamic> _$$ExpectedReturnModelImplToJson(
        _$ExpectedReturnModelImpl instance) =>
    <String, dynamic>{
      'percentage': instance.percentage,
      'timeframe': instance.timeframe,
      'description': instance.description,
      'period': instance.period,
    };

_$PaymentDetailsModelImpl _$$PaymentDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentDetailsModelImpl(
      transactionId: json['transactionId'] as String?,
      paymentIntentId: json['paymentIntentId'] as String?,
      receiptUrl: json['receiptUrl'] as String?,
      paymentDate: _dateTimeFromJson(json['paymentDate'] as String?),
      stripePaymentIntentId: json['stripePaymentIntentId'] as String?,
      paypalOrderId: json['paypalOrderId'] as String?,
    );

Map<String, dynamic> _$$PaymentDetailsModelImplToJson(
        _$PaymentDetailsModelImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'paymentIntentId': instance.paymentIntentId,
      'receiptUrl': instance.receiptUrl,
      'paymentDate': _dateTimeToJson(instance.paymentDate),
      'stripePaymentIntentId': instance.stripePaymentIntentId,
      'paypalOrderId': instance.paypalOrderId,
    };

_$ReturnModelImpl _$$ReturnModelImplFromJson(Map<String, dynamic> json) =>
    _$ReturnModelImpl(
      date: _dateTimeFromJson(json['date'] as String?),
      amount: json['amount'] as num?,
      type: json['type'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ReturnModelImplToJson(_$ReturnModelImpl instance) =>
    <String, dynamic>{
      'date': _dateTimeToJson(instance.date),
      'amount': instance.amount,
      'type': instance.type,
      'description': instance.description,
    };
