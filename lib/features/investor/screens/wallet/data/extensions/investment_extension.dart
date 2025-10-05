
import '../model/investment_model.dart';
import '../wallet_entity.dart';

extension InvestmentModelExtensions on InvestmentModel {
  InvestmentEntity toEntity() => InvestmentEntity(
    id: id,
    investor: investor,
    project: project,
    amount: _parseInt(amount),
    currency: currency ?? '',
    exchangeRate: _parseInt(exchangeRate),
    amountInBaseCurrency: _parseInt(amountInBaseCurrency),
    investmentType: investmentType ?? '',
    equityPercentage: _parseDouble(equityPercentage),
    expectedReturn: expectedReturn?.toEntity() ??
        const ExpectedReturnEntity(
          percentage: 0,
          timeframe: '',
          description: '',
          period: '',
        ),
    status: status ?? '',
    paymentMethod: paymentMethod ?? '',
    paymentDetails: paymentDetails?.toEntity() ??
        PaymentDetailsEntity(
          transactionId: '',
          paymentIntentId: '',
          receiptUrl: '',
          paymentDate: DateTime.now(),
          stripePaymentIntentId: '',
          paypalOrderId: '',
        ),
    returns: returns?.map((r) => r.toEntity()).toList() ?? [],
    totalReturns: _parseInt(totalReturns),
    roi: _parseInt(roi),
    createdAt: createdAt ?? DateTime.now(),
    updatedAt: updatedAt ?? DateTime.now(),
  );

  int _parseInt(dynamic value) {
    if (value == null) return 0;
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) return int.tryParse(value) ?? 0;
    throw Exception('Invalid int format: $value');
  }

  double _parseDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is double) return value;
    if (value is int) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    throw Exception('Invalid double format: $value');
  }
}

extension ExpectedReturnModelExtensions on ExpectedReturnModel {
  ExpectedReturnEntity toEntity() => ExpectedReturnEntity(
    percentage: _parseInt(percentage),
    timeframe: timeframe ?? '',
    description: description ?? '',
    period: period ?? '',
  );
  int _parseInt(dynamic value) {
    if (value == null) return 0;
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) return int.tryParse(value) ?? 0;
    throw Exception('Invalid int format: $value');
  }
}

extension PaymentDetailsModelExtensions on PaymentDetailsModel {
  PaymentDetailsEntity toEntity() => PaymentDetailsEntity(
    transactionId: transactionId ?? '',
    paymentIntentId: paymentIntentId ?? '',
    receiptUrl: receiptUrl ?? '',
    paymentDate: paymentDate ?? DateTime.now(),
    stripePaymentIntentId: stripePaymentIntentId ?? '',
    paypalOrderId: paypalOrderId ?? '',
  );
}

extension ReturnModelExtensions on ReturnModel {
  ReturnEntity toEntity() => ReturnEntity(
    date: date ?? DateTime.now(),
    amount: _parseInt(amount),
    type: type ?? '',
    description: description ?? '',
  );

  int _parseInt(dynamic value) {
    if (value == null) return 0;
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) return int.tryParse(value) ?? 0;
    throw Exception('Invalid int format: $value');
  }
}
