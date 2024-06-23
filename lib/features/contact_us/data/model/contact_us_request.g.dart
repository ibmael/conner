// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactUsRequest _$ContactUsRequestFromJson(Map<String, dynamic> json) =>
    ContactUsRequest(
      email: json['email'] as String,
      message: json['message'] as String,
      title: json['title'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ContactUsRequestToJson(ContactUsRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'title': instance.title,
      'message': instance.message,
    };
