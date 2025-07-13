import 'package:find_invest_mobile/features/auth/data/models/auth_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
class AuthResponseModel with _$AuthResponseModel {
  factory AuthResponseModel({
    required bool success,
    required String message,
    required AuthDataModel data,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}
