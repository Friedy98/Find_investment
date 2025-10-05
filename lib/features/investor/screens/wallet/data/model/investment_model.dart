import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:find_invest_mobile/features/project/data/models/project_model.dart';

part 'investment_model.freezed.dart';
part 'investment_model.g.dart';


@freezed
class InvestmentModel with _$InvestmentModel {
  const InvestmentModel._();

  factory InvestmentModel({
    @JsonKey(name: '_id') required String id,

    @JsonKey(
      name: 'investor',
      fromJson: _investorFromJson,
      toJson: _investorToJson,
    )
    dynamic investor, // String (ID) or UserModel (populated)

    @JsonKey(
      name: 'project',
      fromJson: _projectFromJson,
      toJson: _projectToJson,
    )
    dynamic project, // String (ID) or ProjectModel (populated)

    required num amount,
    required String currency,
    required num exchangeRate,
    required num amountInBaseCurrency,
    required String investmentType,
    required double equityPercentage,
    ExpectedReturnModel? expectedReturn,
    String? status,
    String? paymentMethod,
    PaymentDetailsModel? paymentDetails,
    @Default([]) List<ReturnModel>? returns,
    num? totalReturns,
    num? roi,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? updatedAt,
  }) = _InvestmentModel;

  factory InvestmentModel.fromJson(Map<String, dynamic> json) =>
      _$InvestmentModelFromJson(json);
}

@freezed
class ExpectedReturnModel with _$ExpectedReturnModel {
  const factory ExpectedReturnModel({
    num? percentage,
    String? timeframe,
    String? description,
    String? period,
  }) = _ExpectedReturnModel;

  factory ExpectedReturnModel.fromJson(Map<String, dynamic> json) =>
      _$ExpectedReturnModelFromJson(json);
}

@freezed
class PaymentDetailsModel with _$PaymentDetailsModel {
  const factory PaymentDetailsModel({
    String? transactionId,
    String? paymentIntentId,
    String? receiptUrl,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? paymentDate,
    String? stripePaymentIntentId,
    String? paypalOrderId,
  }) = _PaymentDetailsModel;

  factory PaymentDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsModelFromJson(json);
}

@freezed
class ReturnModel with _$ReturnModel {
  const factory ReturnModel({
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? date,
    num? amount,
    String? type,
    String? description,
  }) = _ReturnModel;

  factory ReturnModel.fromJson(Map<String, dynamic> json) =>
      _$ReturnModelFromJson(json);
}
DateTime? _dateTimeFromJson(String? timestamp) =>
    timestamp != null ? DateTime.parse(timestamp) : null;

String? _dateTimeToJson(DateTime? dateTime) =>
    dateTime?.toIso8601String();

dynamic _investorFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) return UserModel.fromJson(json);
  throw Exception('Invalid investor format');
}

dynamic _investorToJson(dynamic investor) {
  if (investor == null) return null;
  if (investor is String) return investor;
  if (investor is UserModel) return investor.toJson();
  throw Exception('Invalid investor type');
}

dynamic _projectFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) return ProjectModel.fromJson(json);
  throw Exception('Invalid project format');
}

dynamic _projectToJson(dynamic project) {
  if (project == null) return null;
  if (project is String) return project;
  if (project is ProjectModel) return project.toJson();
  throw Exception('Invalid project type');
}