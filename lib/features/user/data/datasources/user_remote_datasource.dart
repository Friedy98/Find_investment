import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/network/network_service.dart';
import 'package:find_invest_mobile/core/services/logging_service.dart';
import 'package:find_invest_mobile/core/utils/constants.dart';
import 'package:find_invest_mobile/features/auth/data/models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser(String id);
  Future<UserModel> updateProfile(String id, Map<String, dynamic> profileData);
  Future<UserModel> updatePassword(
      String id, Map<String, dynamic> passwordData);
  Future<UserModel> updateAvatar(
      String id, FormData avatarData); // Pour multipart
  Future<void> deleteAvatar(String id);
  Future<UserModel> updatePreferences(Map<String, dynamic> preferences);
  Future<UserModel> updateSecurity(Map<String, dynamic> securityData);
  Future<UserModel> updateSocialLinks(Map<String, dynamic> links);
  Future<UserModel> updatePrivacy(Map<String, dynamic> privacyData);
  Future<UserModel> updateInvestorProfile(Map<String, dynamic> profileData);
  Future<UserModel> updateProjectOwnerProfile(Map<String, dynamic> profileData);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final NetworkService networkService;

  UserRemoteDataSourceImpl({required this.networkService});

  @override
  Future<UserModel> getUser(String id) async {
    try {
      final response = await networkService.get('${ApiConstants.users}/$id');
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Get user error: $e');
      throw Exception('Failed to fetch user');
    }
  }

  @override
  Future<UserModel> updateProfile(
      String id, Map<String, dynamic> profileData) async {
    try {
      final response = await networkService.put('${ApiConstants.users}/$id',
          data: profileData);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update profile error: $e');
      throw Exception('Failed to update profile');
    }
  }

  @override
  Future<UserModel> updatePassword(
      String id, Map<String, dynamic> passwordData) async {
    try {
      final response = await networkService
          .put('${ApiConstants.users}/password/$id', data: passwordData);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update password error: $e');
      throw Exception('Failed to update password');
    }
  }

  @override
  Future<UserModel> updateAvatar(String id, FormData avatarData) async {
    try {
      final formData = FormData.fromMap({
        'avatar': avatarData.files.first.value,
      });
      final response = await networkService
          .putFormData('${ApiConstants.users}/avatar/$id', formData: formData);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update avatar error: $e');
      throw Exception('Failed to update avatar');
    }
  }

  @override
  Future<void> deleteAvatar(String id) async {
    try {
      await networkService.delete('${ApiConstants.users}/avatar/$id');
    } catch (e) {
      LoggingService.error('Delete avatar error: $e');
      throw Exception('Failed to delete avatar');
    }
  }

  @override
  Future<UserModel> updatePreferences(Map<String, dynamic> preferences) async {
    try {
      final response =
          await networkService.put('${ApiConstants.users}/preferences', data: preferences);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update preferences error: $e');
      throw Exception('Failed to update preferences');
    }
  }

  @override
  Future<UserModel> updateSecurity(Map<String, dynamic> securityData) async {
    try {
      final response =
          await networkService.put('${ApiConstants.users}/security', data: securityData);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update security error: $e');
      throw Exception('Failed to update security');
    }
  }

  @override
  Future<UserModel> updateSocialLinks(Map<String, dynamic> links) async {
    try {
      final response =
          await networkService.put('${ApiConstants.users}/social-links', data: links);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update social links error: $e');
      throw Exception('Failed to update social links');
    }
  }

  @override
  Future<UserModel> updatePrivacy(Map<String, dynamic> privacyData) async {
    try {
      final response =
          await networkService.put('${ApiConstants.users}/privacy', data: privacyData);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update privacy error: $e');
      throw Exception('Failed to update privacy');
    }
  }

  @override
  Future<UserModel> updateInvestorProfile(
      Map<String, dynamic> profileData) async {
    try {
      final response =
          await networkService.put('${ApiConstants.users}/investor-profile', data: profileData);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update investor profile error: $e');
      throw Exception('Failed to update investor profile');
    }
  }

  @override
  Future<UserModel> updateProjectOwnerProfile(
      Map<String, dynamic> profileData) async {
    try {
      final response = await networkService.put('${ApiConstants.users}/project-owner-profile',
          data: profileData);
      return UserModel.fromJson(response.data['data']['user']);
    } catch (e) {
      LoggingService.error('Update project owner profile error: $e');
      throw Exception('Failed to update project owner profile');
    }
  }
}
