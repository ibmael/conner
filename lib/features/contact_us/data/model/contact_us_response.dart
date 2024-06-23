import 'package:json_annotation/json_annotation.dart';
part 'contact_us_response.g.dart';

@JsonSerializable()
class ContactUsResponse {
  String? message;
  List<String>? data;
  int? code;

  ContactUsResponse({this.message, this.data, this.code});
  factory ContactUsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactUsResponseFromJson(json);
}