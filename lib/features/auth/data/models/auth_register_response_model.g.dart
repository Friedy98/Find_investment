// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthRegisterResponseModelImpl _$$AuthRegisterResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthRegisterResponseModelImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: AuthRegisterModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthRegisterResponseModelImplToJson(
        _$AuthRegisterResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
