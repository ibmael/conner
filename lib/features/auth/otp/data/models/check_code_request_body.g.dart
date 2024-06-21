// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_code_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckCodeRequestBody _$CheckCodeRequestBodyFromJson(
        Map<String, dynamic> json) =>
    CheckCodeRequestBody(
      otp: json['otp'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$CheckCodeRequestBodyToJson(
        CheckCodeRequestBody instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'email': instance.email,
      'password': instance.password,
    };
