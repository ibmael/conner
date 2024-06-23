import 'package:conner/features/contact_us/data/model/contact_us_request.dart';
import 'package:conner/features/contact_us/data/model/contact_us_response.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';

class ContactUsRepo {
  final ApiService _apiService;
  ContactUsRepo(this._apiService);
  Future<ApiResult<ContactUsResponse>> contactUs(
      ContactUsRequest contactUsRequest) async {


    try {
      final response = await _apiService.contactUs(contactUsRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
