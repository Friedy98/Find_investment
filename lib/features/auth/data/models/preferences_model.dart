import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/auth/data/models/notifications_model.dart';
import 'package:find_invest_mobile/features/auth/data/models/privacy_model.dart';

part 'preferences_model.freezed.dart';
part 'preferences_model.g.dart';

@freezed
class PreferencesModel with _$PreferencesModel {
  factory PreferencesModel({
    String? language,
    NotificationsModel? notifications,
    PrivacyModel? privacy,
  }) = _PreferencesModel;

  factory PreferencesModel.fromJson(Map<String, dynamic> json) => _$PreferencesModelFromJson(json);
}