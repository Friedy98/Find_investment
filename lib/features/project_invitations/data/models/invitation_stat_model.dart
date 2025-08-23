import 'package:freezed_annotation/freezed_annotation.dart';

part 'invitation_stat_model.freezed.dart';
part 'invitation_stat_model.g.dart';

@freezed
class InvitationStatModel with _$InvitationStatModel {
  factory InvitationStatModel({
    @JsonKey(name: 'status', defaultValue: '') required String category,
    @JsonKey(name: 'count', defaultValue: 0) required int count,
  }) = _InvitationStatModel;

  factory InvitationStatModel.fromJson(Map<String, dynamic> json) =>
      _$InvitationStatModelFromJson(json);
}