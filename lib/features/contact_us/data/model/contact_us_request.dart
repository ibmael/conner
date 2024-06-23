import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'contact_us_request.g.dart';

@JsonSerializable()
class ContactUsRequest {
  final String name;
  final String email;
  final String title;
  
  final String message;

  

  ContactUsRequest({
    required this.email,
    required this.message,
    required this.title,
    required this.name,
  });
  Map<String, dynamic> toJson() => _$ContactUsRequestToJson(this);
}
