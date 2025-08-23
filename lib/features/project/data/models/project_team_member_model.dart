import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';

part 'project_team_member_model.freezed.dart';
part 'project_team_member_model.g.dart';

@freezed
class ProjectTeamMemberModel with _$ProjectTeamMemberModel {
  factory ProjectTeamMemberModel({
    @JsonKey(fromJson: _userFromJson, toJson: _userToJson) required dynamic user,
    String? role,
    @Default([]) List<String> permissions,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? joinedAt,
  }) = _ProjectTeamMemberModel;

  factory ProjectTeamMemberModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectTeamMemberModelFromJson(json);
}

DateTime? _dateTimeFromJson(String? timestamp) =>
    timestamp != null ? DateTime.parse(timestamp) : null;

String? _dateTimeToJson(DateTime? dateTime) => dateTime?.toIso8601String();

// Conversion pour user (owner, archivedBy, etc.)
dynamic _userFromJson(dynamic json) {
  if (json is String) return json;
  if (json is Map<String, dynamic>) return UserModel.fromJson(json);
  throw Exception('Invalid user format');
}

dynamic _userToJson(dynamic user) {
  if (user is UserModel) return user.toJson();
  return user;
}