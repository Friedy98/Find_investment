import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_data_model.freezed.dart';
part 'auth_data_model.g.dart';

@freezed
class AuthDataModel with _$AuthDataModel {
  factory AuthDataModel({
    required String accessToken,
    required String refreshToken,
    required UserModel user,
  }) = _AuthDataModel;

  factory AuthDataModel.fromJson(Map<String, dynamic> json) =>
      _$AuthDataModelFromJson(json);
}
