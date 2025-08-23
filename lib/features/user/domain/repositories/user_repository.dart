import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getUser(String id);
  Future<UserEntity> updateProfile({
    required String id,
    required Map<String, dynamic> profileData,
  });
  Future<UserEntity> updatePassword({
    required String id,
    required Map<String, dynamic> passwordData,
  });
  Future<UserEntity> updateAvatar({
    required String id,
    required FormData avatarData,
  });
  Future<void> deleteAvatar(String id);
  Future<UserEntity> updatePreferences({
    required Map<String, dynamic> preferences,
  });
  Future<UserEntity> updateSecurity({
    required Map<String, dynamic> securityData,
  });
  Future<UserEntity> updateSocialLinks({
    required Map<String, dynamic> links,
  });
  Future<UserEntity> updatePrivacy({
    required Map<String, dynamic> privacyData,
  });
  Future<UserEntity> updateInvestorProfile({
    required Map<String, dynamic> profileData,
  });
  Future<UserEntity> updateProjectOwnerProfile({
    required Map<String, dynamic> profileData,
  });
}
