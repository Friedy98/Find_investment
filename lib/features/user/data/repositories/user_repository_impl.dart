import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/auth/data/extensions/user_extensions.dart';
import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:find_invest_mobile/features/user/data/datasources/user_remote_datasource.dart';
import 'package:find_invest_mobile/features/user/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<UserEntity> getUser(String id) async {
    final userModel = await remoteDataSource.getUser(id);
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updateProfile({
    required String id,
    required Map<String, dynamic> profileData,
  }) async {
    final userModel = await remoteDataSource.updateProfile(id, profileData);
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updatePassword({
    required String id,
    required Map<String, dynamic> passwordData,
  }) async {
    final userModel = await remoteDataSource.updatePassword(id, passwordData);
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updateAvatar({
    required String id,
    required FormData avatarData,
  }) async {
    final userModel = await remoteDataSource.updateAvatar(id, avatarData);
    return userModel.toEntity();
  }

  @override
  Future<void> deleteAvatar(String id) async {
    await remoteDataSource.deleteAvatar(id);
  }

  @override
  Future<UserEntity> updatePreferences({
    required Map<String, dynamic> preferences,
  }) async {
    final userModel = await remoteDataSource.updatePreferences(preferences);
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updateSecurity({
    required Map<String, dynamic> securityData,
  }) async {
    final userModel = await remoteDataSource.updateSecurity(securityData);
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updateSocialLinks({
    required Map<String, dynamic> links,
  }) async {
    final userModel = await remoteDataSource.updateSocialLinks(links);
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updatePrivacy({
    required Map<String, dynamic> privacyData,
  }) async {
    final userModel = await remoteDataSource.updatePrivacy(privacyData);
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updateInvestorProfile({
    required Map<String, dynamic> profileData,
  }) async {
    final userModel = await remoteDataSource.updateInvestorProfile(profileData);
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> updateProjectOwnerProfile({
    required Map<String, dynamic> profileData,
  }) async {
    final userModel =
        await remoteDataSource.updateProjectOwnerProfile(profileData);
    return userModel.toEntity();
  }
}
