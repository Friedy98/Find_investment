import 'package:equatable/equatable.dart';

import '../../../../auth/domain/entities/user_entity.dart';
import '../../../../project/domain/entities/project_entity.dart';

class InvestmentEntity extends Equatable {
  final String id;
  final dynamic investor; // could be String (ID) or UserEntity
  final dynamic project;  // could be String (ID) or ProjectEntity
  final int amount;
  final String currency;
  final int exchangeRate;
  final int amountInBaseCurrency;
  final String investmentType;
  final double equityPercentage;
  final ExpectedReturnEntity expectedReturn;
  final String status;
  final String paymentMethod;
  final PaymentDetailsEntity paymentDetails;
  final List<ReturnEntity> returns;
  final int totalReturns;
  final int roi;
  final DateTime createdAt;
  final DateTime updatedAt;

  const InvestmentEntity({
    required this.id,
    required this.investor,
    required this.project,
    required this.amount,
    required this.currency,
    required this.exchangeRate,
    required this.amountInBaseCurrency,
    required this.investmentType,
    required this.equityPercentage,
    required this.expectedReturn,
    required this.status,
    required this.paymentMethod,
    required this.paymentDetails,
    required this.returns,
    required this.totalReturns,
    required this.roi,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Returns investor ID if it’s a String or inside a UserEntity
  String? get investorId {
    if (investor is String) return investor as String;
    if (investor is UserEntity) return (investor as UserEntity).id;
    return null;
  }

  UserEntity? get resolvedInvestor =>
      investor is UserEntity ? investor as UserEntity : null;

  /// Same for project
  String? get projectId {
    if (project is String) return project as String;
    if (project is ProjectEntity) return (project as ProjectEntity).id;
    return null;
  }

  ProjectEntity? get resolvedProject =>
      project is ProjectEntity ? project as ProjectEntity : null;

  InvestmentEntity copyWith({
    String? id,
    dynamic investor,
    dynamic project,
    int? amount,
    String? currency,
    int? exchangeRate,
    int? amountInBaseCurrency,
    String? investmentType,
    double? equityPercentage,
    ExpectedReturnEntity? expectedReturn,
    String? status,
    String? paymentMethod,
    PaymentDetailsEntity? paymentDetails,
    List<ReturnEntity>? returns,
    int? totalReturns,
    int? roi,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return InvestmentEntity(
      id: id ?? this.id,
      investor: investor ?? this.investor,
      project: project ?? this.project,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      exchangeRate: exchangeRate ?? this.exchangeRate,
      amountInBaseCurrency: amountInBaseCurrency ?? this.amountInBaseCurrency,
      investmentType: investmentType ?? this.investmentType,
      equityPercentage: equityPercentage ?? this.equityPercentage,
      expectedReturn: expectedReturn ?? this.expectedReturn,
      status: status ?? this.status,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      paymentDetails: paymentDetails ?? this.paymentDetails,
      returns: returns ?? this.returns,
      totalReturns: totalReturns ?? this.totalReturns,
      roi: roi ?? this.roi,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [
    id,
    investor,
    project,
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
    returns,
    totalReturns,
    roi,
    createdAt,
    updatedAt,
  ];
}

class ExpectedReturnEntity extends Equatable {
  final int percentage;
  final String timeframe;
  final String description;
  final String period;

  const ExpectedReturnEntity({
    required this.percentage,
    required this.timeframe,
    required this.description,
    required this.period,
  });

  @override
  List<Object?> get props => [percentage, timeframe, description, period];
}

class PaymentDetailsEntity extends Equatable {
  final String transactionId;
  final String paymentIntentId;
  final String receiptUrl;
  final DateTime paymentDate;
  final String stripePaymentIntentId;
  final String paypalOrderId;

  const PaymentDetailsEntity({
    required this.transactionId,
    required this.paymentIntentId,
    required this.receiptUrl,
    required this.paymentDate,
    required this.stripePaymentIntentId,
    required this.paypalOrderId,
  });

  @override
  List<Object?> get props => [
    transactionId,
    paymentIntentId,
    receiptUrl,
    paymentDate,
    stripePaymentIntentId,
    paypalOrderId,
  ];
}

class ReturnEntity extends Equatable {
  final DateTime date;
  final int amount;
  final String type;
  final String description;

  const ReturnEntity({
    required this.date,
    required this.amount,
    required this.type,
    required this.description,
  });

  @override
  List<Object?> get props => [date, amount, type, description];
}
