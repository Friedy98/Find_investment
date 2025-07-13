import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_model.freezed.dart';
part 'reset_password_model.g.dart';

@freezed
class ResetPasswordResponseModel with _$ResetPasswordResponseModel {
  factory ResetPasswordResponseModel({
    required bool success,
    required String message,
  }) = _ResetPasswordResponseModel;

  factory ResetPasswordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseModelFromJson(json);
}