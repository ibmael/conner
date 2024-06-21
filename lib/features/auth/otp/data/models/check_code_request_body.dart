import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_code_request_body.g.dart';

@JsonSerializable()
class CheckCodeRequestBody {
  final String otp;
  final String email;
  final String password;
  

  CheckCodeRequestBody( {
    required this.otp,
    required this.email,
    required this.password,
  });
  Map<String, dynamic> toJson() => _$CheckCodeRequestBodyToJson(this);
}
