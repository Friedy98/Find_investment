import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_model.freezed.dart';
part 'notifications_model.g.dart';

@freezed
class NotificationsModel with _$NotificationsModel {
  factory NotificationsModel({
    bool? email,
    bool? push,
    bool? sms,
  }) = _NotificationsModel;

  factory NotificationsModel.fromJson(Map<String, dynamic> json) => _$NotificationsModelFromJson(json);
}