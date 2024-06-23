import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  Data? data;
  int? code;

  LoginResponse({this.message, this.data, this.code});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}
@JsonSerializable()

class Data {
  String? token;
  User? user;

  Data({this.token, this.user});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);


}
@JsonSerializable()

class User {
  int? id;
  String? name;
  String? email;
  String? createdAt;
  String? updatedAt;

  User({this.id, this.name, this.email, this.createdAt, this.updatedAt});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);


}