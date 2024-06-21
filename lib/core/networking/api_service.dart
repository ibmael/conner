import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/auth/forget_password/data/models/forget_request_body.dart';
import '../../features/auth/forget_password/data/models/forget_response.dart';
import '../../features/auth/login/data/models/login_request_body.dart';
import '../../features/auth/login/data/models/login_response.dart';
import '../../features/auth/otp/data/models/check_code_request_body.dart';
import '../../features/auth/otp/data/models/check_code_response.dart';
import '../../features/auth/signup/data/models/sign_up_request_body.dart';
import '../../features/auth/signup/data/models/sign_up_response.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signUp)
  Future<SignUpResponse> signUp(@Body() SignUpRequestBody signUpRequestBody);

  @POST(ApiConstants.forgetPassword)
  Future<ForgetResponse> forget(@Body() ForgetRequestBody forgetRequestBody);
  @POST(ApiConstants.resetpassword)
  Future<CheckCodeResponse> checkCode(
      @Body() CheckCodeRequestBody ckeckCodeRequestBody);
 

}
