import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_register_model.freezed.dart';
part 'auth_register_model.g.dart';

@freezed
class AuthRegisterModel with _$AuthRegisterModel {
  factory AuthRegisterModel({
    required UserModel user,
  }) = _AuthRegisterModel;

  factory AuthRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$AuthRegisterModelFromJson(json);
}
