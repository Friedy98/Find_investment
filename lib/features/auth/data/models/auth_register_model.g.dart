// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthRegisterModelImpl _$$AuthRegisterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthRegisterModelImpl(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthRegisterModelImplToJson(
        _$AuthRegisterModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
