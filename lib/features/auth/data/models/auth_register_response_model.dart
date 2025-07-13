import 'package:find_invest_mobile/features/auth/data/models/auth_register_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_register_response_model.freezed.dart';
part 'auth_register_response_model.g.dart';

@freezed
class AuthRegisterResponseModel with _$AuthRegisterResponseModel {
  factory AuthRegisterResponseModel({
    required bool success,
    required String message,
    required AuthRegisterModel data,
  }) = _AuthRegisterResponseModel;

  factory AuthRegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthRegisterResponseModelFromJson(json);
}
